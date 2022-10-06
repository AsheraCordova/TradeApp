//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXRecyclerView\src\main\java\androidx\recyclerview\widget\GridLayoutManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GridLayoutManager")
#ifdef RESTRICT_GridLayoutManager
#define INCLUDE_ALL_GridLayoutManager 0
#else
#define INCLUDE_ALL_GridLayoutManager 1
#endif
#undef RESTRICT_GridLayoutManager
#ifdef INCLUDE_ADXGridLayoutManager_DefaultSpanSizeLookup
#define INCLUDE_ADXGridLayoutManager_SpanSizeLookup 1
#endif

#if !defined (ADXGridLayoutManager_) && (INCLUDE_ALL_GridLayoutManager || defined(INCLUDE_ADXGridLayoutManager))
#define ADXGridLayoutManager_

#define RESTRICT_LinearLayoutManager 1
#define INCLUDE_ADXLinearLayoutManager 1
#include "LinearLayoutManager.h"

@class ADContext;
@class ADRect;
@class ADSparseIntArray;
@class ADView;
@class ADXGridLayoutManager_SpanSizeLookup;
@class ADXLinearLayoutManager_AnchorInfo;
@class ADXLinearLayoutManager_LayoutChunkResult;
@class ADXLinearLayoutManager_LayoutState;
@class ADXRecyclerView;
@class ADXRecyclerView_LayoutParams;
@class ADXRecyclerView_Recycler;
@class ADXRecyclerView_State;
@class IOSIntArray;
@class IOSObjectArray;
@protocol ADXRecyclerView_LayoutManager_LayoutPrefetchRegistry;

/*!
 @brief A <code>RecyclerView.LayoutManager</code> implementations that lays out items in a grid.
 <p>
  By default, each item occupies 1 span. You can change it by providing a custom 
 <code>SpanSizeLookup</code> instance via <code>setSpanSizeLookup(SpanSizeLookup)</code>.
 */
@interface ADXGridLayoutManager : ADXLinearLayoutManager {
 @public
  /*!
   @brief Span size have been changed but we've not done a new layout calculation.
   */
  jboolean mPendingSpanCountChange_;
  jint mSpanCount_;
  /*!
   @brief Right borders for each span.
   <p>For <b>i-th</b> item start is <code>mCachedBorders</code>[i-1] + 1
  and end is <code>mCachedBorders</code>[i].
   */
  IOSIntArray *mCachedBorders_;
  /*!
   @brief Temporary array to keep views in layoutChunk method
   */
  IOSObjectArray *mSet_;
  ADSparseIntArray *mPreLayoutSpanSizeCache_;
  ADSparseIntArray *mPreLayoutSpanIndexCache_;
  ADXGridLayoutManager_SpanSizeLookup *mSpanSizeLookup_;
  ADRect *mDecorInsets_;
}

#pragma mark Public

/*!
 @brief Creates a vertical GridLayoutManager
 @param context Current context, will be used to access resources.
 @param spanCount The number of columns in the grid
 */
- (instancetype)initWithADContext:(ADContext *)context
                          withInt:(jint)spanCount;

/*!
 @param context Current context, will be used to access resources.
 @param spanCount The number of columns or rows in the grid
 @param orientation Layout orientation. Should be <code>HORIZONTAL</code>  or <code>VERTICAL</code>
  .
 @param reverseLayout When set to true, layouts from end to start.
 */
- (instancetype)initWithADContext:(ADContext *)context
                          withInt:(jint)spanCount
                          withInt:(jint)orientation
                      withBoolean:(jboolean)reverseLayout;

- (jboolean)checkLayoutParamsWithADXRecyclerView_LayoutParams:(ADXRecyclerView_LayoutParams *)lp;

- (jint)computeHorizontalScrollOffsetWithADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (jint)computeHorizontalScrollRangeWithADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (jint)computeVerticalScrollOffsetWithADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (jint)computeVerticalScrollRangeWithADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (ADXRecyclerView_LayoutParams *)generateDefaultLayoutParams;

- (jint)getColumnCountForAccessibilityWithADXRecyclerView_Recycler:(ADXRecyclerView_Recycler *)recycler
                                         withADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (jint)getRowCountForAccessibilityWithADXRecyclerView_Recycler:(ADXRecyclerView_Recycler *)recycler
                                      withADXRecyclerView_State:(ADXRecyclerView_State *)state;

