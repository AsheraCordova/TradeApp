//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\text\format\DateUtils.java
//

#include "DateUtils.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Long.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Formatter.h"
#include "java/util/Locale.h"


@interface ADDateUtils ()

+ (void)initFormatStrings OBJC_METHOD_FAMILY_NONE;

@end

inline NSString *ADDateUtils_get_sElapsedFormatMMSS(void);
inline NSString *ADDateUtils_set_sElapsedFormatMMSS(NSString *value);
static NSString *ADDateUtils_sElapsedFormatMMSS;
J2OBJC_STATIC_FIELD_OBJ(ADDateUtils, sElapsedFormatMMSS, NSString *)

inline NSString *ADDateUtils_get_sElapsedFormatHMMSS(void);
inline NSString *ADDateUtils_set_sElapsedFormatHMMSS(NSString *value);
static NSString *ADDateUtils_sElapsedFormatHMMSS;
J2OBJC_STATIC_FIELD_OBJ(ADDateUtils, sElapsedFormatHMMSS, NSString *)

__attribute__((unused)) static void ADDateUtils_initFormatStrings(void);

@implementation ADDateUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADDateUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (NSString *)formatElapsedTimeWithLong:(jlong)elapsedSeconds {
  return ADDateUtils_formatElapsedTimeWithLong_(elapsedSeconds);
}

+ (NSString *)formatElapsedTimeWithJavaLangStringBuilder:(JavaLangStringBuilder *)recycle
                                                withLong:(jlong)elapsedSeconds {
  return ADDateUtils_formatElapsedTimeWithJavaLangStringBuilder_withLong_(recycle, elapsedSeconds);
}

+ (void)initFormatStrings {
  ADDateUtils_initFormatStrings();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "V", 0xa, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(formatElapsedTimeWithLong:);
  methods[2].selector = @selector(formatElapsedTimeWithJavaLangStringBuilder:withLong:);
  methods[3].selector = @selector(initFormatStrings);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SECOND_IN_MILLIS", "J", .constantValue.asLong = ADDateUtils_SECOND_IN_MILLIS, 0x19, -1, -1, -1, -1 },
    { "sElapsedFormatMMSS", "LNSString;", .constantValue.asLong = 0, 0xa, -1, 3, -1, -1 },
    { "sElapsedFormatHMMSS", "LNSString;", .constantValue.asLong = 0, 0xa, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "formatElapsedTime", "J", "LJavaLangStringBuilder;J", &ADDateUtils_sElapsedFormatMMSS, &ADDateUtils_sElapsedFormatHMMSS };
  static const J2ObjcClassInfo _ADDateUtils = { "DateUtils", "r.android.text.format", ptrTable, methods, fields, 7, 0x1, 4, 3, -1, -1, -1, -1, -1 };
  return &_ADDateUtils;
}

@end

void ADDateUtils_init(ADDateUtils *self) {
  NSObject_init(self);
}

ADDateUtils *new_ADDateUtils_init() {
  J2OBJC_NEW_IMPL(ADDateUtils, init)
}

ADDateUtils *create_ADDateUtils_init() {
  J2OBJC_CREATE_IMPL(ADDateUtils, init)
}

NSString *ADDateUtils_formatElapsedTimeWithLong_(jlong elapsedSeconds) {
  ADDateUtils_initialize();
  return ADDateUtils_formatElapsedTimeWithJavaLangStringBuilder_withLong_(nil, elapsedSeconds);
}

NSString *ADDateUtils_formatElapsedTimeWithJavaLangStringBuilder_withLong_(JavaLangStringBuilder *recycle, jlong elapsedSeconds) {
  ADDateUtils_initialize();
  jlong hours = 0;
  jlong minutes = 0;
  jlong seconds = 0;
  if (elapsedSeconds >= 3600) {
    hours = JreLongDiv(elapsedSeconds, 3600);
    elapsedSeconds -= hours * 3600;
  }
  if (elapsedSeconds >= 60) {
    minutes = JreLongDiv(elapsedSeconds, 60);
    elapsedSeconds -= minutes * 60;
  }
  seconds = elapsedSeconds;
  JavaLangStringBuilder *sb = JreRetainedLocalValue(recycle);
  if (sb == nil) {
    sb = create_JavaLangStringBuilder_initWithInt_(8);
  }
  else {
    [sb setLengthWithInt:0];
  }
  JavaUtilFormatter *f = create_JavaUtilFormatter_initWithJavaLangAppendable_withJavaUtilLocale_(sb, JavaUtilLocale_getDefault());
  ADDateUtils_initFormatStrings();
  if (hours > 0) {
    return [((JavaUtilFormatter *) nil_chk(([f formatWithNSString:ADDateUtils_sElapsedFormatHMMSS withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaLangLong_valueOfWithLong_(hours), JavaLangLong_valueOfWithLong_(minutes), JavaLangLong_valueOfWithLong_(seconds) } count:3 type:NSObject_class_()]]))) description];
  }
  else {
    return [((JavaUtilFormatter *) nil_chk(([f formatWithNSString:ADDateUtils_sElapsedFormatMMSS withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ JavaLangLong_valueOfWithLong_(minutes), JavaLangLong_valueOfWithLong_(seconds) } count:2 type:NSObject_class_()]]))) description];
  }
}

void ADDateUtils_initFormatStrings() {
  ADDateUtils_initialize();
  JreStrongAssign(&ADDateUtils_sElapsedFormatMMSS, @"%1$02d:%2$02d");
  JreStrongAssign(&ADDateUtils_sElapsedFormatHMMSS, @"%1$d:%2$02d:%3$02d");
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADDateUtils)