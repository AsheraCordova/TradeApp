//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\widget\TableRow.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_TableRow")
#ifdef RESTRICT_TableRow
#define INCLUDE_ALL_TableRow 0
#else
#define INCLUDE_ALL_TableRow 1
#endif
#undef RESTRICT_TableRow

#if !defined (ADTableRow_) && (INCLUDE_ALL_TableRow || defined(INCLUDE_ADTableRow))
#define ADTableRow_

#define RESTRICT_LinearLayout 1
#define INCLUDE_ADLinearLayout 1
#include "LinearLayout.h"

@class ADContext;
@class ADLinearLayout_LayoutParams;
@class ADView;
@class ADViewGroup_LayoutParams;
@class IOSIntArray;

@interface ADTableRow : ADLinearLayout

#pragma mark Public

- (instancetype)init;

- (ADView *)getVirtualChildAtWithInt:(jint)i;

- (jint)getVirtualChildCount;

#pragma mark Protected

- (jboolean)checkLayoutParamsWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p;

- (ADLinearLayout_LayoutParams *)generateDefaultLayoutParams;

- (ADLinearLayout_LayoutParams *)generateLayoutParamsWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p;

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)l
                    withInt:(jint)t
                    withInt:(jint)r
                    withInt:(jint)b;

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec;

#pragma mark Package-Private

- (jint)getChildrenSkipCountWithADView:(ADView *)child
                               withInt:(jint)index;

- (IOSIntArray *)getColumnsWidthsWithInt:(jint)widthMeasureSpec
                                 withInt:(jint)heightMeasureSpec;

- (jint)getLocationOffsetWithADView:(ADView *)child;

- (jint)getNextLocationOffsetWithADView:(ADView *)child;

- (void)measureChildBeforeLayoutWithADView:(ADView *)child
                                   withInt:(jint)childIndex
                                   withInt:(jint)widthMeasureSpec
                                   withInt:(jint)totalWidth
                                   withInt:(jint)heightMeasureSpec
                                   withInt:(jint)totalHeight;

- (jint)measureNullChildWithInt:(jint)childIndex;

- (void)setColumnCollapsedWithInt:(jint)columnIndex
                      withBoolean:(jboolean)collapsed;

- (void)setColumnsWidthConstraintsWithIntArray:(IOSIntArray *)columnWidths;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADContext:(ADContext *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADTableRow)

FOUNDATION_EXPORT void ADTableRow_init(ADTableRow *self);

FOUNDATION_EXPORT ADTableRow *new_ADTableRow_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADTableRow *create_ADTableRow_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADTableRow)

@compatibility_alias RAndroidWidgetTableRow ADTableRow;

#endif

#if !defined (ADTableRow_LayoutParams_) && (INCLUDE_ALL_TableRow || defined(INCLUDE_ADTableRow_LayoutParams))
#define ADTableRow_LayoutParams_

#define RESTRICT_LinearLayout 1
#define INCLUDE_ADLinearLayout_LayoutParams 1
#include "LinearLayout.h"

@class ADViewGroup_LayoutParams;

@interface ADTableRow_LayoutParams : ADLinearLayout_LayoutParams {
 @public
  jint column_;
  jint span_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)w
                    withInt:(jint)h;

- (instancetype)initWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADLinearLayout_LayoutParams:(ADLinearLayout_LayoutParams *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADTableRow_LayoutParams)

FOUNDATION_EXPORT void ADTableRow_LayoutParams_initWithInt_withInt_(ADTableRow_LayoutParams *self, jint w, jint h);

FOUNDATION_EXPORT ADTableRow_LayoutParams *new_ADTableRow_LayoutParams_initWithInt_withInt_(jint w, jint h) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADTableRow_LayoutParams *create_ADTableRow_LayoutParams_initWithInt_withInt_(jint w, jint h);

FOUNDATION_EXPORT void ADTableRow_LayoutParams_init(ADTableRow_LayoutParams *self);

FOUNDATION_EXPORT ADTableRow_LayoutParams *new_ADTableRow_LayoutParams_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADTableRow_LayoutParams *create_ADTableRow_LayoutParams_init(void);

FOUNDATION_EXPORT void ADTableRow_LayoutParams_initWithADViewGroup_LayoutParams_(ADTableRow_LayoutParams *self, ADViewGroup_LayoutParams *p);

FOUNDATION_EXPORT ADTableRow_LayoutParams *new_ADTableRow_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *p) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADTableRow_LayoutParams *create_ADTableRow_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *p);

J2OBJC_TYPE_LITERAL_HEADER(ADTableRow_LayoutParams)

#endif

#pragma pop_macro("INCLUDE_ALL_TableRow")
