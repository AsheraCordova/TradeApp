//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\app\ActivityManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ActivityManager")
#ifdef RESTRICT_ActivityManager
#define INCLUDE_ALL_ActivityManager 0
#else
#define INCLUDE_ALL_ActivityManager 1
#endif
#undef RESTRICT_ActivityManager

#if !defined (ADActivityManager_) && (INCLUDE_ALL_ActivityManager || defined(INCLUDE_ADActivityManager))
#define ADActivityManager_

@class ADContext;

@interface ADActivityManager : NSObject

#pragma mark Public

- (instancetype)initWithADContext:(ADContext *)context;

- (jint)getMemoryClass;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADActivityManager)

FOUNDATION_EXPORT void ADActivityManager_initWithADContext_(ADActivityManager *self, ADContext *context);

FOUNDATION_EXPORT ADActivityManager *new_ADActivityManager_initWithADContext_(ADContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADActivityManager *create_ADActivityManager_initWithADContext_(ADContext *context);

J2OBJC_TYPE_LITERAL_HEADER(ADActivityManager)

@compatibility_alias RAndroidAppActivityManager ADActivityManager;

#endif

#pragma pop_macro("INCLUDE_ALL_ActivityManager")
