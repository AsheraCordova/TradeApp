//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\widget\bus\EventBusHandler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EventBusHandler")
#ifdef RESTRICT_EventBusHandler
#define INCLUDE_ALL_EventBusHandler 0
#else
#define INCLUDE_ALL_EventBusHandler 1
#endif
#undef RESTRICT_EventBusHandler

#if !defined (ASEventBusHandler_) && (INCLUDE_ALL_EventBusHandler || defined(INCLUDE_ASEventBusHandler))
#define ASEventBusHandler_

@protocol ASEventBusHandler_OnCompletedListener;

@interface ASEventBusHandler : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)type;

- (NSString *)getType;

/*!
 @brief Executes this handler with a given payload
 @param payload
 */
- (void)performWithId:(id)payload;

/*!
 @brief Executes this handler with a given payload and 
  a listener that will be notified when this operation is complete
 @param payload
 @param listener
 */
- (void)performWithId:(id)payload
withASEventBusHandler_OnCompletedListener:(id<ASEventBusHandler_OnCompletedListener>)listener;

#pragma mark Protected

- (void)completedWithASEventBusHandler_OnCompletedListener:(id<ASEventBusHandler_OnCompletedListener>)listener;

- (void)doPerformWithId:(id)payload;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASEventBusHandler)

FOUNDATION_EXPORT void ASEventBusHandler_initWithNSString_(ASEventBusHandler *self, NSString *type);

J2OBJC_TYPE_LITERAL_HEADER(ASEventBusHandler)

@compatibility_alias ComAsheraWidgetBusEventBusHandler ASEventBusHandler;

#endif

#if !defined (ASEventBusHandler_OnCompletedListener_) && (INCLUDE_ALL_EventBusHandler || defined(INCLUDE_ASEventBusHandler_OnCompletedListener))
#define ASEventBusHandler_OnCompletedListener_

@protocol ASEventBusHandler_OnCompletedListener < JavaObject >

- (void)onCompleted;

@end

J2OBJC_EMPTY_STATIC_INIT(ASEventBusHandler_OnCompletedListener)

J2OBJC_TYPE_LITERAL_HEADER(ASEventBusHandler_OnCompletedListener)

#endif

#pragma pop_macro("INCLUDE_ALL_EventBusHandler")
