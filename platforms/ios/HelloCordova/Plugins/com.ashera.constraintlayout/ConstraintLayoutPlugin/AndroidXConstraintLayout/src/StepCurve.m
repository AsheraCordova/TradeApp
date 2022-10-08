//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\utils\StepCurve.java
//

#include "Easing.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "MonotonicCurveFit.h"
#include "StepCurve.h"
#include "java/io/PrintStream.h"
#include "java/lang/Double.h"
#include "java/lang/System.h"
#include "java/util/Arrays.h"


@interface ADXStepCurve ()

+ (ADXMonotonicCurveFit *)genSplineWithNSString:(NSString *)str;

+ (ADXMonotonicCurveFit *)genSplineWithDoubleArray:(IOSDoubleArray *)values;

@end

inline jboolean ADXStepCurve_get_DEBUG(void);
#define ADXStepCurve_DEBUG false
J2OBJC_STATIC_FIELD_CONSTANT(ADXStepCurve, DEBUG, jboolean)

__attribute__((unused)) static ADXMonotonicCurveFit *ADXStepCurve_genSplineWithNSString_(NSString *str);

__attribute__((unused)) static ADXMonotonicCurveFit *ADXStepCurve_genSplineWithDoubleArray_(IOSDoubleArray *values);

@implementation ADXStepCurve

- (instancetype)initWithNSString:(NSString *)configString {
  ADXStepCurve_initWithNSString_(self, configString);
  return self;
}

+ (ADXMonotonicCurveFit *)genSplineWithNSString:(NSString *)str {
  return ADXStepCurve_genSplineWithNSString_(str);
}

+ (ADXMonotonicCurveFit *)genSplineWithDoubleArray:(IOSDoubleArray *)values {
  return ADXStepCurve_genSplineWithDoubleArray_(values);
}

- (jdouble)getDiffWithDouble:(jdouble)x {
  return [((ADXMonotonicCurveFit *) nil_chk(mCurveFit_)) getSlopeWithDouble:x withInt:0];
}

- (jdouble)getWithDouble:(jdouble)x {
  return [((ADXMonotonicCurveFit *) nil_chk(mCurveFit_)) getPosWithDouble:x withInt:0];
}

- (void)dealloc {
  RELEASE_(mCurveFit_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LADXMonotonicCurveFit;", 0xa, 1, 0, -1, -1, -1, -1 },
    { NULL, "LADXMonotonicCurveFit;", 0xa, 1, 2, -1, -1, -1, -1 },
    { NULL, "D", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "D", 0x1, 5, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(genSplineWithNSString:);
  methods[2].selector = @selector(genSplineWithDoubleArray:);
  methods[3].selector = @selector(getDiffWithDouble:);
  methods[4].selector = @selector(getWithDouble:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEBUG", "Z", .constantValue.asBOOL = ADXStepCurve_DEBUG, 0x1a, -1, -1, -1, -1 },
    { "mCurveFit_", "LADXMonotonicCurveFit;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "genSpline", "[D", "getDiff", "D", "get" };
  static const J2ObjcClassInfo _ADXStepCurve = { "StepCurve", "androidx.constraintlayout.core.motion.utils", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, -1, -1, -1, -1 };
  return &_ADXStepCurve;
}

@end

void ADXStepCurve_initWithNSString_(ADXStepCurve *self, NSString *configString) {
  ADXEasing_init(self);
  JreStrongAssign(&self->str_, configString);
  IOSDoubleArray *values = [IOSDoubleArray arrayWithLength:JreIntDiv([((NSString *) nil_chk(self->str_)) java_length], 2)];
  jint start = [((NSString *) nil_chk(configString)) java_indexOf:'('] + 1;
  jint off1 = [configString java_indexOf:',' fromIndex:start];
  jint count = 0;
  while (off1 != -1) {
    NSString *tmp = [((NSString *) nil_chk([configString java_substring:start endIndex:off1])) java_trim];
    *IOSDoubleArray_GetRef(values, count++) = JavaLangDouble_parseDoubleWithNSString_(tmp);
    off1 = [configString java_indexOf:',' fromIndex:start = off1 + 1];
  }
  off1 = [configString java_indexOf:')' fromIndex:start];
  NSString *tmp = [((NSString *) nil_chk([configString java_substring:start endIndex:off1])) java_trim];
  *IOSDoubleArray_GetRef(values, count++) = JavaLangDouble_parseDoubleWithNSString_(tmp);
  JreStrongAssign(&self->mCurveFit_, ADXStepCurve_genSplineWithDoubleArray_(JavaUtilArrays_copyOfWithDoubleArray_withInt_(values, count)));
}

ADXStepCurve *new_ADXStepCurve_initWithNSString_(NSString *configString) {
  J2OBJC_NEW_IMPL(ADXStepCurve, initWithNSString_, configString)
}

ADXStepCurve *create_ADXStepCurve_initWithNSString_(NSString *configString) {
  J2OBJC_CREATE_IMPL(ADXStepCurve, initWithNSString_, configString)
}

ADXMonotonicCurveFit *ADXStepCurve_genSplineWithNSString_(NSString *str) {
  ADXStepCurve_initialize();
  NSString *wave = JreRetainedLocalValue(str);
  IOSObjectArray *sp = [((NSString *) nil_chk(wave)) java_split:@"\\s+"];
  IOSDoubleArray *values = [IOSDoubleArray arrayWithLength:((IOSObjectArray *) nil_chk(sp))->size_];
  for (jint i = 0; i < values->size_; i++) {
    *IOSDoubleArray_GetRef(values, i) = JavaLangDouble_parseDoubleWithNSString_(IOSObjectArray_Get(sp, i));
  }
  return ADXStepCurve_genSplineWithDoubleArray_(values);
}

ADXMonotonicCurveFit *ADXStepCurve_genSplineWithDoubleArray_(IOSDoubleArray *values) {
  ADXStepCurve_initialize();
  jint length = ((IOSDoubleArray *) nil_chk(values))->size_ * 3 - 2;
  jint len = values->size_ - 1;
  jdouble gap = 1.0 / len;
  IOSObjectArray *points = [IOSDoubleArray arrayWithDimensions:2 lengths:(jint[]){ length, 1 }];
  IOSDoubleArray *time = [IOSDoubleArray arrayWithLength:length];
  for (jint i = 0; i < values->size_; i++) {
    jdouble v = IOSDoubleArray_Get(values, i);
    *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(points, i + len)), 0) = v;
    *IOSDoubleArray_GetRef(time, i + len) = i * gap;
    if (i > 0) {
      *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(points, i + len * 2)), 0) = v + 1;
      *IOSDoubleArray_GetRef(time, i + len * 2) = i * gap + 1;
      *IOSDoubleArray_GetRef(nil_chk(IOSObjectArray_Get(points, i - 1)), 0) = v - 1 - gap;
      *IOSDoubleArray_GetRef(time, i - 1) = i * gap + -1 - gap;
    }
  }
  ADXMonotonicCurveFit *ms = create_ADXMonotonicCurveFit_initWithDoubleArray_withDoubleArray2_(time, points);
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$D", @" 0 ", [ms getPosWithDouble:0 withInt:0])];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$D", @" 1 ", [ms getPosWithDouble:1 withInt:0])];
  return ms;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXStepCurve)
