//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\widget\TableLayout.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LinearLayout.h"
#include "SparseBooleanArray.h"
#include "TableLayout.h"
#include "TableRow.h"
#include "View.h"
#include "ViewGroup.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"


@interface ADTableLayout () {
 @public
  IOSIntArray *mMaxWidths_;
  ADSparseBooleanArray *mStretchableColumns_;
  ADSparseBooleanArray *mShrinkableColumns_;
  ADSparseBooleanArray *mCollapsedColumns_;
  jboolean mShrinkAllColumns_;
  jboolean mStretchAllColumns_;
  jboolean mInitialized_;
}

- (void)requestRowsLayout;

- (void)findLargestCellsWithInt:(jint)widthMeasureSpec
                        withInt:(jint)heightMeasureSpec;

- (void)shrinkAndStretchColumnsWithInt:(jint)widthMeasureSpec;

- (void)mutateColumnsWidthWithADSparseBooleanArray:(ADSparseBooleanArray *)columns
                                       withBoolean:(jboolean)allColumns
                                           withInt:(jint)size
                                           withInt:(jint)totalWidth;

@end

J2OBJC_FIELD_SETTER(ADTableLayout, mMaxWidths_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ADTableLayout, mStretchableColumns_, ADSparseBooleanArray *)
J2OBJC_FIELD_SETTER(ADTableLayout, mShrinkableColumns_, ADSparseBooleanArray *)
J2OBJC_FIELD_SETTER(ADTableLayout, mCollapsedColumns_, ADSparseBooleanArray *)

__attribute__((unused)) static void ADTableLayout_requestRowsLayout(ADTableLayout *self);

__attribute__((unused)) static void ADTableLayout_findLargestCellsWithInt_withInt_(ADTableLayout *self, jint widthMeasureSpec, jint heightMeasureSpec);

__attribute__((unused)) static void ADTableLayout_shrinkAndStretchColumnsWithInt_(ADTableLayout *self, jint widthMeasureSpec);

__attribute__((unused)) static void ADTableLayout_mutateColumnsWidthWithADSparseBooleanArray_withBoolean_withInt_withInt_(ADTableLayout *self, ADSparseBooleanArray *columns, jboolean allColumns, jint size, jint totalWidth);

@implementation ADTableLayout

- (void)requestRowsLayout {
  ADTableLayout_requestRowsLayout(self);
}

- (void)setShrinkAllColumnsWithBoolean:(jboolean)shrinkAllColumns {
  mShrinkAllColumns_ = shrinkAllColumns;
}

- (void)setStretchAllColumnsWithBoolean:(jboolean)stretchAllColumns {
  mStretchAllColumns_ = stretchAllColumns;
}

- (void)setColumnCollapsedWithInt:(jint)columnIndex
                      withBoolean:(jboolean)isCollapsed {
  [((ADSparseBooleanArray *) nil_chk(mCollapsedColumns_)) putWithInt:columnIndex withBoolean:isCollapsed];
  jint count = [self getChildCount];
  for (jint i = 0; i < count; i++) {
    ADView *view = [self getChildAtWithInt:i];
    if ([view isKindOfClass:[ADTableRow class]]) {
      [((ADTableRow *) nil_chk(((ADTableRow *) view))) setColumnCollapsedWithInt:columnIndex withBoolean:isCollapsed];
    }
  }
  ADTableLayout_requestRowsLayout(self);
}

- (void)setColumnStretchableWithInt:(jint)columnIndex
                        withBoolean:(jboolean)isStretchable {
  [((ADSparseBooleanArray *) nil_chk(mStretchableColumns_)) putWithInt:columnIndex withBoolean:isStretchable];
  ADTableLayout_requestRowsLayout(self);
}

- (void)setColumnShrinkableWithInt:(jint)columnIndex
                       withBoolean:(jboolean)isShrinkable {
  [((ADSparseBooleanArray *) nil_chk(mShrinkableColumns_)) putWithInt:columnIndex withBoolean:isShrinkable];
  ADTableLayout_requestRowsLayout(self);
}

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec {
  [self measureVerticalWithInt:widthMeasureSpec withInt:heightMeasureSpec];
}

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)l
                    withInt:(jint)t
                    withInt:(jint)r
                    withInt:(jint)b {
  [self layoutVerticalWithInt:l withInt:t withInt:r withInt:b];
}

