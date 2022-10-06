//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidToolBar\src\main\java\androidx\appcompat\widget\ActionMenuView.java
//

#include "ActionMenuPresenter.h"
#include "ActionMenuView.h"
#include "DisplayMetrics.h"
#include "Gravity.h"
#include "J2ObjC_source.h"
#include "LinearLayoutCompat.h"
#include "MenuBuilder.h"
#include "MenuItem.h"
#include "Resources.h"
#include "View.h"
#include "ViewGroup.h"
#include "ViewParent.h"
#include "ViewUtils.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"


@interface ADXActionMenuView () {
 @public
  ADXMenuBuilder *mMenu_;
  jint mPopupTheme_;
  jboolean mReserveOverflow_;
  jboolean mFormatItems_;
  jint mFormatItemsWidth_;
  jint mMinCellSize_;
  jint mGeneratedItemPadding_;
}

- (void)onMeasureExactFormatWithInt:(jint)widthMeasureSpec
                            withInt:(jint)heightMeasureSpec;

+ (jboolean)hasTextStaticWithADView:(ADView *)itemView;

@end

J2OBJC_FIELD_SETTER(ADXActionMenuView, mMenu_, ADXMenuBuilder *)

__attribute__((unused)) static void ADXActionMenuView_onMeasureExactFormatWithInt_withInt_(ADXActionMenuView *self, jint widthMeasureSpec, jint heightMeasureSpec);

__attribute__((unused)) static jboolean ADXActionMenuView_hasTextStaticWithADView_(ADView *itemView);

@implementation ADXActionMenuView

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec {
  jboolean wasFormatted = mFormatItems_;
  mFormatItems_ = (ADView_MeasureSpec_getModeWithInt_(widthMeasureSpec) == ADView_MeasureSpec_EXACTLY);
  if (wasFormatted != mFormatItems_) {
    mFormatItemsWidth_ = 0;
  }
  jint widthSize = ADView_MeasureSpec_getSizeWithInt_(widthMeasureSpec);
  if (mFormatItems_ && mMenu_ != nil && widthSize != mFormatItemsWidth_) {
    mFormatItemsWidth_ = widthSize;
    [mMenu_ onItemsChangedWithBoolean:true];
  }
  jint childCount = [self getChildCount];
  if (mFormatItems_ && childCount > 0) {
    ADXActionMenuView_onMeasureExactFormatWithInt_withInt_(self, widthMeasureSpec, heightMeasureSpec);
  }
  else {
    for (jint i = 0; i < childCount; i++) {
      ADView *child = [self getChildAtWithInt:i];
      ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk(child)) getLayoutParams], [ADXActionMenuView_LayoutParams class]);
      ((ADXActionMenuView_LayoutParams *) nil_chk(lp))->leftMargin_ = lp->rightMargin_ = 0;
    }
    [super onMeasureWithInt:widthMeasureSpec withInt:heightMeasureSpec];
  }
}

- (void)onMeasureExactFormatWithInt:(jint)widthMeasureSpec
                            withInt:(jint)heightMeasureSpec {
  ADXActionMenuView_onMeasureExactFormatWithInt_withInt_(self, widthMeasureSpec, heightMeasureSpec);
}