/*!
 @brief Returns the number of spans laid out by this grid.
 @return The number of spans
 - seealso: #setSpanCount(int)
 */
- (jint)getSpanCount;

/*!
 @brief Returns the current <code>SpanSizeLookup</code> used by the GridLayoutManager.
 @return The current <code>SpanSizeLookup</code> used by the GridLayoutManager.
 */
- (ADXGridLayoutManager_SpanSizeLookup *)getSpanSizeLookup;

/*!
 @brief Returns true if the scroll offset and scroll range calculations take account of span
  information.See <code>setUsingSpansToEstimateScrollbarDimensions(boolean)</code> for more
  information on this topic.
 Defaults to <code>false</code>.
 @return true if the scroll offset and scroll range calculations take account of span
  information.
 */
- (jboolean)isUsingSpansToEstimateScrollbarDimensions;

- (ADView *)onFocusSearchFailedWithADView:(ADView *)focused
                                  withInt:(jint)direction
             withADXRecyclerView_Recycler:(ADXRecyclerView_Recycler *)recycler
                withADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (void)onItemsAddedWithADXRecyclerView:(ADXRecyclerView *)recyclerView
                                withInt:(jint)positionStart
                                withInt:(jint)itemCount;

- (void)onItemsChangedWithADXRecyclerView:(ADXRecyclerView *)recyclerView;

- (void)onItemsMovedWithADXRecyclerView:(ADXRecyclerView *)recyclerView
                                withInt:(jint)from
                                withInt:(jint)to
                                withInt:(jint)itemCount;

- (void)onItemsRemovedWithADXRecyclerView:(ADXRecyclerView *)recyclerView
                                  withInt:(jint)positionStart
                                  withInt:(jint)itemCount;

- (void)onItemsUpdatedWithADXRecyclerView:(ADXRecyclerView *)recyclerView
                                  withInt:(jint)positionStart
                                  withInt:(jint)itemCount
                                   withId:(id)payload;

- (void)onLayoutChildrenWithADXRecyclerView_Recycler:(ADXRecyclerView_Recycler *)recycler
                           withADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (void)onLayoutCompletedWithADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (jint)scrollHorizontallyByWithInt:(jint)dx
       withADXRecyclerView_Recycler:(ADXRecyclerView_Recycler *)recycler
          withADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (jint)scrollVerticallyByWithInt:(jint)dy
     withADXRecyclerView_Recycler:(ADXRecyclerView_Recycler *)recycler
        withADXRecyclerView_State:(ADXRecyclerView_State *)state;

- (void)setMeasuredDimensionWithADRect:(ADRect *)childrenBounds
                               withInt:(jint)wSpec
                               withInt:(jint)hSpec;

/*!
 @brief Sets the number of spans to be laid out.
 <p>
  If <code>getOrientation()</code> is <code>VERTICAL</code>, this is the number of columns.
  If <code>getOrientation()</code> is <code>HORIZONTAL</code>, this is the number of rows.
 @param spanCount The total number of spans in the grid
 - seealso: #getSpanCount()
 */
- (void)setSpanCountWithInt:(jint)spanCount;

/*!
 @brief Sets the source to get the number of spans occupied by each item in the adapter.
 @param spanSizeLookup<code>SpanSizeLookup</code>  instance to be used to query number of spans                        occupied by each item
 */
- (void)setSpanSizeLookupWithADXGridLayoutManager_SpanSizeLookup:(ADXGridLayoutManager_SpanSizeLookup *)spanSizeLookup;

/*!
 @brief stackFromEnd is not supported by GridLayoutManager.Consider using 
 <code>setReverseLayout(boolean)</code>.
 */
- (void)setStackFromEndWithBoolean:(jboolean)stackFromEnd;

/*!
 @brief When this flag is set, the scroll offset and scroll range calculations will take account
  of span information.
 <p>This is will increase the accuracy of the scroll bar's size and offset but will require
  more calls to <code>SpanSizeLookup.getSpanGroupIndex(int, int)</code>".
  
 <p>This additional accuracy may or may not be needed, depending on the characteristics of
  your layout.  You will likely benefit from this accuracy when: 
 <ul>
    <li>The variation in item span sizes is large.
    <li>The size of your data set is small (if your data set is large, the scrollbar will
    likely be very small anyway, and thus the increased accuracy has less impact).   
 <li>Calls to <code>SpanSizeLookup.getSpanGroupIndex(int, int)</code> are fast. 
 </ul>
  
 <p>If you decide to enable this feature, you should be sure that calls to 
 <code>SpanSizeLookup.getSpanGroupIndex(int, int)</code> are fast, that set span group index
  caching is set to true via a call to 
 {@@link SpanSizeLookup#setSpanGroupIndexCacheEnabled(boolean),
  and span index caching is also enabled via a call to 
 <code>SpanSizeLookup.setSpanIndexCacheEnabled(boolean)</code>}.
 */