- (void)measureChildBeforeLayoutWithADView:(ADView *)child
                                   withInt:(jint)childIndex
                                   withInt:(jint)widthMeasureSpec
                                   withInt:(jint)totalWidth
                                   withInt:(jint)heightMeasureSpec
                                   withInt:(jint)totalHeight {
  if ([child isKindOfClass:[ADTableRow class]]) {
    [((ADTableRow *) nil_chk(((ADTableRow *) child))) setColumnsWidthConstraintsWithIntArray:mMaxWidths_];
  }
  [super measureChildBeforeLayoutWithADView:child withInt:childIndex withInt:widthMeasureSpec withInt:totalWidth withInt:heightMeasureSpec withInt:totalHeight];
}

- (void)measureVerticalWithInt:(jint)widthMeasureSpec
                       withInt:(jint)heightMeasureSpec {
  ADTableLayout_findLargestCellsWithInt_withInt_(self, widthMeasureSpec, heightMeasureSpec);
  ADTableLayout_shrinkAndStretchColumnsWithInt_(self, widthMeasureSpec);
  [super measureVerticalWithInt:widthMeasureSpec withInt:heightMeasureSpec];
}

- (void)findLargestCellsWithInt:(jint)widthMeasureSpec
                        withInt:(jint)heightMeasureSpec {
  ADTableLayout_findLargestCellsWithInt_withInt_(self, widthMeasureSpec, heightMeasureSpec);
}

- (void)shrinkAndStretchColumnsWithInt:(jint)widthMeasureSpec {
  ADTableLayout_shrinkAndStretchColumnsWithInt_(self, widthMeasureSpec);
}

- (void)mutateColumnsWidthWithADSparseBooleanArray:(ADSparseBooleanArray *)columns
                                       withBoolean:(jboolean)allColumns
                                           withInt:(jint)size
                                           withInt:(jint)totalWidth {
  ADTableLayout_mutateColumnsWidthWithADSparseBooleanArray_withBoolean_withInt_withInt_(self, columns, allColumns, size, totalWidth);
}

- (ADLinearLayout_LayoutParams *)generateDefaultLayoutParams {
  return create_ADTableLayout_LayoutParams_init();
}

- (jboolean)checkLayoutParamsWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p {
  return [p isKindOfClass:[ADTableLayout_LayoutParams class]];
}

