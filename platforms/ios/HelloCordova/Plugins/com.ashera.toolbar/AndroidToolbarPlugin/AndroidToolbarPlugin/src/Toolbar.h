//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidToolBar\src\main\java\androidx\appcompat\widget\Toolbar.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Toolbar")
#ifdef RESTRICT_Toolbar
#define INCLUDE_ALL_Toolbar 0
#else
#define INCLUDE_ALL_Toolbar 1
#endif
#undef RESTRICT_Toolbar
#ifdef INCLUDE_ADXToolbar_LayoutParams
#define INCLUDE_ADXToolbar_ActionBar_LayoutParams 1
#endif

#if !defined (ADXToolbar_) && (INCLUDE_ALL_Toolbar || defined(INCLUDE_ADXToolbar))
#define ADXToolbar_

#define RESTRICT_ViewGroup 1
#define INCLUDE_ADViewGroup 1
#include "ViewGroup.h"

@class ADDrawable;
@class ADView;
@class ADViewGroup_LayoutParams;
@class ADXToolbar_LayoutParams;
@class ASBaseMeasurableImageView;

@interface ADXToolbar : ADViewGroup {
 @public
  jint mButtonGravity_;
}

#pragma mark Public

- (instancetype)init;

- (jint)getContentInsetEnd;

- (jint)getContentInsetLeft;

- (jint)getContentInsetRight;

- (jint)getContentInsetStart;

- (jint)getCurrentContentInsetEnd;

- (jint)getCurrentContentInsetLeft;

- (jint)getCurrentContentInsetRight;

- (jint)getCurrentContentInsetStart;

- (ADDrawable *)getNavigationIcon;

- (void)setContentInsetEndWithActionsWithInt:(jint)insetEndWithActions;

- (void)setContentInsetsAbsoluteWithInt:(jint)contentInsetLeft
                                withInt:(jint)contentInsetRight;

- (void)setContentInsetsRelativeWithInt:(jint)contentInsetStart
                                withInt:(jint)contentInsetEnd;

- (void)setContentInsetStartWithNavigationWithInt:(jint)insetStartWithNavigation;

- (void)setGravityWithInt:(jint)gravity;

- (void)setLogoViewWithADView:(ADView *)mLogoView;

- (void)setMaxButtonHeightWithInt:(jint)height;

- (void)setMenuViewWithADView:(ADView *)mMenuView;

- (void)setNavigationIconWithASBaseMeasurableImageView:(ASBaseMeasurableImageView *)mNavButtonView;

- (void)setSubtitleTextViewWithADView:(ADView *)mSubtitleTextView;

- (void)setTitleMarginWithInt:(jint)start
                      withInt:(jint)top
                      withInt:(jint)end
                      withInt:(jint)bottom;

- (void)setTitleMarginBottomWithInt:(jint)margin;

- (void)setTitleMarginEndWithInt:(jint)margin;

- (void)setTitleMarginStartWithInt:(jint)margin;

- (void)setTitleMarginTopWithInt:(jint)margin;

- (void)setTitleTextViewWithADView:(ADView *)mTitleTextView;

#pragma mark Protected

- (jboolean)checkLayoutParamsWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p;

- (ADXToolbar_LayoutParams *)generateDefaultLayoutParams;

- (ADXToolbar_LayoutParams *)generateLayoutParamsWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)p;

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)l
                    withInt:(jint)t
                    withInt:(jint)r
                    withInt:(jint)b;

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXToolbar)

FOUNDATION_EXPORT void ADXToolbar_init(ADXToolbar *self);

FOUNDATION_EXPORT ADXToolbar *new_ADXToolbar_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar *create_ADXToolbar_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXToolbar)

@compatibility_alias AndroidxAppcompatWidgetToolbar ADXToolbar;

#endif

#if !defined (ADXToolbar_OnMenuItemClickListener_) && (INCLUDE_ALL_Toolbar || defined(INCLUDE_ADXToolbar_OnMenuItemClickListener))
#define ADXToolbar_OnMenuItemClickListener_

@protocol ADMenuItem;

@protocol ADXToolbar_OnMenuItemClickListener < JavaObject >

