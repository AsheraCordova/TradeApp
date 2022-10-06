//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\utils\Utils.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_Utils")
#ifdef RESTRICT_Utils
#define INCLUDE_ALL_Utils 0
#else
#define INCLUDE_ALL_Utils 1
#endif
#undef RESTRICT_Utils

#if !defined (ADXUtils_) && (INCLUDE_ALL_Utils || defined(INCLUDE_ADXUtils))
#define ADXUtils_

@class IOSFloatArray;

@interface ADXUtils : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)getInterpolatedColorWithFloatArray:(IOSFloatArray *)value;

+ (void)logWithNSString:(NSString *)str;

+ (void)logWithNSString:(NSString *)tag
           withNSString:(NSString *)value;

+ (void)logeWithNSString:(NSString *)tag
            withNSString:(NSString *)value;

+ (void)logStackWithNSString:(NSString *)msg
                     withInt:(jint)n;

+ (jint)rgbaTocColorWithFloat:(jfloat)r
                    withFloat:(jfloat)g
                    withFloat:(jfloat)b
                    withFloat:(jfloat)a;

+ (void)socketSendWithNSString:(NSString *)str;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXUtils)

FOUNDATION_EXPORT void ADXUtils_init(ADXUtils *self);

FOUNDATION_EXPORT ADXUtils *new_ADXUtils_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXUtils *create_ADXUtils_init(void);

FOUNDATION_EXPORT void ADXUtils_logWithNSString_withNSString_(NSString *tag, NSString *value);

FOUNDATION_EXPORT void ADXUtils_logeWithNSString_withNSString_(NSString *tag, NSString *value);

FOUNDATION_EXPORT void ADXUtils_socketSendWithNSString_(NSString *str);

FOUNDATION_EXPORT jint ADXUtils_rgbaTocColorWithFloat_withFloat_withFloat_withFloat_(jfloat r, jfloat g, jfloat b, jfloat a);

FOUNDATION_EXPORT void ADXUtils_logStackWithNSString_withInt_(NSString *msg, jint n);

FOUNDATION_EXPORT void ADXUtils_logWithNSString_(NSString *str);

J2OBJC_TYPE_LITERAL_HEADER(ADXUtils)

@compatibility_alias AndroidxConstraintlayoutCoreMotionUtilsUtils ADXUtils;

#endif

#pragma pop_macro("INCLUDE_ALL_Utils")
