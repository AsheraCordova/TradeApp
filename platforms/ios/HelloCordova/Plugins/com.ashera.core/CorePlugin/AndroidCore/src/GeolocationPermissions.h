//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\webkit\GeolocationPermissions.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GeolocationPermissions")
#ifdef RESTRICT_GeolocationPermissions
#define INCLUDE_ALL_GeolocationPermissions 0
#else
#define INCLUDE_ALL_GeolocationPermissions 1
#endif
#undef RESTRICT_GeolocationPermissions

#if !defined (ADGeolocationPermissions_) && (INCLUDE_ALL_GeolocationPermissions || defined(INCLUDE_ADGeolocationPermissions))
#define ADGeolocationPermissions_

@interface ADGeolocationPermissions : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADGeolocationPermissions)

FOUNDATION_EXPORT void ADGeolocationPermissions_init(ADGeolocationPermissions *self);

FOUNDATION_EXPORT ADGeolocationPermissions *new_ADGeolocationPermissions_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADGeolocationPermissions *create_ADGeolocationPermissions_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADGeolocationPermissions)

@compatibility_alias RAndroidWebkitGeolocationPermissions ADGeolocationPermissions;

#endif

#if !defined (ADGeolocationPermissions_Callback_) && (INCLUDE_ALL_GeolocationPermissions || defined(INCLUDE_ADGeolocationPermissions_Callback))
#define ADGeolocationPermissions_Callback_

@interface ADGeolocationPermissions_Callback : NSObject

#pragma mark Public

- (instancetype)init;

- (void)invokeWithNSString:(NSString *)origin
               withBoolean:(jboolean)b
               withBoolean:(jboolean)c;

@end

J2OBJC_EMPTY_STATIC_INIT(ADGeolocationPermissions_Callback)

FOUNDATION_EXPORT void ADGeolocationPermissions_Callback_init(ADGeolocationPermissions_Callback *self);

FOUNDATION_EXPORT ADGeolocationPermissions_Callback *new_ADGeolocationPermissions_Callback_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADGeolocationPermissions_Callback *create_ADGeolocationPermissions_Callback_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADGeolocationPermissions_Callback)

#endif

#pragma pop_macro("INCLUDE_ALL_GeolocationPermissions")