+ (jint)measureChildForCellsWithADView:(ADView *)child
                               withInt:(jint)cellSize
                               withInt:(jint)cellsRemaining
                               withInt:(jint)parentHeightMeasureSpec
                               withInt:(jint)parentHeightPadding {
  return ADXActionMenuView_measureChildForCellsWithADView_withInt_withInt_withInt_withInt_(child, cellSize, cellsRemaining, parentHeightMeasureSpec, parentHeightPadding);
}

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)left
                    withInt:(jint)top
                    withInt:(jint)right
                    withInt:(jint)bottom {
  if (!mFormatItems_) {
    [super onLayoutWithBoolean:changed withInt:left withInt:top withInt:right withInt:bottom];
    return;
  }
  jint childCount = [self getChildCount];
  jint midVertical = JreIntDiv((bottom - top), 2);
  jint dividerWidth = [self getDividerWidth];
  jint overflowWidth = 0;
  jint nonOverflowCount = 0;
  jint widthRemaining = right - left - [self getPaddingRight] - [self getPaddingLeft];
  jboolean hasOverflow = false;
  jboolean isLayoutRtl = ADXViewUtils_isLayoutRtlWithADView_(self);
  for (jint i = 0; i < childCount; i++) {
    ADView *v = [self getChildAtWithInt:i];
    if ([((ADView *) nil_chk(v)) getVisibility] == ADView_GONE) {
      continue;
    }
    ADXActionMenuView_LayoutParams *p = (ADXActionMenuView_LayoutParams *) cast_chk([v getLayoutParams], [ADXActionMenuView_LayoutParams class]);
    if (((ADXActionMenuView_LayoutParams *) nil_chk(p))->isOverflowButton_) {
      overflowWidth = [v getMeasuredWidth];
      if ([self hasSupportDividerBeforeChildAtWithInt:i]) {
        overflowWidth += dividerWidth;
      }
      jint height = [v getMeasuredHeight];
      jint r;
      jint l;
      if (isLayoutRtl) {
        l = [self getPaddingLeft] + p->leftMargin_;
        r = l + overflowWidth;
      }
      else {
        r = [self getWidth] - [self getPaddingRight] - p->rightMargin_;
        l = r - overflowWidth;
      }
      jint t = midVertical - (JreIntDiv(height, 2));
      jint b = t + height;
      [v layoutWithInt:l withInt:t withInt:r withInt:b];
      widthRemaining -= overflowWidth;
      hasOverflow = true;
    }
    else {
      jint size = [v getMeasuredWidth] + p->leftMargin_ + p->rightMargin_;
      widthRemaining -= size;
      if ([self hasSupportDividerBeforeChildAtWithInt:i]) {
      }
      nonOverflowCount++;
    }
  }
  if (childCount == 1 && !hasOverflow) {
    ADView *v = [self getChildAtWithInt:0];
    jint width = [((ADView *) nil_chk(v)) getMeasuredWidth];
    jint height = [v getMeasuredHeight];
    jint midHorizontal = JreIntDiv((right - left), 2);
    jint l = midHorizontal - JreIntDiv(width, 2);
    jint t = midVertical - JreIntDiv(height, 2);
    [v layoutWithInt:l withInt:t withInt:l + width withInt:t + height];
    return;
  }
  jint spacerCount = nonOverflowCount - (hasOverflow ? 0 : 1);
  jint spacerSize = JavaLangMath_maxWithInt_withInt_(0, spacerCount > 0 ? JreIntDiv(widthRemaining, spacerCount) : 0);
  if (isLayoutRtl) {
    jint startRight = [self getWidth] - [self getPaddingRight];
    for (jint i = 0; i < childCount; i++) {
      ADView *v = [self getChildAtWithInt:i];
      ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk(v)) getLayoutParams], [ADXActionMenuView_LayoutParams class]);
      if ([v getVisibility] == ADView_GONE || ((ADXActionMenuView_LayoutParams *) nil_chk(lp))->isOverflowButton_) {
        continue;
      }
      startRight -= ((ADXActionMenuView_LayoutParams *) nil_chk(lp))->rightMargin_;
      jint width = [v getMeasuredWidth];
      jint height = [v getMeasuredHeight];
      jint t = midVertical - JreIntDiv(height, 2);
      [v layoutWithInt:startRight - width withInt:t withInt:startRight withInt:t + height];
      startRight -= width + lp->leftMargin_ + spacerSize;
    }
  }
  else {
    jint startLeft = [self getPaddingLeft];
    for (jint i = 0; i < childCount; i++) {
      ADView *v = [self getChildAtWithInt:i];
      ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk(v)) getLayoutParams], [ADXActionMenuView_LayoutParams class]);
      if ([v getVisibility] == ADView_GONE || ((ADXActionMenuView_LayoutParams *) nil_chk(lp))->isOverflowButton_) {
        continue;
      }
      startLeft += ((ADXActionMenuView_LayoutParams *) nil_chk(lp))->leftMargin_;
      jint width = [v getMeasuredWidth];
      jint height = [v getMeasuredHeight];
      jint t = midVertical - JreIntDiv(height, 2);
      [v layoutWithInt:startLeft withInt:t withInt:startLeft + width withInt:t + height];
      startLeft += width + lp->rightMargin_ + spacerSize;
    }
  }
}

- (void)setOverflowReservedWithBoolean:(jboolean)reserveOverflow {
  mReserveOverflow_ = reserveOverflow;
}

