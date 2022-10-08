//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSShutterBugPlugin\src\main\java\com\ashera\shutterbug\ImageLoader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ImageLoader")
#ifdef RESTRICT_ImageLoader
#define INCLUDE_ALL_ImageLoader 0
#else
#define INCLUDE_ALL_ImageLoader 1
#endif
#undef RESTRICT_ImageLoader

#if !defined (ASImageLoader_) && (INCLUDE_ALL_ImageLoader || defined(INCLUDE_ASImageLoader))
#define ASImageLoader_

#define RESTRICT_ShutterbugImageCallBack 1
#define INCLUDE_APShutterbugImageCallBack 1
#include "ShutterbugImageCallBack.h"

@class ADDrawable;
@protocol ADBitmap;
@protocol ASITarget;

@interface ASImageLoader : NSObject < APShutterbugImageCallBack >

#pragma mark Public

- (instancetype)initWithASITarget:(id<ASITarget>)target
                           withId:(id)error;

- (void)setImageBitmapWithADBitmap:(id<ADBitmap>)bitmap;

- (void)setImageDrawableWithADDrawable:(ADDrawable *)drawable;

- (void)showErrorWithNSString:(NSString *)url;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASImageLoader)

FOUNDATION_EXPORT void ASImageLoader_initWithASITarget_withId_(ASImageLoader *self, id<ASITarget> target, id error);

FOUNDATION_EXPORT ASImageLoader *new_ASImageLoader_initWithASITarget_withId_(id<ASITarget> target, id error) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASImageLoader *create_ASImageLoader_initWithASITarget_withId_(id<ASITarget> target, id error);

J2OBJC_TYPE_LITERAL_HEADER(ASImageLoader)

@compatibility_alias ComAsheraShutterbugImageLoader ASImageLoader;

#endif

#pragma pop_macro("INCLUDE_ALL_ImageLoader")
