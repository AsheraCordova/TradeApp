//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSConverter\src\main\java\com\ashera\converter\DrawImageOrColorCommandConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_DrawImageOrColorCommandConverter")
#ifdef RESTRICT_DrawImageOrColorCommandConverter
#define INCLUDE_ALL_DrawImageOrColorCommandConverter 0
#else
#define INCLUDE_ALL_DrawImageOrColorCommandConverter 1
#endif
#undef RESTRICT_DrawImageOrColorCommandConverter

#if !defined (ASDrawImageOrColorCommandConverter_) && (INCLUDE_ALL_DrawImageOrColorCommandConverter || defined(INCLUDE_ASDrawImageOrColorCommandConverter))
#define ASDrawImageOrColorCommandConverter_

#define RESTRICT_BaseAttributeCommand 1
#define INCLUDE_ASBaseAttributeCommand 1
#include "BaseAttributeCommand.h"

@class IOSObjectArray;
@protocol ASAttributeCommand;
@protocol ASIWidget;

@interface ASDrawImageOrColorCommandConverter : ASBaseAttributeCommand

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)id_;

- (jboolean)executeAfterPostMeasure;

- (id)getValueWithNSString:(NSString *)attributeName;

- (id)modifyValueWithASIWidget:(id<ASIWidget>)widget
                        withId:(id)nativeView
                  withNSString:(NSString *)phase
                  withNSString:(NSString *)attributeName
                        withId:(id)value;

- (id<ASAttributeCommand>)newInstanceWithNSObjectArray:(IOSObjectArray *)args OBJC_METHOD_FAMILY_NONE;

- (void)updateArgsWithNSObjectArray:(IOSObjectArray *)args;

- (void)updatePhaseArgsWithNSObjectArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(ASDrawImageOrColorCommandConverter)

FOUNDATION_EXPORT void ASDrawImageOrColorCommandConverter_initWithNSString_(ASDrawImageOrColorCommandConverter *self, NSString *id_);

FOUNDATION_EXPORT ASDrawImageOrColorCommandConverter *new_ASDrawImageOrColorCommandConverter_initWithNSString_(NSString *id_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASDrawImageOrColorCommandConverter *create_ASDrawImageOrColorCommandConverter_initWithNSString_(NSString *id_);

J2OBJC_TYPE_LITERAL_HEADER(ASDrawImageOrColorCommandConverter)

@compatibility_alias ComAsheraConverterDrawImageOrColorCommandConverter ASDrawImageOrColorCommandConverter;

#endif

#pragma pop_macro("INCLUDE_ALL_DrawImageOrColorCommandConverter")