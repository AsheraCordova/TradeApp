//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\widget\Space.java
//

#include "J2ObjC_source.h"
#include "Space.h"
#include "View.h"
#include "java/lang/Math.h"


@interface ADSpace ()

+ (jint)getDefaultSize2WithInt:(jint)size
                       withInt:(jint)measureSpec;

@end

__attribute__((unused)) static jint ADSpace_getDefaultSize2WithInt_withInt_(jint size, jint measureSpec);

@implementation ADSpace

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADSpace_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)getDefaultSize2WithInt:(jint)size
                       withInt:(jint)measureSpec {
  return ADSpace_getDefaultSize2WithInt_withInt_(size, measureSpec);
}

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec {
  [self setMeasuredDimensionWithInt:ADSpace_getDefaultSize2WithInt_withInt_([self getSuggestedMinimumWidth], widthMeasureSpec) withInt:ADSpace_getDefaultSize2WithInt_withInt_([self getSuggestedMinimumHeight], heightMeasureSpec)];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 2, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getDefaultSize2WithInt:withInt:);
  methods[2].selector = @selector(onMeasureWithInt:withInt:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getDefaultSize2", "II", "onMeasure" };
  static const J2ObjcClassInfo _ADSpace = { "Space", "r.android.widget", ptrTable, methods, NULL, 7, 0x11, 3, 0, -1, -1, -1, -1, -1 };
  return &_ADSpace;
}

@end

void ADSpace_init(ADSpace *self) {
  ADView_init(self);
}

ADSpace *new_ADSpace_init() {
  J2OBJC_NEW_IMPL(ADSpace, init)
}

ADSpace *create_ADSpace_init() {
  J2OBJC_CREATE_IMPL(ADSpace, init)
}

jint ADSpace_getDefaultSize2WithInt_withInt_(jint size, jint measureSpec) {
  ADSpace_initialize();
  jint result = size;
  jint specMode = ADView_MeasureSpec_getModeWithInt_(measureSpec);
  jint specSize = ADView_MeasureSpec_getSizeWithInt_(measureSpec);
  switch (specMode) {
    case ADView_MeasureSpec_UNSPECIFIED:
    result = size;
    break;
    case ADView_MeasureSpec_AT_MOST:
    result = JavaLangMath_minWithInt_withInt_(size, specSize);
    break;
    case ADView_MeasureSpec_EXACTLY:
    result = specSize;
    break;
  }
  return result;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADSpace)
