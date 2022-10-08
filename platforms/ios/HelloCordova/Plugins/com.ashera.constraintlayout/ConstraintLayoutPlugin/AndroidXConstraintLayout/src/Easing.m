//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\utils\Easing.java
//

#include "Easing.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "Schlick.h"
#include "StepCurve.h"
#include "java/io/PrintStream.h"
#include "java/lang/Double.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"


inline NSString *ADXEasing_get_STANDARD(void);
static NSString *ADXEasing_STANDARD = @"cubic(0.4, 0.0, 0.2, 1)";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXEasing, STANDARD, NSString *)

inline NSString *ADXEasing_get_ACCELERATE(void);
static NSString *ADXEasing_ACCELERATE = @"cubic(0.4, 0.05, 0.8, 0.7)";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXEasing, ACCELERATE, NSString *)

inline NSString *ADXEasing_get_DECELERATE(void);
static NSString *ADXEasing_DECELERATE = @"cubic(0.0, 0.0, 0.2, 0.95)";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXEasing, DECELERATE, NSString *)

inline NSString *ADXEasing_get_LINEAR(void);
static NSString *ADXEasing_LINEAR = @"cubic(1, 1, 0, 0)";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXEasing, LINEAR, NSString *)

inline NSString *ADXEasing_get_DECELERATE_NAME(void);
static NSString *ADXEasing_DECELERATE_NAME = @"decelerate";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXEasing, DECELERATE_NAME, NSString *)

inline NSString *ADXEasing_get_ACCELERATE_NAME(void);
static NSString *ADXEasing_ACCELERATE_NAME = @"accelerate";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXEasing, ACCELERATE_NAME, NSString *)

inline NSString *ADXEasing_get_STANDARD_NAME(void);
static NSString *ADXEasing_STANDARD_NAME = @"standard";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXEasing, STANDARD_NAME, NSString *)

inline NSString *ADXEasing_get_LINEAR_NAME(void);
static NSString *ADXEasing_LINEAR_NAME = @"linear";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXEasing, LINEAR_NAME, NSString *)

@interface ADXEasing_CubicEasing ()

- (jdouble)getXWithDouble:(jdouble)t;

- (jdouble)getYWithDouble:(jdouble)t;

- (jdouble)getDiffXWithDouble:(jdouble)t;

- (jdouble)getDiffYWithDouble:(jdouble)t;

@end

inline jdouble ADXEasing_CubicEasing_get_error(void);
inline jdouble ADXEasing_CubicEasing_set_error(jdouble value);
inline jdouble *ADXEasing_CubicEasing_getRef_error(void);
static jdouble ADXEasing_CubicEasing_error = 0.01;
J2OBJC_STATIC_FIELD_PRIMITIVE(ADXEasing_CubicEasing, error, jdouble)

inline jdouble ADXEasing_CubicEasing_get_d_error(void);
inline jdouble ADXEasing_CubicEasing_set_d_error(jdouble value);
inline jdouble *ADXEasing_CubicEasing_getRef_d_error(void);
static jdouble ADXEasing_CubicEasing_d_error = 1.0E-4;
J2OBJC_STATIC_FIELD_PRIMITIVE(ADXEasing_CubicEasing, d_error, jdouble)

__attribute__((unused)) static jdouble ADXEasing_CubicEasing_getXWithDouble_(ADXEasing_CubicEasing *self, jdouble t);

__attribute__((unused)) static jdouble ADXEasing_CubicEasing_getYWithDouble_(ADXEasing_CubicEasing *self, jdouble t);

__attribute__((unused)) static jdouble ADXEasing_CubicEasing_getDiffXWithDouble_(ADXEasing_CubicEasing *self, jdouble t);

__attribute__((unused)) static jdouble ADXEasing_CubicEasing_getDiffYWithDouble_(ADXEasing_CubicEasing *self, jdouble t);

J2OBJC_INITIALIZED_DEFN(ADXEasing)

ADXEasing *ADXEasing_sDefault;
IOSObjectArray *ADXEasing_NAMED_EASING;

@implementation ADXEasing

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXEasing_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ADXEasing *)getInterpolatorWithNSString:(NSString *)configString {
  return ADXEasing_getInterpolatorWithNSString_(configString);
}

- (jdouble)getWithDouble:(jdouble)x {
  return x;
}

- (NSString *)description {
  return str_;
}

- (jdouble)getDiffWithDouble:(jdouble)x {
  return 1;
}

