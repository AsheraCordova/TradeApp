//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\webkit\HttpAuthHandler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_HttpAuthHandler")
#ifdef RESTRICT_HttpAuthHandler
#define INCLUDE_ALL_HttpAuthHandler 0
#else
#define INCLUDE_ALL_HttpAuthHandler 1
#endif
#undef RESTRICT_HttpAuthHandler

#if !defined (ADHttpAuthHandler_) && (INCLUDE_ALL_HttpAuthHandler || defined(INCLUDE_ADHttpAuthHandler))
#define ADHttpAuthHandler_

@interface ADHttpAuthHandler : NSObject

#pragma mark Public

- (instancetype)init;

- (void)cancel;

- (void)proceedWithNSString:(NSString *)username
               withNSString:(NSString *)password;

@end

J2OBJC_EMPTY_STATIC_INIT(ADHttpAuthHandler)

FOUNDATION_EXPORT void ADHttpAuthHandler_init(ADHttpAuthHandler *self);

FOUNDATION_EXPORT ADHttpAuthHandler *new_ADHttpAuthHandler_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADHttpAuthHandler *create_ADHttpAuthHandler_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADHttpAuthHandler)

@compatibility_alias RAndroidWebkitHttpAuthHandler ADHttpAuthHandler;

#endif

#pragma pop_macro("INCLUDE_ALL_HttpAuthHandler")
