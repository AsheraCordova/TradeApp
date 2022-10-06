//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\ashera-demo-projects\ashera-phonegap-demo-project\demoapp1\custom_plugins\CustomPlugin\src\main\java\com\ashera\custom\CustomValidator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CustomValidator")
#ifdef RESTRICT_CustomValidator
#define INCLUDE_ALL_CustomValidator 0
#else
#define INCLUDE_ALL_CustomValidator 1
#endif
#undef RESTRICT_CustomValidator

#if !defined (ASCustomValidator_) && (INCLUDE_ALL_CustomValidator || defined(INCLUDE_ASCustomValidator))
#define ASCustomValidator_

#define RESTRICT_BaseValidator 1
#define INCLUDE_ASBaseValidator 1
#include "BaseValidator.h"

@class IOSObjectArray;
@protocol ASIWidget;
@protocol ASValidation;

@interface ASCustomValidator : ASBaseValidator

#pragma mark Public

- (instancetype)init;

- (NSString *)getDefaultErrorMessageWithASIWidget:(id<ASIWidget>)widget;

- (jboolean)isValidWithNSString:(NSString *)str
                  withASIWidget:(id<ASIWidget>)widget;

- (id<ASValidation>)newInstanceWithNSStringArray:(IOSObjectArray *)argument OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASCustomValidator)

FOUNDATION_EXPORT void ASCustomValidator_init(ASCustomValidator *self);

FOUNDATION_EXPORT ASCustomValidator *new_ASCustomValidator_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASCustomValidator *create_ASCustomValidator_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASCustomValidator)

@compatibility_alias ComAsheraCustomCustomValidator ASCustomValidator;

#endif

#pragma pop_macro("INCLUDE_ALL_CustomValidator")