package r.android.support.v7.widget;
import r.android.graphics.drawable.Drawable;
import r.android.os.Build;
import r.android.support.v4.view.GravityCompat;
import r.android.support.v4.view.MarginLayoutParamsCompat;
import r.android.support.v4.view.ViewCompat;
import r.android.view.Gravity;
import r.android.view.View;
import r.android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
public class Toolbar extends ViewGroup {
  private int mPopupTheme;
  private int mTitleTextAppearance;
  private int mSubtitleTextAppearance;
  private int mButtonGravity;
  private int mMaxButtonHeight;
  private int mTitleMarginStart;
  private int mTitleMarginEnd;
  private int mTitleMarginTop;
  private int mTitleMarginBottom;
  private final RtlSpacingHelper mContentInsets=new RtlSpacingHelper();
  private int mGravity=GravityCompat.START | Gravity.CENTER_VERTICAL;
  private int mTitleTextColor;
  private int mSubtitleTextColor;
  private boolean mEatingTouch;
  private boolean mEatingHover;
  private final ArrayList<View> mTempViews=new ArrayList<View>();
  private final ArrayList<View> mHiddenViews;
  private final int[] mTempMargins=new int[2];
  private boolean mCollapsible;
  public int getContentInsetStart(){
    return mContentInsets.getStart();
  }
  public int getContentInsetEnd(){
    return mContentInsets.getEnd();
  }
  public int getContentInsetLeft(){
    return mContentInsets.getLeft();
  }
  public int getContentInsetRight(){
    return mContentInsets.getRight();
  }
  private void addSystemView(  View v,  boolean allowHide){
    final ViewGroup.LayoutParams vlp=v.getLayoutParams();
    final LayoutParams lp;
    if (vlp == null) {
      lp=generateDefaultLayoutParams();
    }
 else     if (!checkLayoutParams(vlp)) {
      lp=generateLayoutParams(vlp);
    }
 else {
      lp=(LayoutParams)vlp;
    }
    lp.mViewType=LayoutParams.SYSTEM;
    if (allowHide && mExpandedActionView != null) {
      v.setLayoutParams(lp);
      mHiddenViews.add(v);
    }
 else {
      addView(v,lp);
    }
  }
  private void measureChildConstrained(  View child,  int parentWidthSpec,  int widthUsed,  int parentHeightSpec,  int heightUsed,  int heightConstraint){
    final MarginLayoutParams lp=(MarginLayoutParams)child.getLayoutParams();
    int childWidthSpec=getChildMeasureSpec(parentWidthSpec,getPaddingLeft() + getPaddingRight() + lp.leftMargin+ lp.rightMargin+ widthUsed,lp.width);
    int childHeightSpec=getChildMeasureSpec(parentHeightSpec,getPaddingTop() + getPaddingBottom() + lp.topMargin+ lp.bottomMargin+ heightUsed,lp.height);
    final int childHeightMode=MeasureSpec.getMode(childHeightSpec);
    if (childHeightMode != MeasureSpec.EXACTLY && heightConstraint >= 0) {
      final int size=childHeightMode != MeasureSpec.UNSPECIFIED ? Math.min(MeasureSpec.getSize(childHeightSpec),heightConstraint) : heightConstraint;
      childHeightSpec=MeasureSpec.makeMeasureSpec(size,MeasureSpec.EXACTLY);
    }
    child.measure(childWidthSpec,childHeightSpec);
  }
  private int measureChildCollapseMargins(  View child,  int parentWidthMeasureSpec,  int widthUsed,  int parentHeightMeasureSpec,  int heightUsed,  int[] collapsingMargins){
    final MarginLayoutParams lp=(MarginLayoutParams)child.getLayoutParams();
    final int leftDiff=lp.leftMargin - collapsingMargins[0];
    final int rightDiff=lp.rightMargin - collapsingMargins[1];
    final int leftMargin=Math.max(0,leftDiff);
    final int rightMargin=Math.max(0,rightDiff);
    final int hMargins=leftMargin + rightMargin;
    collapsingMargins[0]=Math.max(0,-leftDiff);
    collapsingMargins[1]=Math.max(0,-rightDiff);
    final int childWidthMeasureSpec=getChildMeasureSpec(parentWidthMeasureSpec,getPaddingLeft() + getPaddingRight() + hMargins+ widthUsed,lp.width);
    final int childHeightMeasureSpec=getChildMeasureSpec(parentHeightMeasureSpec,getPaddingTop() + getPaddingBottom() + lp.topMargin+ lp.bottomMargin+ heightUsed,lp.height);
    child.measure(childWidthMeasureSpec,childHeightMeasureSpec);
    return child.getMeasuredWidth() + hMargins;
  }
  private boolean shouldCollapse(){
    if (!mCollapsible)     return false;
    final int childCount=getChildCount();
    for (int i=0; i < childCount; i++) {
      final View child=getChildAt(i);
      if (shouldLayout(child) && child.getMeasuredWidth() > 0 && child.getMeasuredHeight() > 0) {
        return false;
      }
    }
    return true;
  }
  protected void onMeasure(  int widthMeasureSpec,  int heightMeasureSpec){
    int width=0;
    int height=0;
    int childState=0;
    final int[] collapsingMargins=mTempMargins;
    final int marginStartIndex;
    final int marginEndIndex;
    if (ViewUtils.isLayoutRtl(this)) {
      marginStartIndex=1;
      marginEndIndex=0;
    }
 else {
      marginStartIndex=0;
      marginEndIndex=1;
    }
    int navWidth=0;
    if (shouldLayout(mNavButtonView)) {
      measureChildConstrained(mNavButtonView,widthMeasureSpec,width,heightMeasureSpec,0,mMaxButtonHeight);
      navWidth=mNavButtonView.getMeasuredWidth() + getHorizontalMargins(mNavButtonView);
      height=Math.max(height,mNavButtonView.getMeasuredHeight() + getVerticalMargins(mNavButtonView));
      childState=ViewUtils.combineMeasuredStates(childState,ViewCompat.getMeasuredState(mNavButtonView));
    }
    if (shouldLayout(mCollapseButtonView)) {
      measureChildConstrained(mCollapseButtonView,widthMeasureSpec,width,heightMeasureSpec,0,mMaxButtonHeight);
      navWidth=mCollapseButtonView.getMeasuredWidth() + getHorizontalMargins(mCollapseButtonView);
      height=Math.max(height,mCollapseButtonView.getMeasuredHeight() + getVerticalMargins(mCollapseButtonView));
      childState=ViewUtils.combineMeasuredStates(childState,ViewCompat.getMeasuredState(mCollapseButtonView));
    }
    final int contentInsetStart=getContentInsetStart();
    width+=Math.max(contentInsetStart,navWidth);
    collapsingMargins[marginStartIndex]=Math.max(0,contentInsetStart - navWidth);
    int menuWidth=0;
    if (shouldLayout(mMenuView)) {
      measureChildConstrained(mMenuView,widthMeasureSpec,width,heightMeasureSpec,0,mMaxButtonHeight);
      menuWidth=mMenuView.getMeasuredWidth() + getHorizontalMargins(mMenuView);
      height=Math.max(height,mMenuView.getMeasuredHeight() + getVerticalMargins(mMenuView));
      childState=ViewUtils.combineMeasuredStates(childState,ViewCompat.getMeasuredState(mMenuView));
    }
    final int contentInsetEnd=getContentInsetEnd();
    width+=Math.max(contentInsetEnd,menuWidth);
    collapsingMargins[marginEndIndex]=Math.max(0,contentInsetEnd - menuWidth);
    if (shouldLayout(mExpandedActionView)) {
      width+=measureChildCollapseMargins(mExpandedActionView,widthMeasureSpec,width,heightMeasureSpec,0,collapsingMargins);
      height=Math.max(height,mExpandedActionView.getMeasuredHeight() + getVerticalMargins(mExpandedActionView));
      childState=ViewUtils.combineMeasuredStates(childState,ViewCompat.getMeasuredState(mExpandedActionView));
    }
    if (shouldLayout(mLogoView)) {
      width+=measureChildCollapseMargins(mLogoView,widthMeasureSpec,width,heightMeasureSpec,0,collapsingMargins);
      height=Math.max(height,mLogoView.getMeasuredHeight() + getVerticalMargins(mLogoView));
      childState=ViewUtils.combineMeasuredStates(childState,ViewCompat.getMeasuredState(mLogoView));
    }
    final int childCount=getChildCount();
    for (int i=0; i < childCount; i++) {
      final View child=getChildAt(i);
      final LayoutParams lp=(LayoutParams)child.getLayoutParams();
      if (lp.mViewType != LayoutParams.CUSTOM || !shouldLayout(child)) {
        continue;
      }
      width+=measureChildCollapseMargins(child,widthMeasureSpec,width,heightMeasureSpec,0,collapsingMargins);
      height=Math.max(height,child.getMeasuredHeight() + getVerticalMargins(child));
      childState=ViewUtils.combineMeasuredStates(childState,ViewCompat.getMeasuredState(child));
    }
    int titleWidth=0;
    int titleHeight=0;
    final int titleVertMargins=mTitleMarginTop + mTitleMarginBottom;
    final int titleHorizMargins=mTitleMarginStart + mTitleMarginEnd;
    if (shouldLayout(mTitleTextView)) {
      titleWidth=measureChildCollapseMargins(mTitleTextView,widthMeasureSpec,width + titleHorizMargins,heightMeasureSpec,titleVertMargins,collapsingMargins);
      titleWidth=mTitleTextView.getMeasuredWidth() + getHorizontalMargins(mTitleTextView);
      titleHeight=mTitleTextView.getMeasuredHeight() + getVerticalMargins(mTitleTextView);
      childState=ViewUtils.combineMeasuredStates(childState,ViewCompat.getMeasuredState(mTitleTextView));
    }
    if (shouldLayout(mSubtitleTextView)) {
      titleWidth=Math.max(titleWidth,measureChildCollapseMargins(mSubtitleTextView,widthMeasureSpec,width + titleHorizMargins,heightMeasureSpec,titleHeight + titleVertMargins,collapsingMargins));
      titleHeight+=mSubtitleTextView.getMeasuredHeight() + getVerticalMargins(mSubtitleTextView);
      childState=ViewUtils.combineMeasuredStates(childState,ViewCompat.getMeasuredState(mSubtitleTextView));
    }
    width+=titleWidth;
    height=Math.max(height,titleHeight);
    width+=getPaddingLeft() + getPaddingRight();
    height+=getPaddingTop() + getPaddingBottom();
    final int measuredWidth=ViewCompat.resolveSizeAndState(Math.max(width,getSuggestedMinimumWidth()),widthMeasureSpec,childState & ViewCompat.MEASURED_STATE_MASK);
    final int measuredHeight=ViewCompat.resolveSizeAndState(Math.max(height,getSuggestedMinimumHeight()),heightMeasureSpec,childState << ViewCompat.MEASURED_HEIGHT_STATE_SHIFT);
    setMeasuredDimension(measuredWidth,shouldCollapse() ? 0 : measuredHeight);
  }
  protected void onLayout(  boolean changed,  int l,  int t,  int r,  int b){
    final boolean isRtl=ViewCompat.getLayoutDirection(this) == ViewCompat.LAYOUT_DIRECTION_RTL;
    final int width=getWidth();
    final int height=getHeight();
    final int paddingLeft=getPaddingLeft();
    final int paddingRight=getPaddingRight();
    final int paddingTop=getPaddingTop();
    final int paddingBottom=getPaddingBottom();
    int left=paddingLeft;
    int right=width - paddingRight;
    final int[] collapsingMargins=mTempMargins;
    collapsingMargins[0]=collapsingMargins[1]=0;
    final int alignmentHeight=ViewCompat.getMinimumHeight(this);
    if (shouldLayout(mNavButtonView)) {
      if (isRtl) {
        right=layoutChildRight(mNavButtonView,right,collapsingMargins,alignmentHeight);
      }
 else {
        left=layoutChildLeft(mNavButtonView,left,collapsingMargins,alignmentHeight);
      }
    }
    if (shouldLayout(mCollapseButtonView)) {
      if (isRtl) {
        right=layoutChildRight(mCollapseButtonView,right,collapsingMargins,alignmentHeight);
      }
 else {
        left=layoutChildLeft(mCollapseButtonView,left,collapsingMargins,alignmentHeight);
      }
    }
    if (shouldLayout(mMenuView)) {
      if (isRtl) {
        left=layoutChildLeft(mMenuView,left,collapsingMargins,alignmentHeight);
      }
 else {
        right=layoutChildRight(mMenuView,right,collapsingMargins,alignmentHeight);
      }
    }
    collapsingMargins[0]=Math.max(0,getContentInsetLeft() - left);
    collapsingMargins[1]=Math.max(0,getContentInsetRight() - (width - paddingRight - right));
    left=Math.max(left,getContentInsetLeft());
    right=Math.min(right,width - paddingRight - getContentInsetRight());
    if (shouldLayout(mExpandedActionView)) {
      if (isRtl) {
        right=layoutChildRight(mExpandedActionView,right,collapsingMargins,alignmentHeight);
      }
 else {
        left=layoutChildLeft(mExpandedActionView,left,collapsingMargins,alignmentHeight);
      }
    }
    if (shouldLayout(mLogoView)) {
      if (isRtl) {
        right=layoutChildRight(mLogoView,right,collapsingMargins,alignmentHeight);
      }
 else {
        left=layoutChildLeft(mLogoView,left,collapsingMargins,alignmentHeight);
      }
    }
    final boolean layoutTitle=shouldLayout(mTitleTextView);
    final boolean layoutSubtitle=shouldLayout(mSubtitleTextView);
    int titleHeight=0;
    if (layoutTitle) {
      final LayoutParams lp=(LayoutParams)mTitleTextView.getLayoutParams();
      titleHeight+=lp.topMargin + mTitleTextView.getMeasuredHeight() + lp.bottomMargin;
    }
    if (layoutSubtitle) {
      final LayoutParams lp=(LayoutParams)mSubtitleTextView.getLayoutParams();
      titleHeight+=lp.topMargin + mSubtitleTextView.getMeasuredHeight() + lp.bottomMargin;
    }
    if (layoutTitle || layoutSubtitle) {
      int titleTop;
      final View topChild=layoutTitle ? mTitleTextView : mSubtitleTextView;
      final View bottomChild=layoutSubtitle ? mSubtitleTextView : mTitleTextView;
      final LayoutParams toplp=(LayoutParams)topChild.getLayoutParams();
      final LayoutParams bottomlp=(LayoutParams)bottomChild.getLayoutParams();
      final boolean titleHasWidth=layoutTitle && mTitleTextView.getMeasuredWidth() > 0 || layoutSubtitle && mSubtitleTextView.getMeasuredWidth() > 0;
switch (mGravity & Gravity.VERTICAL_GRAVITY_MASK) {
case Gravity.TOP:
        titleTop=getPaddingTop() + toplp.topMargin + mTitleMarginTop;
      break;
default :
case Gravity.CENTER_VERTICAL:
    final int space=height - paddingTop - paddingBottom;
  int spaceAbove=(space - titleHeight) / 2;
if (spaceAbove < toplp.topMargin + mTitleMarginTop) {
  spaceAbove=toplp.topMargin + mTitleMarginTop;
}
 else {
  final int spaceBelow=height - paddingBottom - titleHeight- spaceAbove- paddingTop;
  if (spaceBelow < toplp.bottomMargin + mTitleMarginBottom) {
    spaceAbove=Math.max(0,spaceAbove - (bottomlp.bottomMargin + mTitleMarginBottom - spaceBelow));
  }
}
titleTop=paddingTop + spaceAbove;
break;
case Gravity.BOTTOM:
titleTop=height - paddingBottom - bottomlp.bottomMargin- mTitleMarginBottom- titleHeight;
break;
}
if (isRtl) {
final int rd=(titleHasWidth ? mTitleMarginStart : 0) - collapsingMargins[1];
right-=Math.max(0,rd);
collapsingMargins[1]=Math.max(0,-rd);
int titleRight=right;
int subtitleRight=right;
if (layoutTitle) {
final LayoutParams lp=(LayoutParams)mTitleTextView.getLayoutParams();
final int titleLeft=titleRight - mTitleTextView.getMeasuredWidth();
final int titleBottom=titleTop + mTitleTextView.getMeasuredHeight();
mTitleTextView.layout(titleLeft,titleTop,titleRight,titleBottom);
titleRight=titleLeft - mTitleMarginEnd;
titleTop=titleBottom + lp.bottomMargin;
}
if (layoutSubtitle) {
final LayoutParams lp=(LayoutParams)mSubtitleTextView.getLayoutParams();
titleTop+=lp.topMargin;
final int subtitleLeft=subtitleRight - mSubtitleTextView.getMeasuredWidth();
final int subtitleBottom=titleTop + mSubtitleTextView.getMeasuredHeight();
mSubtitleTextView.layout(subtitleLeft,titleTop,subtitleRight,subtitleBottom);
subtitleRight=subtitleRight - mTitleMarginEnd;
titleTop=subtitleBottom + lp.bottomMargin;
}
if (titleHasWidth) {
right=Math.min(titleRight,subtitleRight);
}
}
 else {
final int ld=(titleHasWidth ? mTitleMarginStart : 0) - collapsingMargins[0];
left+=Math.max(0,ld);
collapsingMargins[0]=Math.max(0,-ld);
int titleLeft=left;
int subtitleLeft=left;
if (layoutTitle) {
final LayoutParams lp=(LayoutParams)mTitleTextView.getLayoutParams();
final int titleRight=titleLeft + mTitleTextView.getMeasuredWidth();
final int titleBottom=titleTop + mTitleTextView.getMeasuredHeight();
mTitleTextView.layout(titleLeft,titleTop,titleRight,titleBottom);
titleLeft=titleRight + mTitleMarginEnd;
titleTop=titleBottom + lp.bottomMargin;
}
if (layoutSubtitle) {
final LayoutParams lp=(LayoutParams)mSubtitleTextView.getLayoutParams();
titleTop+=lp.topMargin;
final int subtitleRight=subtitleLeft + mSubtitleTextView.getMeasuredWidth();
final int subtitleBottom=titleTop + mSubtitleTextView.getMeasuredHeight();
mSubtitleTextView.layout(subtitleLeft,titleTop,subtitleRight,subtitleBottom);
subtitleLeft=subtitleRight + mTitleMarginEnd;
titleTop=subtitleBottom + lp.bottomMargin;
}
if (titleHasWidth) {
left=Math.max(titleLeft,subtitleLeft);
}
}
}
addCustomViewsWithGravity(mTempViews,Gravity.LEFT);
final int leftViewsCount=mTempViews.size();
for (int i=0; i < leftViewsCount; i++) {
left=layoutChildLeft(mTempViews.get(i),left,collapsingMargins,alignmentHeight);
}
addCustomViewsWithGravity(mTempViews,Gravity.RIGHT);
final int rightViewsCount=mTempViews.size();
for (int i=0; i < rightViewsCount; i++) {
right=layoutChildRight(mTempViews.get(i),right,collapsingMargins,alignmentHeight);
}
addCustomViewsWithGravity(mTempViews,Gravity.CENTER_HORIZONTAL);
final int centerViewsWidth=getViewListMeasuredWidth(mTempViews,collapsingMargins);
final int parentCenter=paddingLeft + (width - paddingLeft - paddingRight) / 2;
final int halfCenterViewsWidth=centerViewsWidth / 2;
int centerLeft=parentCenter - halfCenterViewsWidth;
final int centerRight=centerLeft + centerViewsWidth;
if (centerLeft < left) {
centerLeft=left;
}
 else if (centerRight > right) {
centerLeft-=centerRight - right;
}
final int centerViewsCount=mTempViews.size();
for (int i=0; i < centerViewsCount; i++) {
centerLeft=layoutChildLeft(mTempViews.get(i),centerLeft,collapsingMargins,alignmentHeight);
}
mTempViews.clear();
}
private int getViewListMeasuredWidth(List<View> views,int[] collapsingMargins){
int collapseLeft=collapsingMargins[0];
int collapseRight=collapsingMargins[1];
int width=0;
final int count=views.size();
for (int i=0; i < count; i++) {
final View v=views.get(i);
final LayoutParams lp=(LayoutParams)v.getLayoutParams();
final int l=lp.leftMargin - collapseLeft;
final int r=lp.rightMargin - collapseRight;
final int leftMargin=Math.max(0,l);
final int rightMargin=Math.max(0,r);
collapseLeft=Math.max(0,-l);
collapseRight=Math.max(0,-r);
width+=leftMargin + v.getMeasuredWidth() + rightMargin;
}
return width;
}
private int layoutChildLeft(View child,int left,int[] collapsingMargins,int alignmentHeight){
final LayoutParams lp=(LayoutParams)child.getLayoutParams();
final int l=lp.leftMargin - collapsingMargins[0];
left+=Math.max(0,l);
collapsingMargins[0]=Math.max(0,-l);
final int top=getChildTop(child,alignmentHeight);
final int childWidth=child.getMeasuredWidth();
child.layout(left,top,left + childWidth,top + child.getMeasuredHeight());
left+=childWidth + lp.rightMargin;
return left;
}
private int layoutChildRight(View child,int right,int[] collapsingMargins,int alignmentHeight){
final LayoutParams lp=(LayoutParams)child.getLayoutParams();
final int r=lp.rightMargin - collapsingMargins[1];
right-=Math.max(0,r);
collapsingMargins[1]=Math.max(0,-r);
final int top=getChildTop(child,alignmentHeight);
final int childWidth=child.getMeasuredWidth();
child.layout(right - childWidth,top,right,top + child.getMeasuredHeight());
right-=childWidth + lp.leftMargin;
return right;
}
private int getChildTop(View child,int alignmentHeight){
final LayoutParams lp=(LayoutParams)child.getLayoutParams();
final int childHeight=child.getMeasuredHeight();
final int alignmentOffset=alignmentHeight > 0 ? (childHeight - alignmentHeight) / 2 : 0;
switch (getChildVerticalGravity(lp.gravity)) {
case Gravity.TOP:
return getPaddingTop() - alignmentOffset;
case Gravity.BOTTOM:
return getHeight() - getPaddingBottom() - childHeight- lp.bottomMargin- alignmentOffset;
default :
case Gravity.CENTER_VERTICAL:
final int paddingTop=getPaddingTop();
final int paddingBottom=getPaddingBottom();
final int height=getHeight();
final int space=height - paddingTop - paddingBottom;
int spaceAbove=(space - childHeight) / 2;
if (spaceAbove < lp.topMargin) {
spaceAbove=lp.topMargin;
}
 else {
final int spaceBelow=height - paddingBottom - childHeight- spaceAbove- paddingTop;
if (spaceBelow < lp.bottomMargin) {
spaceAbove=Math.max(0,spaceAbove - (lp.bottomMargin - spaceBelow));
}
}
return paddingTop + spaceAbove;
}
}
private int getChildVerticalGravity(int gravity){
final int vgrav=gravity & Gravity.VERTICAL_GRAVITY_MASK;
switch (vgrav) {
case Gravity.TOP:
case Gravity.BOTTOM:
case Gravity.CENTER_VERTICAL:
return vgrav;
default :
return mGravity & Gravity.VERTICAL_GRAVITY_MASK;
}
}
private void addCustomViewsWithGravity(List<View> views,int gravity){
final boolean isRtl=ViewCompat.getLayoutDirection(this) == ViewCompat.LAYOUT_DIRECTION_RTL;
final int childCount=getChildCount();
final int absGrav=GravityCompat.getAbsoluteGravity(gravity,ViewCompat.getLayoutDirection(this));
views.clear();
if (isRtl) {
for (int i=childCount - 1; i >= 0; i--) {
final View child=getChildAt(i);
final LayoutParams lp=(LayoutParams)child.getLayoutParams();
if (lp.mViewType == LayoutParams.CUSTOM && shouldLayout(child) && getChildHorizontalGravity(lp.gravity) == absGrav) {
views.add(child);
}
}
}
 else {
for (int i=0; i < childCount; i++) {
final View child=getChildAt(i);
final LayoutParams lp=(LayoutParams)child.getLayoutParams();
if (lp.mViewType == LayoutParams.CUSTOM && shouldLayout(child) && getChildHorizontalGravity(lp.gravity) == absGrav) {
views.add(child);
}
}
}
}
private int getChildHorizontalGravity(int gravity){
final int ld=ViewCompat.getLayoutDirection(this);
final int absGrav=GravityCompat.getAbsoluteGravity(gravity,ld);
final int hGrav=absGrav & Gravity.HORIZONTAL_GRAVITY_MASK;
switch (hGrav) {
case Gravity.LEFT:
case Gravity.RIGHT:
case Gravity.CENTER_HORIZONTAL:
return hGrav;
default :
return ld == ViewCompat.LAYOUT_DIRECTION_RTL ? Gravity.RIGHT : Gravity.LEFT;
}
}
private boolean shouldLayout(View view){
return view != null && view.getParent() == this && view.getVisibility() != GONE;
}
private int getHorizontalMargins(View v){
final MarginLayoutParams mlp=(MarginLayoutParams)v.getLayoutParams();
return MarginLayoutParamsCompat.getMarginStart(mlp) + MarginLayoutParamsCompat.getMarginEnd(mlp);
}
private int getVerticalMargins(View v){
final MarginLayoutParams mlp=(MarginLayoutParams)v.getLayoutParams();
return mlp.topMargin + mlp.bottomMargin;
}
protected LayoutParams generateLayoutParams(ViewGroup.LayoutParams p){
if (p instanceof LayoutParams) {
return new LayoutParams((LayoutParams)p);
}
 else if (p instanceof ActionBar.LayoutParams) {
return new LayoutParams((ActionBar.LayoutParams)p);
}
 else if (p instanceof MarginLayoutParams) {
return new LayoutParams((MarginLayoutParams)p);
}
 else {
return new LayoutParams(p);
}
}
protected LayoutParams generateDefaultLayoutParams(){
return new LayoutParams(LayoutParams.WRAP_CONTENT,LayoutParams.WRAP_CONTENT);
}
protected boolean checkLayoutParams(ViewGroup.LayoutParams p){
return super.checkLayoutParams(p) && p instanceof LayoutParams;
}
public static class LayoutParams extends ActionBar.LayoutParams {
static final int CUSTOM=0;
static final int SYSTEM=1;
static final int EXPANDED=2;
int mViewType=CUSTOM;
public LayoutParams(int width,int height){
super(width,height);
this.gravity=Gravity.CENTER_VERTICAL | GravityCompat.START;
}
public LayoutParams(int width,int height,int gravity){
super(width,height);
this.gravity=gravity;
}
public LayoutParams(LayoutParams source){
super(source);
mViewType=source.mViewType;
}
public LayoutParams(ViewGroup.LayoutParams source){
super(source);
}
}
private View mNavButtonView;
private View mCollapseButtonView;
private View mMenuView;
private View mExpandedActionView;
private View mLogoView;
private View mTitleTextView;
private View mSubtitleTextView;
public Toolbar(){
mMaxButtonHeight=-1;
mButtonGravity=Gravity.TOP;
mHiddenViews=new ArrayList<>();
}
@Override public void addView(r.android.view.View child){
if (child instanceof ActionMenuView) {
setMenuView(child);
return;
}
if (child.getId() == 1) {
setNavButtonView(child);
return;
}
super.addView(child);
}
public void setMenuView(View mMenuView){
this.mMenuView=mMenuView;
if (mMenuView.getParent() == null) {
addSystemView(mMenuView,true);
((LayoutParams)mMenuView.getLayoutParams()).gravity=GravityCompat.END | (mButtonGravity & Gravity.VERTICAL_GRAVITY_MASK);
}
}
public void setNavButtonView(View mNavButtonView){
this.mNavButtonView=mNavButtonView;
if (mNavButtonView.getParent() == null) {
addSystemView(mNavButtonView,true);
((LayoutParams)mNavButtonView.getLayoutParams()).gravity=GravityCompat.START | (mButtonGravity & Gravity.VERTICAL_GRAVITY_MASK);
}
}
public static class ActionBar {
public static class LayoutParams extends ViewGroup.MarginLayoutParams {
int gravity;
public LayoutParams(int width,int height){
super(width,height);
this.gravity=Gravity.CENTER_VERTICAL | GravityCompat.START;
}
public LayoutParams(int width,int height,int gravity){
super(width,height);
this.gravity=gravity;
}
public LayoutParams(LayoutParams source){
super(source);
}
public LayoutParams(ViewGroup.LayoutParams source){
super(source);
}
}
}
}