- (void)dealloc {
  RELEASE_(str_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXEasing;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "D", 0x1, 5, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getInterpolatorWithNSString:);
  methods[2].selector = @selector(getWithDouble:);
  methods[3].selector = @selector(description);
  methods[4].selector = @selector(getDiffWithDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sDefault", "LADXEasing;", .constantValue.asLong = 0, 0x8, -1, 6, -1, -1 },
    { "str_", "LNSString;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "STANDARD", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "ACCELERATE", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "DECELERATE", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 9, -1, -1 },
    { "LINEAR", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 10, -1, -1 },
    { "DECELERATE_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 11, -1, -1 },
    { "ACCELERATE_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "STANDARD_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
    { "LINEAR_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "NAMED_EASING", "[LNSString;", .constantValue.asLong = 0, 0x9, -1, 15, -1, -1 },
  };
  static const void *ptrTable[] = { "getInterpolator", "LNSString;", "get", "D", "toString", "getDiff", &ADXEasing_sDefault, &ADXEasing_STANDARD, &ADXEasing_ACCELERATE, &ADXEasing_DECELERATE, &ADXEasing_LINEAR, &ADXEasing_DECELERATE_NAME, &ADXEasing_ACCELERATE_NAME, &ADXEasing_STANDARD_NAME, &ADXEasing_LINEAR_NAME, &ADXEasing_NAMED_EASING, "LADXEasing_CubicEasing;" };
  static const J2ObjcClassInfo _ADXEasing = { "Easing", "androidx.constraintlayout.core.motion.utils", ptrTable, methods, fields, 7, 0x1, 5, 11, -1, 16, -1, -1, -1 };
  return &_ADXEasing;
}

+ (void)initialize {
  if (self == [ADXEasing class]) {
    JreStrongAssignAndConsume(&ADXEasing_sDefault, new_ADXEasing_init());
    JreStrongAssignAndConsume(&ADXEasing_NAMED_EASING, [IOSObjectArray newArrayWithObjects:(id[]){ ADXEasing_STANDARD_NAME, ADXEasing_ACCELERATE_NAME, ADXEasing_DECELERATE_NAME, ADXEasing_LINEAR_NAME } count:4 type:NSString_class_()]);
    J2OBJC_SET_INITIALIZED(ADXEasing)
  }
}

@end

void ADXEasing_init(ADXEasing *self) {
  NSObject_init(self);
  JreStrongAssign(&self->str_, @"identity");
}

ADXEasing *new_ADXEasing_init() {
  J2OBJC_NEW_IMPL(ADXEasing, init)
}

ADXEasing *create_ADXEasing_init() {
  J2OBJC_CREATE_IMPL(ADXEasing, init)
}

ADXEasing *ADXEasing_getInterpolatorWithNSString_(NSString *configString) {
  ADXEasing_initialize();
  if (configString == nil) {
    return nil;
  }
  if ([configString java_hasPrefix:@"cubic"]) {
    return create_ADXEasing_CubicEasing_initWithNSString_(configString);
  }
  else if ([configString java_hasPrefix:@"spline"]) {
    return create_ADXStepCurve_initWithNSString_(configString);
  }
  else if ([configString java_hasPrefix:@"Schlick"]) {
    return create_ADXSchlick_initWithNSString_(configString);
  }
  else {
    switch (JreIndexOfStr(configString, (id[]){ ADXEasing_STANDARD_NAME, ADXEasing_ACCELERATE_NAME, ADXEasing_DECELERATE_NAME, ADXEasing_LINEAR_NAME }, 4)) {
      case 0:
      return create_ADXEasing_CubicEasing_initWithNSString_(ADXEasing_STANDARD);
      case 1:
      return create_ADXEasing_CubicEasing_initWithNSString_(ADXEasing_ACCELERATE);
      case 2:
      return create_ADXEasing_CubicEasing_initWithNSString_(ADXEasing_DECELERATE);
      case 3:
      return create_ADXEasing_CubicEasing_initWithNSString_(ADXEasing_LINEAR);
      default:
      [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or ", JavaUtilArrays_toStringWithNSObjectArray_(ADXEasing_NAMED_EASING))];
    }
  }
  return ADXEasing_sDefault;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXEasing)

@implementation ADXEasing_CubicEasing

- (instancetype)initWithNSString:(NSString *)configString {
  ADXEasing_CubicEasing_initWithNSString_(self, configString);
  return self;
}

- (instancetype)initWithDouble:(jdouble)x1
                    withDouble:(jdouble)y1
                    withDouble:(jdouble)x2
                    withDouble:(jdouble)y2 {
  ADXEasing_CubicEasing_initWithDouble_withDouble_withDouble_withDouble_(self, x1, y1, x2, y2);
  return self;
}

- (void)setupWithDouble:(jdouble)x1
             withDouble:(jdouble)y1
             withDouble:(jdouble)x2
             withDouble:(jdouble)y2 {
  self->x1_ = x1;
  self->y1_ = y1;
  self->x2_ = x2;
  self->y2_ = y2;
}

- (jdouble)getXWithDouble:(jdouble)t {
  return ADXEasing_CubicEasing_getXWithDouble_(self, t);
}

- (jdouble)getYWithDouble:(jdouble)t {
  return ADXEasing_CubicEasing_getYWithDouble_(self, t);
}

- (jdouble)getDiffXWithDouble:(jdouble)t {
  return ADXEasing_CubicEasing_getDiffXWithDouble_(self, t);
}

- (jdouble)getDiffYWithDouble:(jdouble)t {
  return ADXEasing_CubicEasing_getDiffYWithDouble_(self, t);
}

- (jdouble)getDiffWithDouble:(jdouble)x {
  jdouble t = 0.5;
  jdouble range = 0.5;
  while (range > ADXEasing_CubicEasing_d_error) {
    jdouble tx = ADXEasing_CubicEasing_getXWithDouble_(self, t);
    JreTimesAssignDoubleD(&range, 0.5);
    if (tx < x) {
      JrePlusAssignDoubleD(&t, range);
    }
    else {
      JreMinusAssignDoubleD(&t, range);
    }
  }
  jdouble x1 = ADXEasing_CubicEasing_getXWithDouble_(self, t - range);
  jdouble x2 = ADXEasing_CubicEasing_getXWithDouble_(self, t + range);
  jdouble y1 = ADXEasing_CubicEasing_getYWithDouble_(self, t - range);
  jdouble y2 = ADXEasing_CubicEasing_getYWithDouble_(self, t + range);
  return (y2 - y1) / (x2 - x1);
}

- (jdouble)getWithDouble:(jdouble)x {
  if (x <= 0.0) {
    return 0;
  }
  if (x >= 1.0) {
    return 1.0;
  }
  jdouble t = 0.5;
  jdouble range = 0.5;
  while (range > ADXEasing_CubicEasing_error) {
    jdouble tx = ADXEasing_CubicEasing_getXWithDouble_(self, t);
    JreTimesAssignDoubleD(&range, 0.5);
    if (tx < x) {
      JrePlusAssignDoubleD(&t, range);
    }
    else {
      JreMinusAssignDoubleD(&t, range);
    }
  }
  jdouble x1 = ADXEasing_CubicEasing_getXWithDouble_(self, t - range);
  jdouble x2 = ADXEasing_CubicEasing_getXWithDouble_(self, t + range);
  jdouble y1 = ADXEasing_CubicEasing_getYWithDouble_(self, t - range);
  jdouble y2 = ADXEasing_CubicEasing_getYWithDouble_(self, t + range);
  return (y2 - y1) * (x - x1) / (x2 - x1) + y1;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 2, 1, -1, -1, -1, -1 },
    { NULL, "D", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "D", 0x2, 5, 4, -1, -1, -1, -1 },
    { NULL, "D", 0x2, 6, 4, -1, -1, -1, -1 },
    { NULL, "D", 0x2, 7, 4, -1, -1, -1, -1 },
    { NULL, "D", 0x1, 8, 4, -1, -1, -1, -1 },
    { NULL, "D", 0x1, 9, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithDouble:withDouble:withDouble:withDouble:);
  methods[2].selector = @selector(setupWithDouble:withDouble:withDouble:withDouble:);
  methods[3].selector = @selector(getXWithDouble:);
  methods[4].selector = @selector(getYWithDouble:);
  methods[5].selector = @selector(getDiffXWithDouble:);
  methods[6].selector = @selector(getDiffYWithDouble:);
  methods[7].selector = @selector(getDiffWithDouble:);
  methods[8].selector = @selector(getWithDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "error", "D", .constantValue.asLong = 0, 0xa, -1, 10, -1, -1 },
    { "d_error", "D", .constantValue.asLong = 0, 0xa, -1, 11, -1, -1 },
    { "x1_", "D", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "y1_", "D", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "x2_", "D", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "y2_", "D", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "DDDD", "setup", "getX", "D", "getY", "getDiffX", "getDiffY", "getDiff", "get", &ADXEasing_CubicEasing_error, &ADXEasing_CubicEasing_d_error, "LADXEasing;" };
  static const J2ObjcClassInfo _ADXEasing_CubicEasing = { "CubicEasing", "androidx.constraintlayout.core.motion.utils", ptrTable, methods, fields, 7, 0x8, 9, 6, 12, -1, -1, -1, -1 };
  return &_ADXEasing_CubicEasing;
}

@end

void ADXEasing_CubicEasing_initWithNSString_(ADXEasing_CubicEasing *self, NSString *configString) {
  ADXEasing_init(self);
  JreStrongAssign(&self->str_, configString);
  jint start = [((NSString *) nil_chk(configString)) java_indexOf:'('];
  jint off1 = [configString java_indexOf:',' fromIndex:start];
  self->x1_ = JavaLangDouble_parseDoubleWithNSString_([((NSString *) nil_chk([configString java_substring:start + 1 endIndex:off1])) java_trim]);
  jint off2 = [configString java_indexOf:',' fromIndex:off1 + 1];
  self->y1_ = JavaLangDouble_parseDoubleWithNSString_([((NSString *) nil_chk([configString java_substring:off1 + 1 endIndex:off2])) java_trim]);
  jint off3 = [configString java_indexOf:',' fromIndex:off2 + 1];
  self->x2_ = JavaLangDouble_parseDoubleWithNSString_([((NSString *) nil_chk([configString java_substring:off2 + 1 endIndex:off3])) java_trim]);
  jint end = [configString java_indexOf:')' fromIndex:off3 + 1];
  self->y2_ = JavaLangDouble_parseDoubleWithNSString_([((NSString *) nil_chk([configString java_substring:off3 + 1 endIndex:end])) java_trim]);
}

ADXEasing_CubicEasing *new_ADXEasing_CubicEasing_initWithNSString_(NSString *configString) {
  J2OBJC_NEW_IMPL(ADXEasing_CubicEasing, initWithNSString_, configString)
}

ADXEasing_CubicEasing *create_ADXEasing_CubicEasing_initWithNSString_(NSString *configString) {
  J2OBJC_CREATE_IMPL(ADXEasing_CubicEasing, initWithNSString_, configString)
}

void ADXEasing_CubicEasing_initWithDouble_withDouble_withDouble_withDouble_(ADXEasing_CubicEasing *self, jdouble x1, jdouble y1, jdouble x2, jdouble y2) {
  ADXEasing_init(self);
  [self setupWithDouble:x1 withDouble:y1 withDouble:x2 withDouble:y2];
}

ADXEasing_CubicEasing *new_ADXEasing_CubicEasing_initWithDouble_withDouble_withDouble_withDouble_(jdouble x1, jdouble y1, jdouble x2, jdouble y2) {
  J2OBJC_NEW_IMPL(ADXEasing_CubicEasing, initWithDouble_withDouble_withDouble_withDouble_, x1, y1, x2, y2)
}

ADXEasing_CubicEasing *create_ADXEasing_CubicEasing_initWithDouble_withDouble_withDouble_withDouble_(jdouble x1, jdouble y1, jdouble x2, jdouble y2) {
  J2OBJC_CREATE_IMPL(ADXEasing_CubicEasing, initWithDouble_withDouble_withDouble_withDouble_, x1, y1, x2, y2)
}

jdouble ADXEasing_CubicEasing_getXWithDouble_(ADXEasing_CubicEasing *self, jdouble t) {
  jdouble t1 = 1 - t;
  jdouble f1 = 3 * t1 * t1 * t;
  jdouble f2 = 3 * t1 * t * t;
  jdouble f3 = t * t * t;
  return self->x1_ * f1 + self->x2_ * f2 + f3;
}

jdouble ADXEasing_CubicEasing_getYWithDouble_(ADXEasing_CubicEasing *self, jdouble t) {
  jdouble t1 = 1 - t;
  jdouble f1 = 3 * t1 * t1 * t;
  jdouble f2 = 3 * t1 * t * t;
  jdouble f3 = t * t * t;
  return self->y1_ * f1 + self->y2_ * f2 + f3;
}

jdouble ADXEasing_CubicEasing_getDiffXWithDouble_(ADXEasing_CubicEasing *self, jdouble t) {
  jdouble t1 = 1 - t;
  return 3 * t1 * t1 * self->x1_ + 6 * t1 * t * (self->x2_ - self->x1_) + 3 * t * t * (1 - self->x2_);
}

jdouble ADXEasing_CubicEasing_getDiffYWithDouble_(ADXEasing_CubicEasing *self, jdouble t) {
  jdouble t1 = 1 - t;
  return 3 * t1 * t1 * self->y1_ + 6 * t1 * t * (self->y2_ - self->y1_) + 3 * t * t * (1 - self->y2_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXEasing_CubicEasing)