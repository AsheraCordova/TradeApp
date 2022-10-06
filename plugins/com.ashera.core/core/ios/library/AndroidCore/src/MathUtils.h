//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\util\MathUtils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MathUtils")
#ifdef RESTRICT_MathUtils
#define INCLUDE_ALL_MathUtils 0
#else
#define INCLUDE_ALL_MathUtils 1
#endif
#undef RESTRICT_MathUtils

#if !defined (ADMathUtils_) && (INCLUDE_ALL_MathUtils || defined(INCLUDE_ADMathUtils))
#define ADMathUtils_

@interface ADMathUtils : NSObject

#pragma mark Public

- (instancetype)init;

+ (jfloat)constrainWithFloat:(jfloat)amount
                   withFloat:(jfloat)low
                   withFloat:(jfloat)high;

+ (jint)constrainWithInt:(jint)amount
                 withInt:(jint)low
                 withInt:(jint)high;

@end

J2OBJC_EMPTY_STATIC_INIT(ADMathUtils)

FOUNDATION_EXPORT void ADMathUtils_init(ADMathUtils *self);

FOUNDATION_EXPORT ADMathUtils *new_ADMathUtils_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADMathUtils *create_ADMathUtils_init(void);

FOUNDATION_EXPORT jint ADMathUtils_constrainWithInt_withInt_withInt_(jint amount, jint low, jint high);

FOUNDATION_EXPORT jfloat ADMathUtils_constrainWithFloat_withFloat_withFloat_(jfloat amount, jfloat low, jfloat high);

J2OBJC_TYPE_LITERAL_HEADER(ADMathUtils)

@compatibility_alias RAndroidUtilMathUtils ADMathUtils;

#endif

#pragma pop_macro("INCLUDE_ALL_MathUtils")