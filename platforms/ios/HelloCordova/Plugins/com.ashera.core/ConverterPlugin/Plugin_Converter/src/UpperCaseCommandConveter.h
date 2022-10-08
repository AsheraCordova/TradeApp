//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\converter\UpperCaseCommandConveter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_UpperCaseCommandConveter")
#ifdef RESTRICT_UpperCaseCommandConveter
#define INCLUDE_ALL_UpperCaseCommandConveter 0
#else
#define INCLUDE_ALL_UpperCaseCommandConveter 1
#endif
#undef RESTRICT_UpperCaseCommandConveter

#if !defined (ASUpperCaseCommandConveter_) && (INCLUDE_ALL_UpperCaseCommandConveter || defined(INCLUDE_ASUpperCaseCommandConveter))
#define ASUpperCaseCommandConveter_

#define RESTRICT_BaseAttributeCommand 1
#define INCLUDE_ASBaseAttributeCommand 1
#include "BaseAttributeCommand.h"

@class IOSObjectArray;
@protocol ASAttributeCommand;
@protocol ASIWidget;

@interface ASUpperCaseCommandConveter : ASBaseAttributeCommand

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)id_;

- (id)modifyValueWithASIWidget:(id<ASIWidget>)widget
                        withId:(id)nativeView
                  withNSString:(NSString *)phase
                  withNSString:(NSString *)attributeName
                        withId:(id)value;

- (id<ASAttributeCommand>)newInstanceWithNSObjectArray:(IOSObjectArray *)args OBJC_METHOD_FAMILY_NONE;

- (void)updateArgsWithNSObjectArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(ASUpperCaseCommandConveter)

FOUNDATION_EXPORT void ASUpperCaseCommandConveter_initWithNSString_(ASUpperCaseCommandConveter *self, NSString *id_);

FOUNDATION_EXPORT ASUpperCaseCommandConveter *new_ASUpperCaseCommandConveter_initWithNSString_(NSString *id_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASUpperCaseCommandConveter *create_ASUpperCaseCommandConveter_initWithNSString_(NSString *id_);

J2OBJC_TYPE_LITERAL_HEADER(ASUpperCaseCommandConveter)

@compatibility_alias ComAsheraConverterUpperCaseCommandConveter ASUpperCaseCommandConveter;

#endif

#pragma pop_macro("INCLUDE_ALL_UpperCaseCommandConveter")