- (jboolean)onMenuItemClickWithADMenuItem:(id<ADMenuItem>)item;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXToolbar_OnMenuItemClickListener)

J2OBJC_TYPE_LITERAL_HEADER(ADXToolbar_OnMenuItemClickListener)

#endif

#if !defined (ADXToolbar_ActionBar_LayoutParams_) && (INCLUDE_ALL_Toolbar || defined(INCLUDE_ADXToolbar_ActionBar_LayoutParams))
#define ADXToolbar_ActionBar_LayoutParams_

#define RESTRICT_ViewGroup 1
#define INCLUDE_ADViewGroup_MarginLayoutParams 1
#include "ViewGroup.h"

@class ADViewGroup_LayoutParams;

@interface ADXToolbar_ActionBar_LayoutParams : ADViewGroup_MarginLayoutParams {
 @public
  jint gravity_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)width
                    withInt:(jint)height;

- (instancetype)initWithInt:(jint)width
                    withInt:(jint)height
                    withInt:(jint)gravity;

- (instancetype)initWithADXToolbar_ActionBar_LayoutParams:(ADXToolbar_ActionBar_LayoutParams *)source;

- (instancetype)initWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)source;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADViewGroup_MarginLayoutParams:(ADViewGroup_MarginLayoutParams *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXToolbar_ActionBar_LayoutParams)

FOUNDATION_EXPORT void ADXToolbar_ActionBar_LayoutParams_initWithInt_withInt_(ADXToolbar_ActionBar_LayoutParams *self, jint width, jint height);

FOUNDATION_EXPORT ADXToolbar_ActionBar_LayoutParams *new_ADXToolbar_ActionBar_LayoutParams_initWithInt_withInt_(jint width, jint height) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar_ActionBar_LayoutParams *create_ADXToolbar_ActionBar_LayoutParams_initWithInt_withInt_(jint width, jint height);

FOUNDATION_EXPORT void ADXToolbar_ActionBar_LayoutParams_initWithInt_withInt_withInt_(ADXToolbar_ActionBar_LayoutParams *self, jint width, jint height, jint gravity);