- (ADXActionMenuView_LayoutParams *)generateDefaultLayoutParams {
  ADXActionMenuView_LayoutParams *params = create_ADXActionMenuView_LayoutParams_initWithInt_withInt_(ADViewGroup_LayoutParams_WRAP_CONTENT, ADViewGroup_LayoutParams_WRAP_CONTENT);
  params->gravity_ = ADGravity_CENTER_VERTICAL;
  return params;
}

- (jboolean)checkLayoutParamsWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p {
  return [p isKindOfClass:[ADXActionMenuView_LayoutParams class]];
}

- (ADXActionMenuView_LayoutParams *)generateOverflowButtonLayoutParams {
  ADXActionMenuView_LayoutParams *result = JreRetainedLocalValue([self generateDefaultLayoutParams]);
  ((ADXActionMenuView_LayoutParams *) nil_chk(result))->isOverflowButton_ = true;
  return result;
}

- (void)initialize__WithADXMenuBuilder:(ADXMenuBuilder *)menu {
  JreStrongAssign(&mMenu_, menu);
}

- (jboolean)hasSupportDividerBeforeChildAtWithInt:(jint)childIndex {
  if (childIndex == 0) {
    return false;
  }
  ADView *childBefore = [self getChildAtWithInt:childIndex - 1];
  ADView *child = [self getChildAtWithInt:childIndex];
  jboolean result = false;
  if (childIndex < [self getChildCount] && [childBefore isKindOfClass:[ADXActionMenuView_ActionMenuChildView class]]) {
    result |= [((ADXActionMenuView_ActionMenuChildView *) nil_chk(((ADXActionMenuView_ActionMenuChildView *) cast_chk(childBefore, [ADXActionMenuView_ActionMenuChildView class])))) needsDividerAfter];
  }
  if (childIndex > 0 && [child isKindOfClass:[ADXActionMenuView_ActionMenuChildView class]]) {
    result |= [((ADXActionMenuView_ActionMenuChildView *) nil_chk(((ADXActionMenuView_ActionMenuChildView *) cast_chk(child, [ADXActionMenuView_ActionMenuChildView class])))) needsDividerBefore];
  }
  return result;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXActionMenuView_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getDividerWidth {
  return 0;
}

- (ADXActionMenuView_LayoutParams *)generateLayoutParamsWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p {
  return create_ADXActionMenuView_LayoutParams_initWithADViewGroup_LayoutParams_(p);
}

- (ADXMenuBuilder *)getMenu {
  if (mMenu_ == nil) {
    JreStrongAssignAndConsume(&mMenu_, new_ADXMenuBuilder_init());
    JreStrongAssignAndConsume(&mPresenter_, new_ADXActionMenuPresenter_initPackagePrivate());
    [mPresenter_ setReserveOverflowWithBoolean:true];
    [((ADXActionMenuPresenter *) nil_chk(mPresenter_)) setMenuWithADXMenuBuilder:mMenu_];
    [((ADXMenuBuilder *) nil_chk(mMenu_)) setActionMenuPresenterWithADXMenuPresenter:mPresenter_];
    [((ADXActionMenuPresenter *) nil_chk(mPresenter_)) setMenuViewWithADXActionMenuView:self];
  }
  return mMenu_;
}

- (void)updateMenuView {
  [((ADXActionMenuPresenter *) nil_chk(mPresenter_)) updateMenuViewWithBoolean:true];
}

- (ADView *)getItemViewWithADMenuItem:(id<ADMenuItem>)item {
  return nil;
}

- (ADView *)getOverFlowButton {
  return nil;
}

+ (jboolean)isActionMenuItemViewWithADView:(ADView *)child {
  return ADXActionMenuView_isActionMenuItemViewWithADView_(child);
}

+ (jboolean)hasTextStaticWithADView:(ADView *)itemView {
  return ADXActionMenuView_hasTextStaticWithADView_(itemView);
}

- (jboolean)hasTextWithADView:(ADView *)child {
  return false;
}

- (void)dealloc {
  RELEASE_(mMenu_);
  RELEASE_(mPresenter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x4, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LADXActionMenuView_LayoutParams;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 9, 10, -1, -1, -1, -1 },
    { NULL, "LADXActionMenuView_LayoutParams;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 13, 14, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXActionMenuView_LayoutParams;", 0x4, 15, 10, -1, -1, -1, -1 },
    { NULL, "LADXMenuBuilder;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADView;", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "LADView;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 18, 19, -1, -1, -1, -1 },
    { NULL, "Z", 0xa, 20, 19, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 21, 19, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(onMeasureWithInt:withInt:);
  methods[1].selector = @selector(onMeasureExactFormatWithInt:withInt:);
  methods[2].selector = @selector(measureChildForCellsWithADView:withInt:withInt:withInt:withInt:);
  methods[3].selector = @selector(onLayoutWithBoolean:withInt:withInt:withInt:withInt:);
  methods[4].selector = @selector(setOverflowReservedWithBoolean:);
  methods[5].selector = @selector(generateDefaultLayoutParams);
  methods[6].selector = @selector(checkLayoutParamsWithADViewGroup_LayoutParams:);
  methods[7].selector = @selector(generateOverflowButtonLayoutParams);
  methods[8].selector = @selector(initialize__WithADXMenuBuilder:);
  methods[9].selector = @selector(hasSupportDividerBeforeChildAtWithInt:);
  methods[10].selector = @selector(init);
  methods[11].selector = @selector(getDividerWidth);
  methods[12].selector = @selector(generateLayoutParamsWithADViewGroup_LayoutParams:);
  methods[13].selector = @selector(getMenu);
  methods[14].selector = @selector(updateMenuView);
  methods[15].selector = @selector(getItemViewWithADMenuItem:);
  methods[16].selector = @selector(getOverFlowButton);
  methods[17].selector = @selector(isActionMenuItemViewWithADView:);
  methods[18].selector = @selector(hasTextStaticWithADView:);
  methods[19].selector = @selector(hasTextWithADView:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_CELL_SIZE", "I", .constantValue.asInt = ADXActionMenuView_MIN_CELL_SIZE, 0x18, -1, -1, -1, -1 },
    { "GENERATED_ITEM_PADDING", "I", .constantValue.asInt = ADXActionMenuView_GENERATED_ITEM_PADDING, 0x18, -1, -1, -1, -1 },
    { "mMenu_", "LADXMenuBuilder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mPopupTheme_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mReserveOverflow_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mFormatItems_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mFormatItemsWidth_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMinCellSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mGeneratedItemPadding_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mPresenter_", "LADXActionMenuPresenter;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "onMeasure", "II", "onMeasureExactFormat", "measureChildForCells", "LADView;IIII", "onLayout", "ZIIII", "setOverflowReserved", "Z", "checkLayoutParams", "LADViewGroup_LayoutParams;", "initialize", "LADXMenuBuilder;", "hasSupportDividerBeforeChildAt", "I", "generateLayoutParams", "getItemView", "LADMenuItem;", "isActionMenuItemView", "LADView;", "hasTextStatic", "hasText", "LADXActionMenuView_LayoutParams;LADXActionMenuView_ActionMenuChildView;" };
  static const J2ObjcClassInfo _ADXActionMenuView = { "ActionMenuView", "androidx.appcompat.widget", ptrTable, methods, fields, 7, 0x1, 20, 10, -1, 22, -1, -1, -1 };
  return &_ADXActionMenuView;
}

@end

void ADXActionMenuView_onMeasureExactFormatWithInt_withInt_(ADXActionMenuView *self, jint widthMeasureSpec, jint heightMeasureSpec) {
  jint heightMode = ADView_MeasureSpec_getModeWithInt_(heightMeasureSpec);
  jint widthSize = ADView_MeasureSpec_getSizeWithInt_(widthMeasureSpec);
  jint heightSize = ADView_MeasureSpec_getSizeWithInt_(heightMeasureSpec);
  jint widthPadding = [self getPaddingLeft] + [self getPaddingRight];
  jint heightPadding = [self getPaddingTop] + [self getPaddingBottom];
  jint itemHeightSpec = ADViewGroup_getChildMeasureSpecWithInt_withInt_withInt_(heightMeasureSpec, heightPadding, ADViewGroup_LayoutParams_WRAP_CONTENT);
  widthSize -= widthPadding;
  jint cellCount = JreIntDiv(widthSize, self->mMinCellSize_);
  jint cellSizeRemaining = JreIntMod(widthSize, self->mMinCellSize_);
  if (cellCount == 0) {
    [self setMeasuredDimensionWithInt:widthSize withInt:0];
    return;
  }
  jint cellSize = self->mMinCellSize_ + JreIntDiv(cellSizeRemaining, cellCount);
  jint cellsRemaining = cellCount;
  jint maxChildHeight = 0;
  jint maxCellsUsed = 0;
  jint expandableItemCount = 0;
  jint visibleItemCount = 0;
  jboolean hasOverflow = false;
  jlong smallestItemsAt = 0;
  jint childCount = [self getChildCount];
  for (jint i = 0; i < childCount; i++) {
    ADView *child = [self getChildAtWithInt:i];
    if ([((ADView *) nil_chk(child)) getVisibility] == ADView_GONE) continue;
    jboolean isGeneratedItem = ADXActionMenuView_isActionMenuItemViewWithADView_(child);
    visibleItemCount++;
    if (isGeneratedItem) {
      [child setPaddingWithInt:self->mGeneratedItemPadding_ withInt:0 withInt:self->mGeneratedItemPadding_ withInt:0];
    }
    ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([child getLayoutParams], [ADXActionMenuView_LayoutParams class]);
    ((ADXActionMenuView_LayoutParams *) nil_chk(lp))->expanded_ = false;
    lp->extraPixels_ = 0;
    lp->cellsUsed_ = 0;
    lp->expandable_ = false;
    lp->leftMargin_ = 0;
    lp->rightMargin_ = 0;
    lp->preventEdgeOffset_ = (isGeneratedItem && [self hasTextWithADView:child]);
    jint cellsAvailable = lp->isOverflowButton_ ? 1 : cellsRemaining;
    jint cellsUsed = ADXActionMenuView_measureChildForCellsWithADView_withInt_withInt_withInt_withInt_(child, cellSize, cellsAvailable, itemHeightSpec, heightPadding);
    maxCellsUsed = JavaLangMath_maxWithInt_withInt_(maxCellsUsed, cellsUsed);
    if (lp->expandable_) expandableItemCount++;
    if (lp->isOverflowButton_) hasOverflow = true;
    cellsRemaining -= cellsUsed;
    maxChildHeight = JavaLangMath_maxWithInt_withInt_(maxChildHeight, [child getMeasuredHeight]);
    if (cellsUsed == 1) smallestItemsAt |= (JreLShift32(1, i));
  }
  jboolean centerSingleExpandedItem = hasOverflow && visibleItemCount == 2;
  jboolean needsExpansion = false;
  while (expandableItemCount > 0 && cellsRemaining > 0) {
    jint minCells = JavaLangInteger_MAX_VALUE;
    jlong minCellsAt = 0;
    jint minCellsItemCount = 0;
    for (jint i = 0; i < childCount; i++) {
      ADView *child = [self getChildAtWithInt:i];
      ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk(child)) getLayoutParams], [ADXActionMenuView_LayoutParams class]);
      if (!((ADXActionMenuView_LayoutParams *) nil_chk(lp))->expandable_) continue;
      if (lp->cellsUsed_ < minCells) {
        minCells = lp->cellsUsed_;
        minCellsAt = JreLShift64(1LL, i);
        minCellsItemCount = 1;
      }
      else if (lp->cellsUsed_ == minCells) {
        minCellsAt |= JreLShift64(1LL, i);
        minCellsItemCount++;
      }
    }
    smallestItemsAt |= minCellsAt;
    if (minCellsItemCount > cellsRemaining) break;
    minCells++;
    for (jint i = 0; i < childCount; i++) {
      ADView *child = [self getChildAtWithInt:i];
      ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk(child)) getLayoutParams], [ADXActionMenuView_LayoutParams class]);
      if ((minCellsAt & (JreLShift32(1, i))) == 0) {
        if (((ADXActionMenuView_LayoutParams *) nil_chk(lp))->cellsUsed_ == minCells) smallestItemsAt |= JreLShift32(1, i);
        continue;
      }
      if (centerSingleExpandedItem && ((ADXActionMenuView_LayoutParams *) nil_chk(lp))->preventEdgeOffset_ && cellsRemaining == 1) {
        [child setPaddingWithInt:self->mGeneratedItemPadding_ + cellSize withInt:0 withInt:self->mGeneratedItemPadding_ withInt:0];
      }
      ((ADXActionMenuView_LayoutParams *) nil_chk(lp))->cellsUsed_++;
      lp->expanded_ = true;
      cellsRemaining--;
    }
    needsExpansion = true;
  }
  jboolean singleItem = !hasOverflow && visibleItemCount == 1;
  if (cellsRemaining > 0 && smallestItemsAt != 0 && (cellsRemaining < visibleItemCount - 1 || singleItem || maxCellsUsed > 1)) {
    jfloat expandCount = JavaLangLong_bitCountWithLong_(smallestItemsAt);
    if (!singleItem) {
      if ((smallestItemsAt & 1) != 0) {
        ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk([self getChildAtWithInt:0])) getLayoutParams], [ADXActionMenuView_LayoutParams class]);
        if (!((ADXActionMenuView_LayoutParams *) nil_chk(lp))->preventEdgeOffset_) JreMinusAssignFloatF(&expandCount, 0.5f);
      }
      if ((smallestItemsAt & (JreLShift32(1, (childCount - 1)))) != 0) {
        ADXActionMenuView_LayoutParams *lp = ((ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk([self getChildAtWithInt:childCount - 1])) getLayoutParams], [ADXActionMenuView_LayoutParams class]));
        if (!((ADXActionMenuView_LayoutParams *) nil_chk(lp))->preventEdgeOffset_) JreMinusAssignFloatF(&expandCount, 0.5f);
      }
    }
    jint extraPixels = expandCount > 0 ? JreFpToInt((cellsRemaining * cellSize / expandCount)) : 0;
    for (jint i = 0; i < childCount; i++) {
      if ((smallestItemsAt & (JreLShift32(1, i))) == 0) continue;
      ADView *child = [self getChildAtWithInt:i];
      ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk(child)) getLayoutParams], [ADXActionMenuView_LayoutParams class]);
      if (ADXActionMenuView_isActionMenuItemViewWithADView_(child)) {
        ((ADXActionMenuView_LayoutParams *) nil_chk(lp))->extraPixels_ = extraPixels;
        lp->expanded_ = true;
        if (i == 0 && !lp->preventEdgeOffset_) {
          lp->leftMargin_ = JreIntDiv(-extraPixels, 2);
        }
        needsExpansion = true;
      }
      else if (((ADXActionMenuView_LayoutParams *) nil_chk(lp))->isOverflowButton_) {
        lp->extraPixels_ = extraPixels;
        lp->expanded_ = true;
        lp->rightMargin_ = JreIntDiv(-extraPixels, 2);
        needsExpansion = true;
      }
      else {
        if (i != 0) {
          lp->leftMargin_ = JreIntDiv(extraPixels, 2);
        }
        if (i != childCount - 1) {
          lp->rightMargin_ = JreIntDiv(extraPixels, 2);
        }
      }
    }
    cellsRemaining = 0;
  }
  if (needsExpansion) {
    for (jint i = 0; i < childCount; i++) {
      ADView *child = [self getChildAtWithInt:i];
      ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk(child)) getLayoutParams], [ADXActionMenuView_LayoutParams class]);
      if (!((ADXActionMenuView_LayoutParams *) nil_chk(lp))->expanded_) continue;
      jint width = lp->cellsUsed_ * cellSize + lp->extraPixels_;
      [child measureWithInt:ADView_MeasureSpec_makeMeasureSpecWithInt_withInt_(width, ADView_MeasureSpec_EXACTLY) withInt:itemHeightSpec];
    }
  }
  if (heightMode != ADView_MeasureSpec_EXACTLY) {
    heightSize = maxChildHeight;
  }
  [self setMeasuredDimensionWithInt:widthSize withInt:heightSize];
}

jint ADXActionMenuView_measureChildForCellsWithADView_withInt_withInt_withInt_withInt_(ADView *child, jint cellSize, jint cellsRemaining, jint parentHeightMeasureSpec, jint parentHeightPadding) {
  ADXActionMenuView_initialize();
  ADXActionMenuView_LayoutParams *lp = (ADXActionMenuView_LayoutParams *) cast_chk([((ADView *) nil_chk(child)) getLayoutParams], [ADXActionMenuView_LayoutParams class]);
  jint childHeightSize = ADView_MeasureSpec_getSizeWithInt_(parentHeightMeasureSpec) - parentHeightPadding;
  jint childHeightMode = ADView_MeasureSpec_getModeWithInt_(parentHeightMeasureSpec);
  jint childHeightSpec = ADView_MeasureSpec_makeMeasureSpecWithInt_withInt_(childHeightSize, childHeightMode);
  ADView *itemView = ADXActionMenuView_isActionMenuItemViewWithADView_(child) ? child : nil;
  jboolean hasText = itemView != nil && ADXActionMenuView_hasTextStaticWithADView_(itemView);
  jint cellsUsed = 0;
  if (cellsRemaining > 0 && (!hasText || cellsRemaining >= 2)) {
    jint childWidthSpec = ADView_MeasureSpec_makeMeasureSpecWithInt_withInt_(cellSize * cellsRemaining, ADView_MeasureSpec_AT_MOST);
    [child measureWithInt:childWidthSpec withInt:childHeightSpec];
    jint measuredWidth = [child getMeasuredWidth];
    cellsUsed = JreIntDiv(measuredWidth, cellSize);
    if (JreIntMod(measuredWidth, cellSize) != 0) cellsUsed++;
    if (hasText && cellsUsed < 2) cellsUsed = 2;
  }
  jboolean expandable = !((ADXActionMenuView_LayoutParams *) nil_chk(lp))->isOverflowButton_ && hasText;
  lp->expandable_ = expandable;
  lp->cellsUsed_ = cellsUsed;
  jint targetWidth = cellsUsed * cellSize;
  [child measureWithInt:ADView_MeasureSpec_makeMeasureSpecWithInt_withInt_(targetWidth, ADView_MeasureSpec_EXACTLY) withInt:childHeightSpec];
  return cellsUsed;
}

