//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\widget\ListView.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ListView")
#ifdef RESTRICT_ListView
#define INCLUDE_ALL_ListView 0
#else
#define INCLUDE_ALL_ListView 1
#endif
#undef RESTRICT_ListView

#if !defined (ADListView_) && (INCLUDE_ALL_ListView || defined(INCLUDE_ADListView))
#define ADListView_

#define RESTRICT_AbsListView 1
#define INCLUDE_ADAbsListView 1
#include "AbsListView.h"

@class ADView;
@protocol ADListAdapter;

@interface ADListView : ADAbsListView

#pragma mark Public

- (instancetype)init;

- (void)measureChildWithADView:(ADView *)child;

- (void)setAdapterWithADListAdapter:(id<ADListAdapter>)adapter;

#pragma mark Protected

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec;

@end

J2OBJC_EMPTY_STATIC_INIT(ADListView)

FOUNDATION_EXPORT void ADListView_init(ADListView *self);

FOUNDATION_EXPORT ADListView *new_ADListView_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADListView *create_ADListView_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADListView)

@compatibility_alias RAndroidWidgetListView ADListView;

#endif

#pragma pop_macro("INCLUDE_ALL_ListView")