- (ADLinearLayout_LayoutParams *)generateLayoutParamsWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p {
  return create_ADTableLayout_LayoutParams_initWithADViewGroup_LayoutParams_(p);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADTableLayout_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(mMaxWidths_);
  RELEASE_(mStretchableColumns_);
  RELEASE_(mShrinkableColumns_);
  RELEASE_(mCollapsedColumns_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 13, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 14, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 15, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 17, 18, -1, -1, -1, -1 },
    { NULL, "LADLinearLayout_LayoutParams;", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, 19, 20, -1, -1, -1, -1 },
    { NULL, "LADLinearLayout_LayoutParams;", 0x4, 21, 20, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(requestRowsLayout);
  methods[1].selector = @selector(setShrinkAllColumnsWithBoolean:);
  methods[2].selector = @selector(setStretchAllColumnsWithBoolean:);
  methods[3].selector = @selector(setColumnCollapsedWithInt:withBoolean:);
  methods[4].selector = @selector(setColumnStretchableWithInt:withBoolean:);
  methods[5].selector = @selector(setColumnShrinkableWithInt:withBoolean:);
  methods[6].selector = @selector(onMeasureWithInt:withInt:);
  methods[7].selector = @selector(onLayoutWithBoolean:withInt:withInt:withInt:withInt:);
  methods[8].selector = @selector(measureChildBeforeLayoutWithADView:withInt:withInt:withInt:withInt:withInt:);
  methods[9].selector = @selector(measureVerticalWithInt:withInt:);
  methods[10].selector = @selector(findLargestCellsWithInt:withInt:);
  methods[11].selector = @selector(shrinkAndStretchColumnsWithInt:);
  methods[12].selector = @selector(mutateColumnsWidthWithADSparseBooleanArray:withBoolean:withInt:withInt:);
  methods[13].selector = @selector(generateDefaultLayoutParams);
  methods[14].selector = @selector(checkLayoutParamsWithADViewGroup_LayoutParams:);
  methods[15].selector = @selector(generateLayoutParamsWithADViewGroup_LayoutParams:);
  methods[16].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mMaxWidths_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mStretchableColumns_", "LADSparseBooleanArray;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mShrinkableColumns_", "LADSparseBooleanArray;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mCollapsedColumns_", "LADSparseBooleanArray;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mShrinkAllColumns_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mStretchAllColumns_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mInitialized_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setShrinkAllColumns", "Z", "setStretchAllColumns", "setColumnCollapsed", "IZ", "setColumnStretchable", "setColumnShrinkable", "onMeasure", "II", "onLayout", "ZIIII", "measureChildBeforeLayout", "LADView;IIIII", "measureVertical", "findLargestCells", "shrinkAndStretchColumns", "I", "mutateColumnsWidth", "LADSparseBooleanArray;ZII", "checkLayoutParams", "LADViewGroup_LayoutParams;", "generateLayoutParams", "LADTableLayout_LayoutParams;" };
  static const J2ObjcClassInfo _ADTableLayout = { "TableLayout", "r.android.widget", ptrTable, methods, fields, 7, 0x1, 17, 7, -1, 22, -1, -1, -1 };
  return &_ADTableLayout;
}

@end

void ADTableLayout_requestRowsLayout(ADTableLayout *self) {
  if (self->mInitialized_) {
    jint count = [self getChildCount];
    for (jint i = 0; i < count; i++) {
      [((ADView *) nil_chk([self getChildAtWithInt:i])) requestLayout];
    }
  }
}

void ADTableLayout_findLargestCellsWithInt_withInt_(ADTableLayout *self, jint widthMeasureSpec, jint heightMeasureSpec) {
  jboolean firstRow = true;
  jint count = [self getChildCount];
  for (jint i = 0; i < count; i++) {
    ADView *child = [self getChildAtWithInt:i];
    if ([((ADView *) nil_chk(child)) getVisibility] == ADView_GONE) {
      continue;
    }
    if ([child isKindOfClass:[ADTableRow class]]) {
      ADTableRow *row = (ADTableRow *) child;
      ADViewGroup_LayoutParams *layoutParams = [row getLayoutParams];
      ((ADViewGroup_LayoutParams *) nil_chk(layoutParams))->height_ = ADViewGroup_LayoutParams_WRAP_CONTENT;
      IOSIntArray *widths = [row getColumnsWidthsWithInt:widthMeasureSpec withInt:heightMeasureSpec];
      jint newLength = ((IOSIntArray *) nil_chk(widths))->size_;
      if (firstRow) {
        if (self->mMaxWidths_ == nil || self->mMaxWidths_->size_ != newLength) {
          JreStrongAssignAndConsume(&self->mMaxWidths_, [IOSIntArray newArrayWithLength:newLength]);
        }
        JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(widths, 0, self->mMaxWidths_, 0, newLength);
        firstRow = false;
      }
      else {
        jint length = ((IOSIntArray *) nil_chk(self->mMaxWidths_))->size_;
        jint difference = newLength - length;
        if (difference > 0) {
          IOSIntArray *oldMaxWidths = self->mMaxWidths_;
          JreStrongAssignAndConsume(&self->mMaxWidths_, [IOSIntArray newArrayWithLength:newLength]);
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(oldMaxWidths, 0, self->mMaxWidths_, 0, oldMaxWidths->size_);
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(widths, oldMaxWidths->size_, self->mMaxWidths_, oldMaxWidths->size_, difference);
        }
        IOSIntArray *maxWidths = self->mMaxWidths_;
        length = JavaLangMath_minWithInt_withInt_(length, newLength);
        for (jint j = 0; j < length; j++) {
          *IOSIntArray_GetRef(nil_chk(maxWidths), j) = JavaLangMath_maxWithInt_withInt_(IOSIntArray_Get(maxWidths, j), IOSIntArray_Get(widths, j));
        }
      }
    }
  }
}

void ADTableLayout_shrinkAndStretchColumnsWithInt_(ADTableLayout *self, jint widthMeasureSpec) {
  if (self->mMaxWidths_ == nil) {
    return;
  }
  jint totalWidth = 0;
  {
    IOSIntArray *a__ = self->mMaxWidths_;
    jint const *b__ = a__->buffer_;
    jint const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      jint width = *b__++;
      totalWidth += width;
    }
  }
  jint size = ADView_MeasureSpec_getSizeWithInt_(widthMeasureSpec) - self->mPaddingLeft_ - self->mPaddingRight_;
  if ((totalWidth > size) && (self->mShrinkAllColumns_ || [((ADSparseBooleanArray *) nil_chk(self->mShrinkableColumns_)) size] > 0)) {
    ADTableLayout_mutateColumnsWidthWithADSparseBooleanArray_withBoolean_withInt_withInt_(self, self->mShrinkableColumns_, self->mShrinkAllColumns_, size, totalWidth);
  }
  else if ((totalWidth < size) && (self->mStretchAllColumns_ || [((ADSparseBooleanArray *) nil_chk(self->mStretchableColumns_)) size] > 0)) {
    ADTableLayout_mutateColumnsWidthWithADSparseBooleanArray_withBoolean_withInt_withInt_(self, self->mStretchableColumns_, self->mStretchAllColumns_, size, totalWidth);
  }
}