void ADXActionMenuView_init(ADXActionMenuView *self) {
  ADXLinearLayoutCompat_init(self);
  [self setBaselineAlignedWithBoolean:false];
  jfloat density = ((ADDisplayMetrics *) nil_chk([((ADResources *) nil_chk([self getResources])) getDisplayMetrics]))->density_;
  self->mMinCellSize_ = JreFpToInt((ADXActionMenuView_MIN_CELL_SIZE * density));
  self->mGeneratedItemPadding_ = JreFpToInt((ADXActionMenuView_GENERATED_ITEM_PADDING * density));
}

ADXActionMenuView *new_ADXActionMenuView_init() {
  J2OBJC_NEW_IMPL(ADXActionMenuView, init)
}

ADXActionMenuView *create_ADXActionMenuView_init() {
  J2OBJC_CREATE_IMPL(ADXActionMenuView, init)
}

jboolean ADXActionMenuView_isActionMenuItemViewWithADView_(ADView *child) {
  ADXActionMenuView_initialize();
  return child != nil && [child getTag] != nil && [nil_chk([child getTag]) isEqual:JavaLangInteger_valueOfWithInt_(1)];
}

jboolean ADXActionMenuView_hasTextStaticWithADView_(ADView *itemView) {
  ADXActionMenuView_initialize();
  return [((ADXActionMenuView *) nil_chk(((ADXActionMenuView *) cast_chk([((ADView *) nil_chk(itemView)) getParent], [ADXActionMenuView class])))) hasTextWithADView:itemView];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXActionMenuView)