- (void)setUsingSpansToEstimateScrollbarDimensionsWithBoolean:(jboolean)useSpansToEstimateScrollBarDimensions;

- (jboolean)supportsPredictiveItemAnimations;

#pragma mark Package-Private

/*!
 @param cachedBorders The out array
 @param spanCount number of spans
 @param totalSpace total available space after padding is removed
 @return The updated array. Might be the same instance as the provided array if its size
  has not changed.
 */
+ (IOSIntArray *)calculateItemBordersWithIntArray:(IOSIntArray *)cachedBorders
                                          withInt:(jint)spanCount
                                          withInt:(jint)totalSpace;

- (void)collectPrefetchPositionsForLayoutStateWithADXRecyclerView_State:(ADXRecyclerView_State *)state
                                 withADXLinearLayoutManager_LayoutState:(ADXLinearLayoutManager_LayoutState *)layoutState
               withADXRecyclerView_LayoutManager_LayoutPrefetchRegistry:(id<ADXRecyclerView_LayoutManager_LayoutPrefetchRegistry>)layoutPrefetchRegistry;

- (ADView *)findReferenceChildWithADXRecyclerView_Recycler:(ADXRecyclerView_Recycler *)recycler
                                 withADXRecyclerView_State:(ADXRecyclerView_State *)state
                                               withBoolean:(jboolean)layoutFromEnd
                                               withBoolean:(jboolean)traverseChildrenInReverseOrder;

- (jint)getSpaceForSpanRangeWithInt:(jint)startSpan
                            withInt:(jint)spanSize;

- (void)layoutChunkWithADXRecyclerView_Recycler:(ADXRecyclerView_Recycler *)recycler
                      withADXRecyclerView_State:(ADXRecyclerView_State *)state
         withADXLinearLayoutManager_LayoutState:(ADXLinearLayoutManager_LayoutState *)layoutState
   withADXLinearLayoutManager_LayoutChunkResult:(ADXLinearLayoutManager_LayoutChunkResult *)result;

- (void)onAnchorReadyWithADXRecyclerView_Recycler:(ADXRecyclerView_Recycler *)recycler
                        withADXRecyclerView_State:(ADXRecyclerView_State *)state
            withADXLinearLayoutManager_AnchorInfo:(ADXLinearLayoutManager_AnchorInfo *)anchorInfo
                                          withInt:(jint)itemDirection;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADContext:(ADContext *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithADContext:(ADContext *)arg0
                          withInt:(jint)arg1
                      withBoolean:(jboolean)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXGridLayoutManager)

J2OBJC_FIELD_SETTER(ADXGridLayoutManager, mCachedBorders_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADXGridLayoutManager, mSet_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ADXGridLayoutManager, mPreLayoutSpanSizeCache_, ADSparseIntArray *)
J2OBJC_FIELD_SETTER(ADXGridLayoutManager, mPreLayoutSpanIndexCache_, ADSparseIntArray *)
J2OBJC_FIELD_SETTER(ADXGridLayoutManager, mSpanSizeLookup_, ADXGridLayoutManager_SpanSizeLookup *)
J2OBJC_FIELD_SETTER(ADXGridLayoutManager, mDecorInsets_, ADRect *)

inline jint ADXGridLayoutManager_get_DEFAULT_SPAN_COUNT(void);
#define ADXGridLayoutManager_DEFAULT_SPAN_COUNT -1
J2OBJC_STATIC_FIELD_CONSTANT(ADXGridLayoutManager, DEFAULT_SPAN_COUNT, jint)

FOUNDATION_EXPORT void ADXGridLayoutManager_initWithADContext_withInt_(ADXGridLayoutManager *self, ADContext *context, jint spanCount);

FOUNDATION_EXPORT ADXGridLayoutManager *new_ADXGridLayoutManager_initWithADContext_withInt_(ADContext *context, jint spanCount) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGridLayoutManager *create_ADXGridLayoutManager_initWithADContext_withInt_(ADContext *context, jint spanCount);