void ADTableLayout_mutateColumnsWidthWithADSparseBooleanArray_withBoolean_withInt_withInt_(ADTableLayout *self, ADSparseBooleanArray *columns, jboolean allColumns, jint size, jint totalWidth) {
  jint skipped = 0;
  IOSIntArray *maxWidths = self->mMaxWidths_;
  jint length = ((IOSIntArray *) nil_chk(maxWidths))->size_;
  jint count = allColumns ? length : [((ADSparseBooleanArray *) nil_chk(columns)) size];
  jint totalExtraSpace = size - totalWidth;
  jint extraSpace = JreIntDiv(totalExtraSpace, count);
  jint nbChildren = [self getChildCount];
  for (jint i = 0; i < nbChildren; i++) {
    ADView *child = JreRetainedLocalValue([self getChildAtWithInt:i]);
    if ([child isKindOfClass:[ADTableRow class]]) {
      [((ADView *) nil_chk(child)) forceLayout];
    }
  }
  if (!allColumns) {
    for (jint i = 0; i < count; i++) {
      jint column = [((ADSparseBooleanArray *) nil_chk(columns)) keyAtWithInt:i];
      if ([columns valueAtWithInt:i]) {
        if (column < length) {
          *IOSIntArray_GetRef(maxWidths, column) += extraSpace;
        }
        else {
          skipped++;
        }
      }
    }
  }
  else {
    for (jint i = 0; i < count; i++) {
      *IOSIntArray_GetRef(maxWidths, i) += extraSpace;
    }
    return;
  }
  if (skipped > 0 && skipped < count) {
    extraSpace = JreIntDiv(skipped * extraSpace, (count - skipped));
    for (jint i = 0; i < count; i++) {
      jint column = [((ADSparseBooleanArray *) nil_chk(columns)) keyAtWithInt:i];
      if ([columns valueAtWithInt:i] && column < length) {
        if (extraSpace > IOSIntArray_Get(maxWidths, column)) {
          *IOSIntArray_GetRef(maxWidths, column) = 0;
        }
        else {
          *IOSIntArray_GetRef(maxWidths, column) += extraSpace;
        }
      }
    }
  }
}