@implementation ADXActionMenuView_LayoutParams

- (instancetype)initWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)other {
  ADXActionMenuView_LayoutParams_initWithADViewGroup_LayoutParams_(self, other);
  return self;
}

- (instancetype)initWithADXActionMenuView_LayoutParams:(ADXActionMenuView_LayoutParams *)other {
  ADXActionMenuView_LayoutParams_initWithADXActionMenuView_LayoutParams_(self, other);
  return self;
}

- (instancetype)initWithInt:(jint)width
                    withInt:(jint)height {
  ADXActionMenuView_LayoutParams_initWithInt_withInt_(self, width, height);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADViewGroup_LayoutParams:);
  methods[1].selector = @selector(initWithADXActionMenuView_LayoutParams:);
  methods[2].selector = @selector(initWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "isOverflowButton_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "cellsUsed_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "extraPixels_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "expandable_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "preventEdgeOffset_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "expanded_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADViewGroup_LayoutParams;", "LADXActionMenuView_LayoutParams;", "II", "LADXActionMenuView;" };
  static const J2ObjcClassInfo _ADXActionMenuView_LayoutParams = { "LayoutParams", "androidx.appcompat.widget", ptrTable, methods, fields, 7, 0x9, 3, 6, 3, -1, -1, -1, -1 };
  return &_ADXActionMenuView_LayoutParams;
}