FOUNDATION_EXPORT void ADXGridLayoutManager_initWithADContext_withInt_withInt_withBoolean_(ADXGridLayoutManager *self, ADContext *context, jint spanCount, jint orientation, jboolean reverseLayout);

FOUNDATION_EXPORT ADXGridLayoutManager *new_ADXGridLayoutManager_initWithADContext_withInt_withInt_withBoolean_(ADContext *context, jint spanCount, jint orientation, jboolean reverseLayout) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGridLayoutManager *create_ADXGridLayoutManager_initWithADContext_withInt_withInt_withBoolean_(ADContext *context, jint spanCount, jint orientation, jboolean reverseLayout);

FOUNDATION_EXPORT IOSIntArray *ADXGridLayoutManager_calculateItemBordersWithIntArray_withInt_withInt_(IOSIntArray *cachedBorders, jint spanCount, jint totalSpace);

J2OBJC_TYPE_LITERAL_HEADER(ADXGridLayoutManager)

@compatibility_alias AndroidxRecyclerviewWidgetGridLayoutManager ADXGridLayoutManager;

#endif

#if !defined (ADXGridLayoutManager_SpanSizeLookup_) && (INCLUDE_ALL_GridLayoutManager || defined(INCLUDE_ADXGridLayoutManager_SpanSizeLookup))
#define ADXGridLayoutManager_SpanSizeLookup_

@class ADSparseIntArray;

/*!
 @brief A helper class to provide the number of spans each item occupies.
 <p>
  Default implementation sets each item to occupy exactly 1 span.
 - seealso: GridLayoutManager#setSpanSizeLookup(SpanSizeLookup)
 */
@interface ADXGridLayoutManager_SpanSizeLookup : NSObject {
 @public
  ADSparseIntArray *mSpanIndexCache_;
  ADSparseIntArray *mSpanGroupIndexCache_;
}

#pragma mark Public

- (instancetype)init;

/*!
 @brief Returns the index of the group this position belongs.
 <p>
  For example, if grid has 3 columns and each item occupies 1 span, span group index
  for item 1 will be 0, item 5 will be 1.
 @param adapterPosition The position in adapter
 @param spanCount The total number of spans in the grid
 @return The index of the span group including the item at the given adapter position
 */
- (jint)getSpanGroupIndexWithInt:(jint)adapterPosition
                         withInt:(jint)spanCount;

/*!
 @brief Returns the final span index of the provided position.
 <p>
  If you have a faster way to calculate span index for your items, you should override
  this method. Otherwise, you should enable span index cache
  (<code>setSpanIndexCacheEnabled(boolean)</code>) for better performance. When caching is
  disabled, default implementation traverses all items from 0 to 
 <code>position</code>. When caching is enabled, it calculates from the closest cached
  value before the <code>position</code>.
  <p>
  If you override this method, you need to make sure it is consistent with 
 <code>getSpanSize(int)</code>. GridLayoutManager does not call this method for
  each item. It is called only for the reference item and rest of the items
  are assigned to spans based on the reference item. For example, you cannot assign a
  position to span 2 while span 1 is empty. 
 <p>
  Note that span offsets always start with 0 and are not affected by RTL.
 @param position The position of the item
 @param spanCount The total number of spans in the grid
 @return The final span position of the item. Should be between 0 (inclusive) and 
 <code>spanCount</code>(exclusive)
 */
- (jint)getSpanIndexWithInt:(jint)position
                    withInt:(jint)spanCount;

/*!
 @brief Returns the number of span occupied by the item at <code>position</code>.
 @param position The adapter position of the item
 @return The number of spans occupied by the item at the provided position
 */
- (jint)getSpanSizeWithInt:(jint)position;

/*!
 @brief Clears the span group index cache.GridLayoutManager automatically calls this method
  when adapter changes occur.
 */
- (void)invalidateSpanGroupIndexCache;

/*!
 @brief Clears the span index cache.GridLayoutManager automatically calls this method when
  adapter changes occur.
 */
- (void)invalidateSpanIndexCache;

/*!
 @brief Returns whether results of <code>getSpanGroupIndex(int, int)</code> method are cached or not.
 @return True if results of <code>getSpanGroupIndex(int, int)</code> are cached.
 */
- (jboolean)isSpanGroupIndexCacheEnabled;

/*!
 @brief Returns whether results of <code>getSpanIndex(int, int)</code> method are cached or not.
 @return True if results of <code>getSpanIndex(int, int)</code> are cached.
 */
- (jboolean)isSpanIndexCacheEnabled;

