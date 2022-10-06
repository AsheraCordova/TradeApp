//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\validations\Pattern.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Pattern")
#ifdef RESTRICT_Pattern
#define INCLUDE_ALL_Pattern 0
#else
#define INCLUDE_ALL_Pattern 1
#endif
#undef RESTRICT_Pattern

#if !defined (ASPattern_) && (INCLUDE_ALL_Pattern || defined(INCLUDE_ASPattern))
#define ASPattern_

#define RESTRICT_BaseValidator 1
#define INCLUDE_ASBaseValidator 1
#include "BaseValidator.h"

@class IOSObjectArray;
@protocol ASIWidget;
@protocol ASValidation;

/*!
 @brief Class for Alphanumeric form validation
 */
@interface ASPattern : ASBaseValidator

#pragma mark Public

- (instancetype)init;

/*!
 @param context context
 @return error message string
 */
- (NSString *)getDefaultErrorMessageWithASIWidget:(id<ASIWidget>)widget;

/*!
 @brief checks if the field is alphanumeric value
 @param text text field
 @return isValid true or false
 */
- (jboolean)isValidWithNSString:(NSString *)text
                  withASIWidget:(id<ASIWidget>)widget;

- (id<ASValidation>)newInstanceWithNSStringArray:(IOSObjectArray *)argument OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASPattern)

FOUNDATION_EXPORT void ASPattern_init(ASPattern *self);

FOUNDATION_EXPORT ASPattern *new_ASPattern_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASPattern *create_ASPattern_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASPattern)

@compatibility_alias ComAsheraValidationsPattern ASPattern;

#endif

#pragma pop_macro("INCLUDE_ALL_Pattern")