@end

void ADXActionMenuView_LayoutParams_initWithADViewGroup_LayoutParams_(ADXActionMenuView_LayoutParams *self, ADViewGroup_LayoutParams *other) {
  ADXLinearLayoutCompat_LayoutParams_initWithADViewGroup_LayoutParams_(self, other);
}

ADXActionMenuView_LayoutParams *new_ADXActionMenuView_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *other) {
  J2OBJC_NEW_IMPL(ADXActionMenuView_LayoutParams, initWithADViewGroup_LayoutParams_, other)
}

ADXActionMenuView_LayoutParams *create_ADXActionMenuView_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *other) {
  J2OBJC_CREATE_IMPL(ADXActionMenuView_LayoutParams, initWithADViewGroup_LayoutParams_, other)
}

void ADXActionMenuView_LayoutParams_initWithADXActionMenuView_LayoutParams_(ADXActionMenuView_LayoutParams *self, ADXActionMenuView_LayoutParams *other) {
  ADXLinearLayoutCompat_LayoutParams_initWithADViewGroup_LayoutParams_(self, other);
  self->isOverflowButton_ = ((ADXActionMenuView_LayoutParams *) nil_chk(other))->isOverflowButton_;
}

ADXActionMenuView_LayoutParams *new_ADXActionMenuView_LayoutParams_initWithADXActionMenuView_LayoutParams_(ADXActionMenuView_LayoutParams *other) {
  J2OBJC_NEW_IMPL(ADXActionMenuView_LayoutParams, initWithADXActionMenuView_LayoutParams_, other)
}