/*!
 @brief Sets whether the results of <code>getSpanGroupIndex(int, int)</code> method should be cached
  or not.By default these values are not cached.
 If you are not overriding 
 <code>getSpanGroupIndex(int, int)</code> with something highly performant, and you are using
  spans to calculate scrollbar offset and range, you should set this to true for better
  performance.
 @param cacheSpanGroupIndices Whether results of getGroupSpanIndex should be cached or                               not.
 */
- (void)setSpanGroupIndexCacheEnabledWithBoolean:(jboolean)cacheSpanGroupIndices;

/*!
 @brief Sets whether the results of <code>getSpanIndex(int, int)</code> method should be cached or
  not.By default these values are not cached.
 If you are not overriding 
 <code>getSpanIndex(int, int)</code> with something highly performant, you should set this
  to true for better performance.
 @param cacheSpanIndices Whether results of getSpanIndex should be cached or not.
 */
- (void)setSpanIndexCacheEnabledWithBoolean:(jboolean)cacheSpanIndices;

#pragma mark Package-Private

+ (jint)findFirstKeyLessThanWithADSparseIntArray:(ADSparseIntArray *)cache
                                         withInt:(jint)position;

- (jint)getCachedSpanGroupIndexWithInt:(jint)position
                               withInt:(jint)spanCount;

- (jint)getCachedSpanIndexWithInt:(jint)position
                          withInt:(jint)spanCount;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXGridLayoutManager_SpanSizeLookup)

J2OBJC_FIELD_SETTER(ADXGridLayoutManager_SpanSizeLookup, mSpanIndexCache_, ADSparseIntArray *)
J2OBJC_FIELD_SETTER(ADXGridLayoutManager_SpanSizeLookup, mSpanGroupIndexCache_, ADSparseIntArray *)

FOUNDATION_EXPORT void ADXGridLayoutManager_SpanSizeLookup_init(ADXGridLayoutManager_SpanSizeLookup *self);

FOUNDATION_EXPORT jint ADXGridLayoutManager_SpanSizeLookup_findFirstKeyLessThanWithADSparseIntArray_withInt_(ADSparseIntArray *cache, jint position);

J2OBJC_TYPE_LITERAL_HEADER(ADXGridLayoutManager_SpanSizeLookup)

#endif

#if !defined (ADXGridLayoutManager_DefaultSpanSizeLookup_) && (INCLUDE_ALL_GridLayoutManager || defined(INCLUDE_ADXGridLayoutManager_DefaultSpanSizeLookup))
#define ADXGridLayoutManager_DefaultSpanSizeLookup_

/*!
 @brief Default implementation for <code>SpanSizeLookup</code>.Each item occupies 1 span.
 */
@interface ADXGridLayoutManager_DefaultSpanSizeLookup : ADXGridLayoutManager_SpanSizeLookup

#pragma mark Public

- (instancetype)init;

- (jint)getSpanIndexWithInt:(jint)position
                    withInt:(jint)spanCount;

- (jint)getSpanSizeWithInt:(jint)position;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXGridLayoutManager_DefaultSpanSizeLookup)

FOUNDATION_EXPORT void ADXGridLayoutManager_DefaultSpanSizeLookup_init(ADXGridLayoutManager_DefaultSpanSizeLookup *self);

FOUNDATION_EXPORT ADXGridLayoutManager_DefaultSpanSizeLookup *new_ADXGridLayoutManager_DefaultSpanSizeLookup_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGridLayoutManager_DefaultSpanSizeLookup *create_ADXGridLayoutManager_DefaultSpanSizeLookup_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXGridLayoutManager_DefaultSpanSizeLookup)

#endif

#if !defined (ADXGridLayoutManager_LayoutParams_) && (INCLUDE_ALL_GridLayoutManager || defined(INCLUDE_ADXGridLayoutManager_LayoutParams))
#define ADXGridLayoutManager_LayoutParams_

#define RESTRICT_RecyclerView 1
#define INCLUDE_ADXRecyclerView_LayoutParams 1
#include "RecyclerView.h"

@class ADViewGroup_LayoutParams;
@class ADViewGroup_MarginLayoutParams;

/*!
 @brief LayoutParams used by GridLayoutManager.
 <p>
  Note that if the orientation is <code>VERTICAL</code>, the width parameter is ignored and if the
  orientation is <code>HORIZONTAL</code> the height parameter is ignored because child view is
  expected to fill all of the space given to it.
 */
