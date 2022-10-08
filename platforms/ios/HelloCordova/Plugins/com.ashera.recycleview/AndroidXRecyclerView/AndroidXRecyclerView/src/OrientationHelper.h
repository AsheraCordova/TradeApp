//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXRecyclerView\src\main\java\androidx\recyclerview\widget\OrientationHelper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrientationHelper")
#ifdef RESTRICT_OrientationHelper
#define INCLUDE_ALL_OrientationHelper 0
#else
#define INCLUDE_ALL_OrientationHelper 1
#endif
#undef RESTRICT_OrientationHelper

#if !defined (ADXOrientationHelper_) && (INCLUDE_ALL_OrientationHelper || defined(INCLUDE_ADXOrientationHelper))
#define ADXOrientationHelper_

@class ADRect;
@class ADView;
@class ADXRecyclerView_LayoutManager;

/*!
 @brief Helper class for LayoutManagers to abstract measurements depending on the View's orientation.
 <p>
  It is developed to easily support vertical and horizontal orientations in a LayoutManager but
  can also be used to abstract calls around view bounds and child measurements with margins and
  decorations.
 - seealso: #createHorizontalHelper(RecyclerView.LayoutManager)
 - seealso: #createVerticalHelper(RecyclerView.LayoutManager)
 */
@interface ADXOrientationHelper : NSObject {
 @public
  ADXRecyclerView_LayoutManager *mLayoutManager_;
  ADRect *mTmpRect_;
}

#pragma mark Public

/*!
 @brief Creates a horizontal OrientationHelper for the given LayoutManager.
 @param layoutManager The LayoutManager to attach to.
 @return A new OrientationHelper
 */
+ (ADXOrientationHelper *)createHorizontalHelperWithADXRecyclerView_LayoutManager:(ADXRecyclerView_LayoutManager *)layoutManager;

/*!
 @brief Creates an OrientationHelper for the given LayoutManager and orientation.
 @param layoutManager LayoutManager to attach to
 @param orientation Desired orientation. Should be <code>HORIZONTAL</code>  or <code>VERTICAL</code>
 @return A new OrientationHelper
 */
+ (ADXOrientationHelper *)createOrientationHelperWithADXRecyclerView_LayoutManager:(ADXRecyclerView_LayoutManager *)layoutManager
                                                                           withInt:(jint)orientation;

/*!
 @brief Creates a vertical OrientationHelper for the given LayoutManager.
 @param layoutManager The LayoutManager to attach to.
 @return A new OrientationHelper
 */
+ (ADXOrientationHelper *)createVerticalHelperWithADXRecyclerView_LayoutManager:(ADXRecyclerView_LayoutManager *)layoutManager;

/*!
 @brief Returns the end of the view including its decoration and margin.
 <p>
  For example, for the horizontal helper, if a View's right is at pixel 200, has 2px right
  decoration and 3px right margin, returned value will be 205.
 @param view The view element to check
 @return The last pixel of the element
 - seealso: #getDecoratedStart(r.android.view.View)
 */
- (jint)getDecoratedEndWithADView:(ADView *)view;

/*!
 @brief Returns the space occupied by this View in the current orientation including decorations and
  margins.
 @param view The view element to check
 @return Total space occupied by this view
 - seealso: #getDecoratedMeasurementInOther(View)
 */
- (jint)getDecoratedMeasurementWithADView:(ADView *)view;

/*!
 @brief Returns the space occupied by this View in the perpendicular orientation including
  decorations and margins.
 @param view The view element to check
 @return Total space occupied by this view in the perpendicular orientation to current one
 - seealso: #getDecoratedMeasurement(View)
 */
- (jint)getDecoratedMeasurementInOtherWithADView:(ADView *)view;

/*!
 @brief Returns the start of the view including its decoration and margin.
 <p>
  For example, for the horizontal helper, if a View's left is at pixel 20, has 2px left
  decoration and 3px left margin, returned value will be 15px.
 @param view The view element to check
 @return The first pixel of the element
 - seealso: #getDecoratedEnd(r.android.view.View)
 */
- (jint)getDecoratedStartWithADView:(ADView *)view;

/*!
 @brief Returns the end position of the layout without taking padding into account.
 @return The end boundary for this layout without considering padding.
 */
- (jint)getEnd;

/*!
 @brief Returns the end position of the layout after the end padding is removed.
 @return The end boundary for this layout.
 */
- (jint)getEndAfterPadding;

/*!
 @brief Returns the padding at the end of the layout.For horizontal helper, this is the right
  padding and for vertical helper, this is the bottom padding.
 This method does not check
  whether the layout is RTL or not.
 @return The padding at the end of the layout.
 */
- (jint)getEndPadding;

/*!
 @brief Returns the <code>LayoutManager</code> that
  is associated with this OrientationHelper.
 */