ADXActionMenuView_LayoutParams *create_ADXActionMenuView_LayoutParams_initWithADXActionMenuView_LayoutParams_(ADXActionMenuView_LayoutParams *other) {
  J2OBJC_CREATE_IMPL(ADXActionMenuView_LayoutParams, initWithADXActionMenuView_LayoutParams_, other)
}

void ADXActionMenuView_LayoutParams_initWithInt_withInt_(ADXActionMenuView_LayoutParams *self, jint width, jint height) {
  ADXLinearLayoutCompat_LayoutParams_initWithInt_withInt_(self, width, height);
  self->isOverflowButton_ = false;
}

ADXActionMenuView_LayoutParams *new_ADXActionMenuView_LayoutParams_initWithInt_withInt_(jint width, jint height) {
  J2OBJC_NEW_IMPL(ADXActionMenuView_LayoutParams, initWithInt_withInt_, width, height)
}

ADXActionMenuView_LayoutParams *create_ADXActionMenuView_LayoutParams_initWithInt_withInt_(jint width, jint height) {
  J2OBJC_CREATE_IMPL(ADXActionMenuView_LayoutParams, initWithInt_withInt_, width, height)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXActionMenuView_LayoutParams)

@implementation ADXActionMenuView_ActionMenuChildView

- (instancetype)initWithADXActionMenuView:(ADXActionMenuView *)outer$ {
  ADXActionMenuView_ActionMenuChildView_initWithADXActionMenuView_(self, outer$);
  return self;
}

- (jboolean)needsDividerAfter {
  return false;
}

- (jboolean)needsDividerBefore {
  return false;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXActionMenuView:);
  methods[1].selector = @selector(needsDividerAfter);
  methods[2].selector = @selector(needsDividerBefore);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LADXActionMenuView;" };
  static const J2ObjcClassInfo _ADXActionMenuView_ActionMenuChildView = { "ActionMenuChildView", "androidx.appcompat.widget", ptrTable, methods, NULL, 7, 0x0, 3, 0, 0, -1, -1, -1, -1 };
  return &_ADXActionMenuView_ActionMenuChildView;
}

@end

void ADXActionMenuView_ActionMenuChildView_initWithADXActionMenuView_(ADXActionMenuView_ActionMenuChildView *self, ADXActionMenuView *outer$) {
  ADView_init(self);
}

ADXActionMenuView_ActionMenuChildView *new_ADXActionMenuView_ActionMenuChildView_initWithADXActionMenuView_(ADXActionMenuView *outer$) {
  J2OBJC_NEW_IMPL(ADXActionMenuView_ActionMenuChildView, initWithADXActionMenuView_, outer$)
}

ADXActionMenuView_ActionMenuChildView *create_ADXActionMenuView_ActionMenuChildView_initWithADXActionMenuView_(ADXActionMenuView *outer$) {
  J2OBJC_CREATE_IMPL(ADXActionMenuView_ActionMenuChildView, initWithADXActionMenuView_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXActionMenuView_ActionMenuChildView)