@interface ADXGridLayoutManager_LayoutParams : ADXRecyclerView_LayoutParams {
 @public
  jint mSpanIndex_;
  jint mSpanSize_;
}

#pragma mark Public

/*!
 */
- (instancetype)initWithInt:(jint)width
                    withInt:(jint)height;

- (instancetype)initWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)source;

- (instancetype)initWithADXRecyclerView_LayoutParams:(ADXRecyclerView_LayoutParams *)source;

- (instancetype)initWithADViewGroup_MarginLayoutParams:(ADViewGroup_MarginLayoutParams *)source;

/*!
 @brief Returns the current span index of this View.If the View is not laid out yet, the return
  value is <code>undefined</code>.
 <p>
  Starting with RecyclerView <b>24.2.0</b>, span indices are always indexed from position 0
  even if the layout is RTL. In a vertical GridLayoutManager, <b>leftmost</b> span is span
  0 if the layout is <b>LTR</b> and <b>rightmost</b> span is span 0 if the layout is 
 <b>RTL</b>. Prior to 24.2.0, it was the opposite which was conflicting with 
 <code>SpanSizeLookup.getSpanIndex(int, int)</code>.
  <p>
  If the View occupies multiple spans, span with the minimum index is returned.
 @return The span index of the View.
 */
- (jint)getSpanIndex;

/*!
 @brief Returns the number of spans occupied by this View.If the View not laid out yet, the
  return value is <code>undefined</code>.
 @return The number of spans occupied by this View.
 */
- (jint)getSpanSize;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXGridLayoutManager_LayoutParams)

/*!
 @brief Span Id for Views that are not laid out yet.
 */
inline jint ADXGridLayoutManager_LayoutParams_get_INVALID_SPAN_ID(void);
#define ADXGridLayoutManager_LayoutParams_INVALID_SPAN_ID -1
J2OBJC_STATIC_FIELD_CONSTANT(ADXGridLayoutManager_LayoutParams, INVALID_SPAN_ID, jint)

FOUNDATION_EXPORT void ADXGridLayoutManager_LayoutParams_initWithInt_withInt_(ADXGridLayoutManager_LayoutParams *self, jint width, jint height);

FOUNDATION_EXPORT ADXGridLayoutManager_LayoutParams *new_ADXGridLayoutManager_LayoutParams_initWithInt_withInt_(jint width, jint height) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGridLayoutManager_LayoutParams *create_ADXGridLayoutManager_LayoutParams_initWithInt_withInt_(jint width, jint height);

FOUNDATION_EXPORT void ADXGridLayoutManager_LayoutParams_initWithADViewGroup_MarginLayoutParams_(ADXGridLayoutManager_LayoutParams *self, ADViewGroup_MarginLayoutParams *source);

FOUNDATION_EXPORT ADXGridLayoutManager_LayoutParams *new_ADXGridLayoutManager_LayoutParams_initWithADViewGroup_MarginLayoutParams_(ADViewGroup_MarginLayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGridLayoutManager_LayoutParams *create_ADXGridLayoutManager_LayoutParams_initWithADViewGroup_MarginLayoutParams_(ADViewGroup_MarginLayoutParams *source);

FOUNDATION_EXPORT void ADXGridLayoutManager_LayoutParams_initWithADViewGroup_LayoutParams_(ADXGridLayoutManager_LayoutParams *self, ADViewGroup_LayoutParams *source);

FOUNDATION_EXPORT ADXGridLayoutManager_LayoutParams *new_ADXGridLayoutManager_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGridLayoutManager_LayoutParams *create_ADXGridLayoutManager_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *source);

FOUNDATION_EXPORT void ADXGridLayoutManager_LayoutParams_initWithADXRecyclerView_LayoutParams_(ADXGridLayoutManager_LayoutParams *self, ADXRecyclerView_LayoutParams *source);

FOUNDATION_EXPORT ADXGridLayoutManager_LayoutParams *new_ADXGridLayoutManager_LayoutParams_initWithADXRecyclerView_LayoutParams_(ADXRecyclerView_LayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXGridLayoutManager_LayoutParams *create_ADXGridLayoutManager_LayoutParams_initWithADXRecyclerView_LayoutParams_(ADXRecyclerView_LayoutParams *source);

J2OBJC_TYPE_LITERAL_HEADER(ADXGridLayoutManager_LayoutParams)

#endif

#pragma pop_macro("INCLUDE_ALL_GridLayoutManager")
