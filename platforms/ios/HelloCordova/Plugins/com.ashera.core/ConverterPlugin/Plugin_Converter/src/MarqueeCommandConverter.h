//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\converter\MarqueeCommandConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MarqueeCommandConverter")
#ifdef RESTRICT_MarqueeCommandConverter
#define INCLUDE_ALL_MarqueeCommandConverter 0
#else
#define INCLUDE_ALL_MarqueeCommandConverter 1
#endif
#undef RESTRICT_MarqueeCommandConverter

#if !defined (ASMarqueeCommandConverter_) && (INCLUDE_ALL_MarqueeCommandConverter || defined(INCLUDE_ASMarqueeCommandConverter))
#define ASMarqueeCommandConverter_

#define RESTRICT_BaseAttributeCommand 1
#define INCLUDE_ASBaseAttributeCommand 1
#include "BaseAttributeCommand.h"

@class IOSObjectArray;
@protocol ASAttributeCommand;
@protocol ASIWidget;

@interface ASMarqueeCommandConverter : ASBaseAttributeCommand

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)id_;

- (instancetype)initWithNSString:(NSString *)id_
                         withInt:(jint)whiteSpace
                         withInt:(jint)offset
                    withNSString:(NSString *)direction;

- (jint)getOffset;

- (id)modifyValueWithASIWidget:(id<ASIWidget>)widget
                        withId:(id)nativeView
                  withNSString:(NSString *)phase
                  withNSString:(NSString *)attributeName
                        withId:(id)value;

- (id<ASAttributeCommand>)newInstanceWithNSObjectArray:(IOSObjectArray *)args OBJC_METHOD_FAMILY_NONE;

- (void)updateArgsWithNSObjectArray:(IOSObjectArray *)args;

@end

J2OBJC_EMPTY_STATIC_INIT(ASMarqueeCommandConverter)

FOUNDATION_EXPORT void ASMarqueeCommandConverter_initWithNSString_(ASMarqueeCommandConverter *self, NSString *id_);

FOUNDATION_EXPORT ASMarqueeCommandConverter *new_ASMarqueeCommandConverter_initWithNSString_(NSString *id_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASMarqueeCommandConverter *create_ASMarqueeCommandConverter_initWithNSString_(NSString *id_);

FOUNDATION_EXPORT void ASMarqueeCommandConverter_initWithNSString_withInt_withInt_withNSString_(ASMarqueeCommandConverter *self, NSString *id_, jint whiteSpace, jint offset, NSString *direction);

FOUNDATION_EXPORT ASMarqueeCommandConverter *new_ASMarqueeCommandConverter_initWithNSString_withInt_withInt_withNSString_(NSString *id_, jint whiteSpace, jint offset, NSString *direction) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASMarqueeCommandConverter *create_ASMarqueeCommandConverter_initWithNSString_withInt_withInt_withNSString_(NSString *id_, jint whiteSpace, jint offset, NSString *direction);

J2OBJC_TYPE_LITERAL_HEADER(ASMarqueeCommandConverter)

@compatibility_alias ComAsheraConverterMarqueeCommandConverter ASMarqueeCommandConverter;

#endif

#pragma pop_macro("INCLUDE_ALL_MarqueeCommandConverter")
