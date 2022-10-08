//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\com\android\internal\util\Preconditions.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Preconditions")
#ifdef RESTRICT_Preconditions
#define INCLUDE_ALL_Preconditions 0
#else
#define INCLUDE_ALL_Preconditions 1
#endif
#undef RESTRICT_Preconditions

#if !defined (ADPreconditions_) && (INCLUDE_ALL_Preconditions || defined(INCLUDE_ADPreconditions))
#define ADPreconditions_

@interface ADPreconditions : NSObject

#pragma mark Public

- (instancetype)init;

+ (jfloat)checkArgumentInRangeWithFloat:(jfloat)value
                              withFloat:(jfloat)lower
                              withFloat:(jfloat)upper
                           withNSString:(NSString *)valueName;

+ (jint)checkArgumentInRangeWithInt:(jint)value
                            withInt:(jint)lower
                            withInt:(jint)upper
                       withNSString:(NSString *)valueName;

+ (jint)checkArgumentNonnegativeWithInt:(jint)value;

+ (jint)checkArgumentNonnegativeWithInt:(jint)value
                           withNSString:(NSString *)errorMessage;

@end

J2OBJC_EMPTY_STATIC_INIT(ADPreconditions)

FOUNDATION_EXPORT void ADPreconditions_init(ADPreconditions *self);

FOUNDATION_EXPORT ADPreconditions *new_ADPreconditions_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADPreconditions *create_ADPreconditions_init(void);

FOUNDATION_EXPORT jfloat ADPreconditions_checkArgumentInRangeWithFloat_withFloat_withFloat_withNSString_(jfloat value, jfloat lower, jfloat upper, NSString *valueName);

FOUNDATION_EXPORT jint ADPreconditions_checkArgumentInRangeWithInt_withInt_withInt_withNSString_(jint value, jint lower, jint upper, NSString *valueName);

FOUNDATION_EXPORT jint ADPreconditions_checkArgumentNonnegativeWithInt_withNSString_(jint value, NSString *errorMessage);

FOUNDATION_EXPORT jint ADPreconditions_checkArgumentNonnegativeWithInt_(jint value);

J2OBJC_TYPE_LITERAL_HEADER(ADPreconditions)

@compatibility_alias RComAndroidInternalUtilPreconditions ADPreconditions;

#endif

#pragma pop_macro("INCLUDE_ALL_Preconditions")