- (ADXRecyclerView_LayoutManager *)getLayoutManager;

/*!
 @brief Returns the MeasureSpec mode for the current orientation from the LayoutManager.
 @return The current measure spec mode.
 - seealso: View.MeasureSpec
 - seealso: RecyclerView.LayoutManager#getWidthMode()
 - seealso: RecyclerView.LayoutManager#getHeightMode()
 */
- (jint)getMode;

/*!
 @brief Returns the MeasureSpec mode for the perpendicular orientation from the LayoutManager.
 @return The current measure spec mode.
 - seealso: View.MeasureSpec
 - seealso: RecyclerView.LayoutManager#getWidthMode()
 - seealso: RecyclerView.LayoutManager#getHeightMode()
 */
- (jint)getModeInOther;

/*!
 @brief Returns the start position of the layout after the start padding is added.
 @return The very first pixel we can draw.
 */
- (jint)getStartAfterPadding;

/*!
 @brief Returns the total space to layout.This number is the difference between 
 <code>getEndAfterPadding()</code> and <code>getStartAfterPadding()</code>.
 @return Total space to layout children
 */
- (jint)getTotalSpace;

/*!
 @brief Returns the layout space change between the previous layout pass and current layout pass.
 <p>
  Make sure you call <code>onLayoutComplete()</code> at the end of your LayoutManager's 
 <code>RecyclerView.LayoutManager.onLayoutChildren(RecyclerView.Recycler,
 RecyclerView.State)</code>
  method.
 @return The difference between the current total space and previous layout's total space.
 - seealso: #onLayoutComplete()
 */
- (jint)getTotalSpaceChange;

/*!
 @brief Returns the end of the View after its matrix transformations are applied to its layout
  position.
 <p>
  This method is useful when trying to detect the visible edge of a View. 
 <p>
  It includes the decorations but does not include the margins.
 @param view The view whose transformed end will be returned
 @return The end of the View after its decor insets and transformation matrix is applied to
  its position
 - seealso: RecyclerView.LayoutManager#getTransformedBoundingBox(View, boolean, Rect)
 */
- (jint)getTransformedEndWithDecorationWithADView:(ADView *)view;

/*!
 @brief Returns the start of the View after its matrix transformations are applied to its layout
  position.
 <p>
  This method is useful when trying to detect the visible edge of a View. 
 <p>
  It includes the decorations but does not include the margins.
 @param view The view whose transformed start will be returned
 @return The start of the View after its decor insets and transformation matrix is applied to
  its position
 - seealso: RecyclerView.LayoutManager#getTransformedBoundingBox(View, boolean, Rect)
 */
- (jint)getTransformedStartWithDecorationWithADView:(ADView *)view;

/*!
 @brief Offsets the child in this orientation.
 @param view View to offset
 @param offset offset amount
 */
- (void)offsetChildWithADView:(ADView *)view
                      withInt:(jint)offset;

/*!
 @brief Offsets all children's positions by the given amount.
 @param amount Value to add to each child's layout parameters
 */
- (void)offsetChildrenWithInt:(jint)amount;

/*!
 @brief Call this method after onLayout method is complete if state is NOT pre-layout.
 This method records information like layout bounds that might be useful in the next layout
  calculations.
 */
- (void)onLayoutComplete;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXOrientationHelper)

J2OBJC_FIELD_SETTER(ADXOrientationHelper, mLayoutManager_, ADXRecyclerView_LayoutManager *)
J2OBJC_FIELD_SETTER(ADXOrientationHelper, mTmpRect_, ADRect *)

inline jint ADXOrientationHelper_get_HORIZONTAL(void);
#define ADXOrientationHelper_HORIZONTAL 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXOrientationHelper, HORIZONTAL, jint)

inline jint ADXOrientationHelper_get_VERTICAL(void);
#define ADXOrientationHelper_VERTICAL 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXOrientationHelper, VERTICAL, jint)

FOUNDATION_EXPORT ADXOrientationHelper *ADXOrientationHelper_createOrientationHelperWithADXRecyclerView_LayoutManager_withInt_(ADXRecyclerView_LayoutManager *layoutManager, jint orientation);

FOUNDATION_EXPORT ADXOrientationHelper *ADXOrientationHelper_createHorizontalHelperWithADXRecyclerView_LayoutManager_(ADXRecyclerView_LayoutManager *layoutManager);

FOUNDATION_EXPORT ADXOrientationHelper *ADXOrientationHelper_createVerticalHelperWithADXRecyclerView_LayoutManager_(ADXRecyclerView_LayoutManager *layoutManager);

J2OBJC_TYPE_LITERAL_HEADER(ADXOrientationHelper)

@compatibility_alias AndroidxRecyclerviewWidgetOrientationHelper ADXOrientationHelper;

#endif

#pragma pop_macro("INCLUDE_ALL_OrientationHelper")