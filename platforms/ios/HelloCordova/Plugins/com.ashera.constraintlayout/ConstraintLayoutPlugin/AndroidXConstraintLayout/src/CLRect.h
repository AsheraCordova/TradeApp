//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\utils\CLRect.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CLRect")
#ifdef RESTRICT_CLRect
#define INCLUDE_ALL_CLRect 0
#else
#define INCLUDE_ALL_CLRect 1
#endif
#undef RESTRICT_CLRect

#if !defined (ADXCLRect_) && (INCLUDE_ALL_CLRect || defined(INCLUDE_ADXCLRect))
#define ADXCLRect_

@interface ADXCLRect : NSObject {
 @public
  jint bottom_;
  jint left_;
  jint right_;
  jint top_;
}

#pragma mark Public

- (instancetype)init;

- (jint)height;

- (jint)width;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXCLRect)

FOUNDATION_EXPORT void ADXCLRect_init(ADXCLRect *self);

FOUNDATION_EXPORT ADXCLRect *new_ADXCLRect_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCLRect *create_ADXCLRect_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXCLRect)

@compatibility_alias AndroidxConstraintlayoutCoreMotionUtilsCLRect ADXCLRect;

#endif

#pragma pop_macro("INCLUDE_ALL_CLRect")
