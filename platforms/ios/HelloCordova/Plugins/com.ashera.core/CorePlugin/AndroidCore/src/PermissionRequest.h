//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\webkit\PermissionRequest.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_PermissionRequest")
#ifdef RESTRICT_PermissionRequest
#define INCLUDE_ALL_PermissionRequest 0
#else
#define INCLUDE_ALL_PermissionRequest 1
#endif
#undef RESTRICT_PermissionRequest

#if !defined (ADPermissionRequest_) && (INCLUDE_ALL_PermissionRequest || defined(INCLUDE_ADPermissionRequest))
#define ADPermissionRequest_

@class IOSLongArray;

@interface ADPermissionRequest : NSObject

#pragma mark Public

- (instancetype)init;

- (IOSLongArray *)getResources;

- (void)grantWithLongArray:(IOSLongArray *)resources;

@end

J2OBJC_EMPTY_STATIC_INIT(ADPermissionRequest)

FOUNDATION_EXPORT void ADPermissionRequest_init(ADPermissionRequest *self);

FOUNDATION_EXPORT ADPermissionRequest *new_ADPermissionRequest_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADPermissionRequest *create_ADPermissionRequest_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADPermissionRequest)

@compatibility_alias RAndroidWebkitPermissionRequest ADPermissionRequest;

#endif

#pragma pop_macro("INCLUDE_ALL_PermissionRequest")