FOUNDATION_EXPORT ADXToolbar_ActionBar_LayoutParams *new_ADXToolbar_ActionBar_LayoutParams_initWithInt_withInt_withInt_(jint width, jint height, jint gravity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar_ActionBar_LayoutParams *create_ADXToolbar_ActionBar_LayoutParams_initWithInt_withInt_withInt_(jint width, jint height, jint gravity);

FOUNDATION_EXPORT void ADXToolbar_ActionBar_LayoutParams_initWithADXToolbar_ActionBar_LayoutParams_(ADXToolbar_ActionBar_LayoutParams *self, ADXToolbar_ActionBar_LayoutParams *source);

FOUNDATION_EXPORT ADXToolbar_ActionBar_LayoutParams *new_ADXToolbar_ActionBar_LayoutParams_initWithADXToolbar_ActionBar_LayoutParams_(ADXToolbar_ActionBar_LayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar_ActionBar_LayoutParams *create_ADXToolbar_ActionBar_LayoutParams_initWithADXToolbar_ActionBar_LayoutParams_(ADXToolbar_ActionBar_LayoutParams *source);

FOUNDATION_EXPORT void ADXToolbar_ActionBar_LayoutParams_initWithADViewGroup_LayoutParams_(ADXToolbar_ActionBar_LayoutParams *self, ADViewGroup_LayoutParams *source);

FOUNDATION_EXPORT ADXToolbar_ActionBar_LayoutParams *new_ADXToolbar_ActionBar_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar_ActionBar_LayoutParams *create_ADXToolbar_ActionBar_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *source);

J2OBJC_TYPE_LITERAL_HEADER(ADXToolbar_ActionBar_LayoutParams)

#endif

#if !defined (ADXToolbar_LayoutParams_) && (INCLUDE_ALL_Toolbar || defined(INCLUDE_ADXToolbar_LayoutParams))
#define ADXToolbar_LayoutParams_

@class ADViewGroup_LayoutParams;
@class ADXToolbar_ActionBar_LayoutParams;

@interface ADXToolbar_LayoutParams : ADXToolbar_ActionBar_LayoutParams {
 @public
  jint mViewType_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)width
                    withInt:(jint)height;

- (instancetype)initWithInt:(jint)width
                    withInt:(jint)height
                    withInt:(jint)gravity;

- (instancetype)initWithADXToolbar_LayoutParams:(ADXToolbar_LayoutParams *)source;

- (instancetype)initWithADViewGroup_LayoutParams:(ADViewGroup_LayoutParams *)source;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithADXToolbar_ActionBar_LayoutParams:(ADXToolbar_ActionBar_LayoutParams *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXToolbar_LayoutParams)

inline jint ADXToolbar_LayoutParams_get_CUSTOM(void);
#define ADXToolbar_LayoutParams_CUSTOM 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXToolbar_LayoutParams, CUSTOM, jint)

inline jint ADXToolbar_LayoutParams_get_SYSTEM(void);
#define ADXToolbar_LayoutParams_SYSTEM 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXToolbar_LayoutParams, SYSTEM, jint)

inline jint ADXToolbar_LayoutParams_get_EXPANDED(void);
#define ADXToolbar_LayoutParams_EXPANDED 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXToolbar_LayoutParams, EXPANDED, jint)

FOUNDATION_EXPORT void ADXToolbar_LayoutParams_initWithInt_withInt_(ADXToolbar_LayoutParams *self, jint width, jint height);

FOUNDATION_EXPORT ADXToolbar_LayoutParams *new_ADXToolbar_LayoutParams_initWithInt_withInt_(jint width, jint height) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar_LayoutParams *create_ADXToolbar_LayoutParams_initWithInt_withInt_(jint width, jint height);

FOUNDATION_EXPORT void ADXToolbar_LayoutParams_initWithInt_withInt_withInt_(ADXToolbar_LayoutParams *self, jint width, jint height, jint gravity);

FOUNDATION_EXPORT ADXToolbar_LayoutParams *new_ADXToolbar_LayoutParams_initWithInt_withInt_withInt_(jint width, jint height, jint gravity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar_LayoutParams *create_ADXToolbar_LayoutParams_initWithInt_withInt_withInt_(jint width, jint height, jint gravity);

FOUNDATION_EXPORT void ADXToolbar_LayoutParams_initWithADXToolbar_LayoutParams_(ADXToolbar_LayoutParams *self, ADXToolbar_LayoutParams *source);

FOUNDATION_EXPORT ADXToolbar_LayoutParams *new_ADXToolbar_LayoutParams_initWithADXToolbar_LayoutParams_(ADXToolbar_LayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar_LayoutParams *create_ADXToolbar_LayoutParams_initWithADXToolbar_LayoutParams_(ADXToolbar_LayoutParams *source);

FOUNDATION_EXPORT void ADXToolbar_LayoutParams_initWithADViewGroup_LayoutParams_(ADXToolbar_LayoutParams *self, ADViewGroup_LayoutParams *source);

FOUNDATION_EXPORT ADXToolbar_LayoutParams *new_ADXToolbar_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar_LayoutParams *create_ADXToolbar_LayoutParams_initWithADViewGroup_LayoutParams_(ADViewGroup_LayoutParams *source);

J2OBJC_TYPE_LITERAL_HEADER(ADXToolbar_LayoutParams)

#endif

#if !defined (ADXToolbar_ActionBar_) && (INCLUDE_ALL_Toolbar || defined(INCLUDE_ADXToolbar_ActionBar))
#define ADXToolbar_ActionBar_

@interface ADXToolbar_ActionBar : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXToolbar_ActionBar)

FOUNDATION_EXPORT void ADXToolbar_ActionBar_init(ADXToolbar_ActionBar *self);

FOUNDATION_EXPORT ADXToolbar_ActionBar *new_ADXToolbar_ActionBar_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXToolbar_ActionBar *create_ADXToolbar_ActionBar_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXToolbar_ActionBar)

#endif

#pragma pop_macro("INCLUDE_ALL_Toolbar")