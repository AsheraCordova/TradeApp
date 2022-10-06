//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\widget\ScrollView.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ScrollView")
#ifdef RESTRICT_ScrollView
#define INCLUDE_ALL_ScrollView 0
#else
#define INCLUDE_ALL_ScrollView 1
#endif
#undef RESTRICT_ScrollView

#if !defined (ADScrollView_) && (INCLUDE_ALL_ScrollView || defined(INCLUDE_ADScrollView))
#define ADScrollView_

#define RESTRICT_FrameLayout 1
#define INCLUDE_ADFrameLayout 1
#include "FrameLayout.h"

@class ADView;

@interface ADScrollView : ADFrameLayout

#pragma mark Public

- (instancetype)init;

- (void)adjustPaddingIfScrollBarPresentWithInt:(jint)widthMeasureSpec
                                       withInt:(jint)heightMeasureSpec
                                       withInt:(jint)thumbWidth;

- (jboolean)isFillViewport;

- (void)requestLayout;

- (void)setFillViewportWithBoolean:(jboolean)fillViewport;

#pragma mark Protected

- (jint)computeVerticalScrollRange;

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

J2OBJC_EMPTY_STATIC_INIT(ADScrollView)

inline jint ADScrollView_get_ANIMATED_SCROLL_GAP(void);
#define ADScrollView_ANIMATED_SCROLL_GAP 250
J2OBJC_STATIC_FIELD_CONSTANT(ADScrollView, ANIMATED_SCROLL_GAP, jint)

FOUNDATION_EXPORT void ADScrollView_init(ADScrollView *self);

FOUNDATION_EXPORT ADScrollView *new_ADScrollView_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADScrollView *create_ADScrollView_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADScrollView)

@compatibility_alias RAndroidWidgetScrollView ADScrollView;

#endif

#pragma pop_macro("INCLUDE_ALL_ScrollView")
