//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\widget\HorizontalScrollView.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_HorizontalScrollView")
#ifdef RESTRICT_HorizontalScrollView
#define INCLUDE_ALL_HorizontalScrollView 0
#else
#define INCLUDE_ALL_HorizontalScrollView 1
#endif
#undef RESTRICT_HorizontalScrollView

#if !defined (ADHorizontalScrollView_) && (INCLUDE_ALL_HorizontalScrollView || defined(INCLUDE_ADHorizontalScrollView))
#define ADHorizontalScrollView_

#define RESTRICT_FrameLayout 1
#define INCLUDE_ADFrameLayout 1
#include "FrameLayout.h"

@class ADView;

@interface ADHorizontalScrollView : ADFrameLayout

#pragma mark Public

- (instancetype)init;

- (void)adjustPaddingIfScrollBarPresentWithInt:(jint)widthMeasureSpec
                                       withInt:(jint)heightMeasureSpec
                                       withInt:(jint)thumbHeight;

- (jboolean)isFillViewport;

- (void)requestLayout;

- (void)setFillViewportWithBoolean:(jboolean)fillViewport;

#pragma mark Protected

- (jint)computeHorizontalScrollRange;

- (void)measureChildWithADView:(ADView *)child
                       withInt:(jint)parentWidthMeasureSpec
                       withInt:(jint)parentHeightMeasureSpec;

- (void)measureChildWithMarginsWithADView:(ADView *)child
                                  withInt:(jint)parentWidthMeasureSpec
                                  withInt:(jint)widthUsed
                                  withInt:(jint)parentHeightMeasureSpec
                                  withInt:(jint)heightUsed;

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec;

@end

J2OBJC_EMPTY_STATIC_INIT(ADHorizontalScrollView)

FOUNDATION_EXPORT void ADHorizontalScrollView_init(ADHorizontalScrollView *self);

FOUNDATION_EXPORT ADHorizontalScrollView *new_ADHorizontalScrollView_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADHorizontalScrollView *create_ADHorizontalScrollView_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADHorizontalScrollView)

@compatibility_alias RAndroidWidgetHorizontalScrollView ADHorizontalScrollView;

#endif

#pragma pop_macro("INCLUDE_ALL_HorizontalScrollView")