void ADTableLayout_init(ADTableLayout *self) {
  ADLinearLayout_init(self);
  if (self->mCollapsedColumns_ == nil) {
    JreStrongAssignAndConsume(&self->mCollapsedColumns_, new_ADSparseBooleanArray_init());
  }
  if (self->mStretchableColumns_ == nil) {
    JreStrongAssignAndConsume(&self->mStretchableColumns_, new_ADSparseBooleanArray_init());
  }
  if (self->mShrinkableColumns_ == nil) {
    JreStrongAssignAndConsume(&self->mShrinkableColumns_, new_ADSparseBooleanArray_init());
  }
  [self setOrientationWithInt:ADLinearLayout_VERTICAL];
  self->mInitialized_ = true;
}

ADTableLayout *new_ADTableLayout_init() {
  J2OBJC_NEW_IMPL(ADTableLayout, init)
}

ADTableLayout *create_ADTableLayout_init() {
  J2OBJC_CREATE_IMPL(ADTableLayout, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADTableLayout)

@implementation ADTableLayout_LayoutParams

- (instancetype)initWithInt:(jint)w
                    withInt:(jint)h {
  ADTableLayout_LayoutParams_initWithInt_withInt_(self, w, h);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADTableLayout_LayoutParams_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p {
  ADTableLayout_LayoutParams_initWithADViewGroup_LayoutParams_(self, p);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withInt:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(initWithADViewGroup_LayoutParams:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "II", "LADViewGroup_LayoutParams;", "LADTableLayout;" };
  static const J2ObjcClassInfo _ADTableLayout_LayoutParams = { "LayoutParams", "r.android.widget", ptrTable, methods, NULL, 7, 0x9, 3, 0, 2, -1, -1, -1, -1 };
  return &_ADTableLayout_LayoutParams;
}

@end

void ADTableLayout_LayoutParams_initWithInt_withInt_(ADTableLayout_LayoutParams *self, jint w, jint h) {
  ADLinearLayout_LayoutParams_initWithInt_withInt_(self, ADViewGroup_LayoutParams_MATCH_PARENT, h);
}

ADTableLayout_LayoutParams *new_ADTableLayout_LayoutParams_initWithInt_withInt_(jint w, jint h) {
  J2OBJC_NEW_IMPL(ADTableLayout_LayoutParams, initWithInt_withInt_, w, h)
}

ADTableLayout_LayoutParams *create_ADTableLayout_LayoutParams_initWithInt_withInt_(jint w, jint h) {
  J2OBJC_CREATE_IMPL(ADTableLayout_LayoutParams, initWithInt_withInt_, w, h)
}

void ADTableLayout_LayoutParams_init(ADTableLayout_LayoutParams *self) {
  ADLinearLayout_LayoutParams_initWithInt_withInt_(self, ADViewGroup_LayoutParams_MATCH_PARENT, ADViewGroup_LayoutParams_WRAP_CONTENT);
}

ADTableLayout_LayoutParams *new_ADTableLayout_LayoutParams_init() {
  J2OBJC_NEW_IMPL(ADTableLayout_LayoutParams, init)
}

ADTableLayout_LayoutParams *create_ADTableLayout_LayoutParams_init() {
  J2OBJC_CREATE_IMPL(ADTableLayout_LayoutParams, init)
}

void ADTableLayout_LayoutParams_initWithADViewGroup_LayoutParams_(ADTableLayout_LayoutParams *self, ADViewGroup_LayoutParams *p) {
  ADLinearLayout_LayoutParams_initWithADViewGroup_LayoutParams_(self, p);
  self->width_ = ADViewGroup_LayoutParams_MATCH_PARENT;
}

ADTableLayout_LayoutParams *new_ADTableLayout_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *p) {
  J2OBJC_NEW_IMPL(ADTableLayout_LayoutParams, initWithADViewGroup_LayoutParams_, p)
}

ADTableLayout_LayoutParams *create_ADTableLayout_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *p) {
  J2OBJC_CREATE_IMPL(ADTableLayout_LayoutParams, initWithADViewGroup_LayoutParams_, p)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADTableLayout_LayoutParams)