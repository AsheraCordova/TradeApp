//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSConverter\src\main\java\com\ashera\converter\TintColorCommandConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_TintColorCommandConverter")
#ifdef RESTRICT_TintColorCommandConverter
#define INCLUDE_ALL_TintColorCommandConverter 0
#else
#define INCLUDE_ALL_TintColorCommandConverter 1
#endif
#undef RESTRICT_TintColorCommandConverter

#if !defined (ASTintColorCommandConverter_) && (INCLUDE_ALL_TintColorCommandConverter || defined(INCLUDE_ASTintColorCommandConverter))
#define ASTintColorCommandConverter_

#define RESTRICT_BaseAttributeCommand 1
#define INCLUDE_ASBaseAttributeCommand 1
#include "BaseAttributeCommand.h"

@class IOSObjectArray;
@protocol ASAttributeCommand;
@protocol ASIWidget;

@interface ASTintColorCommandConverter : ASBaseAttributeCommand

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

J2OBJC_EMPTY_STATIC_INIT(ASTintColorCommandConverter)

FOUNDATION_EXPORT void ASTintColorCommandConverter_initWithNSString_(ASTintColorCommandConverter *self, NSString *id_);

FOUNDATION_EXPORT ASTintColorCommandConverter *new_ASTintColorCommandConverter_initWithNSString_(NSString *id_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASTintColorCommandConverter *create_ASTintColorCommandConverter_initWithNSString_(NSString *id_);

J2OBJC_TYPE_LITERAL_HEADER(ASTintColorCommandConverter)

@compatibility_alias ComAsheraConverterTintColorCommandConverter ASTintColorCommandConverter;

#endif

#pragma pop_macro("INCLUDE_ALL_TintColorCommandConverter")