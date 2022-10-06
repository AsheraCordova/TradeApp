//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\state\WidgetFrame.java
//

#include "CLElement.h"
#include "CLKey.h"
#include "CLNumber.h"
#include "CLObject.h"
#include "ConstraintWidget.h"
#include "CustomVariable.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "Transition.h"
#include "TypedValues.h"
#include "WidgetFrame.h"
#include "java/io/PrintStream.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Math.h"
#include "java/lang/StackTraceElement.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/Collection.h"
#include "java/util/HashMap.h"
#include "java/util/Set.h"

@class JavaLangStringBuilder;


@interface ADXWidgetFrame ()

+ (jfloat)interpolateWithFloat:(jfloat)start
                     withFloat:(jfloat)end
                     withFloat:(jfloat)defaultValue
                     withFloat:(jfloat)progress;

+ (void)addWithJavaLangStringBuilder:(JavaLangStringBuilder *)s
                        withNSString:(NSString *)title
                             withInt:(jint)value;

+ (void)addWithJavaLangStringBuilder:(JavaLangStringBuilder *)s
                        withNSString:(NSString *)title
                           withFloat:(jfloat)value;

@end

inline jboolean ADXWidgetFrame_get_OLD_SYSTEM(void);
#define ADXWidgetFrame_OLD_SYSTEM true
J2OBJC_STATIC_FIELD_CONSTANT(ADXWidgetFrame, OLD_SYSTEM, jboolean)

__attribute__((unused)) static jfloat ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(jfloat start, jfloat end, jfloat defaultValue, jfloat progress);

__attribute__((unused)) static void ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withInt_(JavaLangStringBuilder *s, NSString *title, jint value);

__attribute__((unused)) static void ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(JavaLangStringBuilder *s, NSString *title, jfloat value);

jfloat ADXWidgetFrame_phone_orientation = NAN;

@implementation ADXWidgetFrame

- (jint)width {
  return JavaLangMath_maxWithInt_withInt_(0, right_ - left_);
}

- (jint)height {
  return JavaLangMath_maxWithInt_withInt_(0, bottom_ - top_);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXWidgetFrame_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithADXConstraintWidget:(ADXConstraintWidget *)widget {
  ADXWidgetFrame_initWithADXConstraintWidget_(self, widget);
  return self;
}

- (instancetype)initWithADXWidgetFrame:(ADXWidgetFrame *)frame {
  ADXWidgetFrame_initWithADXWidgetFrame_(self, frame);
  return self;
}

- (void)updateAttributesWithADXWidgetFrame:(ADXWidgetFrame *)frame {
  pivotX_ = ((ADXWidgetFrame *) nil_chk(frame))->pivotX_;
  pivotY_ = frame->pivotY_;
  rotationX_ = frame->rotationX_;
  rotationY_ = frame->rotationY_;
  rotationZ_ = frame->rotationZ_;
  translationX_ = frame->translationX_;
  translationY_ = frame->translationY_;
  translationZ_ = frame->translationZ_;
  scaleX_ = frame->scaleX_;
  scaleY_ = frame->scaleY_;
  alpha_ = frame->alpha_;
  visibility_ = frame->visibility_;
  [((JavaUtilHashMap *) nil_chk(mCustom_)) clear];
  if (frame != nil) {
    for (ADXCustomVariable * __strong c in nil_chk([frame->mCustom_ values])) {
      [mCustom_ putWithId:[((ADXCustomVariable *) nil_chk(c)) getName] withId:[c copy__]];
    }
  }
}

- (jboolean)isDefaultTransform {
  return JavaLangFloat_isNaNWithFloat_(rotationX_) && JavaLangFloat_isNaNWithFloat_(rotationY_) && JavaLangFloat_isNaNWithFloat_(rotationZ_) && JavaLangFloat_isNaNWithFloat_(translationX_) && JavaLangFloat_isNaNWithFloat_(translationY_) && JavaLangFloat_isNaNWithFloat_(translationZ_) && JavaLangFloat_isNaNWithFloat_(scaleX_) && JavaLangFloat_isNaNWithFloat_(scaleY_) && JavaLangFloat_isNaNWithFloat_(alpha_);
}

+ (void)interpolateWithInt:(jint)parentWidth
                   withInt:(jint)parentHeight
        withADXWidgetFrame:(ADXWidgetFrame *)frame
        withADXWidgetFrame:(ADXWidgetFrame *)start
        withADXWidgetFrame:(ADXWidgetFrame *)end
         withADXTransition:(ADXTransition *)transition
                 withFloat:(jfloat)progress {
  ADXWidgetFrame_interpolateWithInt_withInt_withADXWidgetFrame_withADXWidgetFrame_withADXWidgetFrame_withADXTransition_withFloat_(parentWidth, parentHeight, frame, start, end, transition, progress);
}

+ (jfloat)interpolateWithFloat:(jfloat)start
                     withFloat:(jfloat)end
                     withFloat:(jfloat)defaultValue
                     withFloat:(jfloat)progress {
  return ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start, end, defaultValue, progress);
}

- (jfloat)centerX {
  return left_ + (right_ - left_) / 2.0f;
}

- (jfloat)centerY {
  return top_ + (bottom_ - top_) / 2.0f;
}

- (ADXWidgetFrame *)update {
  if (widget_ != nil) {
    left_ = [widget_ getLeft];
    top_ = [((ADXConstraintWidget *) nil_chk(widget_)) getTop];
    right_ = [((ADXConstraintWidget *) nil_chk(widget_)) getRight];
    bottom_ = [((ADXConstraintWidget *) nil_chk(widget_)) getBottom];
    ADXWidgetFrame *frame = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(widget_))->frame_);
    [self updateAttributesWithADXWidgetFrame:frame];
  }
  return self;
}

- (ADXWidgetFrame *)updateWithADXConstraintWidget:(ADXConstraintWidget *)widget {
  if (widget == nil) {
    return self;
  }
  self->widget_ = widget;
  [self update];
  return self;
}

- (void)addCustomColorWithNSString:(NSString *)name
                           withInt:(jint)color {
  [self setCustomAttributeWithNSString:name withInt:ADXTypedValues_Custom_TYPE_COLOR withInt:color];
}

- (jint)getCustomColorWithNSString:(NSString *)name {
  if ([((JavaUtilHashMap *) nil_chk(mCustom_)) containsKeyWithId:name]) {
    jint color = [((ADXCustomVariable *) nil_chk([mCustom_ getWithId:name])) getColorValue];
    return color;
  }
  return (jint) 0xFFFFAA88;
}

- (void)addCustomFloatWithNSString:(NSString *)name
                         withFloat:(jfloat)value {
  [self setCustomAttributeWithNSString:name withInt:ADXTypedValues_Custom_TYPE_FLOAT withFloat:value];
}

- (jfloat)getCustomFloatWithNSString:(NSString *)name {
  if ([((JavaUtilHashMap *) nil_chk(mCustom_)) containsKeyWithId:name]) {
    return [((ADXCustomVariable *) nil_chk([mCustom_ getWithId:name])) getFloatValue];
  }
  return JavaLangFloat_NaN;
}

- (void)setCustomAttributeWithNSString:(NSString *)name
                               withInt:(jint)type
                             withFloat:(jfloat)value {
  if ([((JavaUtilHashMap *) nil_chk(mCustom_)) containsKeyWithId:name]) {
    [((ADXCustomVariable *) nil_chk([mCustom_ getWithId:name])) setFloatValueWithFloat:value];
  }
  else {
    [mCustom_ putWithId:name withId:create_ADXCustomVariable_initWithNSString_withInt_withFloat_(name, type, value)];
  }
}

- (void)setCustomAttributeWithNSString:(NSString *)name
                               withInt:(jint)type
                               withInt:(jint)value {
  if ([((JavaUtilHashMap *) nil_chk(mCustom_)) containsKeyWithId:name]) {
    [((ADXCustomVariable *) nil_chk([mCustom_ getWithId:name])) setIntValueWithInt:value];
  }
  else {
    [mCustom_ putWithId:name withId:create_ADXCustomVariable_initWithNSString_withInt_withInt_(name, type, value)];
  }
}

- (void)setCustomAttributeWithNSString:(NSString *)name
                               withInt:(jint)type
                           withBoolean:(jboolean)value {
  if ([((JavaUtilHashMap *) nil_chk(mCustom_)) containsKeyWithId:name]) {
    [((ADXCustomVariable *) nil_chk([mCustom_ getWithId:name])) setBooleanValueWithBoolean:value];
  }
  else {
    [mCustom_ putWithId:name withId:create_ADXCustomVariable_initWithNSString_withInt_withBoolean_(name, type, value)];
  }
}

- (void)setCustomAttributeWithNSString:(NSString *)name
                               withInt:(jint)type
                          withNSString:(NSString *)value {
  if ([((JavaUtilHashMap *) nil_chk(mCustom_)) containsKeyWithId:name]) {
    [((ADXCustomVariable *) nil_chk([mCustom_ getWithId:name])) setStringValueWithNSString:value];
  }
  else {
    [mCustom_ putWithId:name withId:create_ADXCustomVariable_initWithNSString_withInt_withNSString_(name, type, value)];
  }
}

- (ADXCustomVariable *)getCustomAttributeWithNSString:(NSString *)name {
  return [((JavaUtilHashMap *) nil_chk(mCustom_)) getWithId:name];
}

- (id<JavaUtilSet>)getCustomAttributeNames {
  return [((JavaUtilHashMap *) nil_chk(mCustom_)) keySet];
}

- (jboolean)setValueWithNSString:(NSString *)key
                withADXCLElement:(ADXCLElement *)value {
  switch (JreIndexOfStr(key, (id[]){ @"pivotX", @"pivotY", @"rotationX", @"rotationY", @"rotationZ", @"translationX", @"translationY", @"translationZ", @"scaleX", @"scaleY", @"alpha", @"interpolatedPos", @"phone_orientation", @"top", @"left", @"right", @"bottom", @"custom" }, 18)) {
    case 0:
    pivotX_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 1:
    pivotY_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 2:
    rotationX_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 3:
    rotationY_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 4:
    rotationZ_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 5:
    translationX_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 6:
    translationY_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 7:
    translationZ_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 8:
    scaleX_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 9:
    scaleY_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 10:
    alpha_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 11:
    interpolatedPos_ = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 12:
    ADXWidgetFrame_phone_orientation = [((ADXCLElement *) nil_chk(value)) getFloat];
    break;
    case 13:
    top_ = [((ADXCLElement *) nil_chk(value)) getInt];
    break;
    case 14:
    left_ = [((ADXCLElement *) nil_chk(value)) getInt];
    break;
    case 15:
    right_ = [((ADXCLElement *) nil_chk(value)) getInt];
    break;
    case 16:
    bottom_ = [((ADXCLElement *) nil_chk(value)) getInt];
    break;
    case 17:
    [self parseCustomWithADXCLElement:value];
    break;
    default:
    return false;
  }
  return true;
}

- (void)parseCustomWithADXCLElement:(ADXCLElement *)custom {
  ADXCLObject *obj = ((ADXCLObject *) cast_chk(custom, [ADXCLObject class]));
  jint n = [((ADXCLObject *) nil_chk(obj)) size];
  for (jint i = 0; i < n; i++) {
    ADXCLElement *tmp = JreRetainedLocalValue([obj getWithInt:i]);
    ADXCLKey *k = ((ADXCLKey *) cast_chk(tmp, [ADXCLKey class]));
    NSString *name = JreRetainedLocalValue([((ADXCLKey *) nil_chk(k)) content]);
    ADXCLElement *v = JreRetainedLocalValue([k getValue]);
    NSString *vStr = JreRetainedLocalValue([((ADXCLElement *) nil_chk(v)) content]);
    if ([((NSString *) nil_chk(vStr)) java_matches:@"#[0-9a-fA-F]+"]) {
      jint color = JavaLangInteger_parseIntWithNSString_withInt_([vStr java_substring:1], 16);
      [self setCustomAttributeWithNSString:[k content] withInt:ADXTypedValues_Custom_TYPE_COLOR withInt:color];
    }
    else if ([v isKindOfClass:[ADXCLNumber class]]) {
      [self setCustomAttributeWithNSString:[k content] withInt:ADXTypedValues_Custom_TYPE_FLOAT withFloat:[v getFloat]];
    }
    else {
      [self setCustomAttributeWithNSString:[k content] withInt:ADXTypedValues_Custom_TYPE_STRING withNSString:vStr];
    }
  }
}

- (JavaLangStringBuilder *)serializeWithJavaLangStringBuilder:(JavaLangStringBuilder *)ret {
  return [self serializeWithJavaLangStringBuilder:ret withBoolean:false];
}

- (JavaLangStringBuilder *)serializeWithJavaLangStringBuilder:(JavaLangStringBuilder *)ret
                                                  withBoolean:(jboolean)sendPhoneOrientation {
  ADXWidgetFrame *frame = self;
  [((JavaLangStringBuilder *) nil_chk(ret)) appendWithNSString:@"{\n"];
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withInt_(ret, @"left", frame->left_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withInt_(ret, @"top", frame->top_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withInt_(ret, @"right", frame->right_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withInt_(ret, @"bottom", frame->bottom_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"pivotX", frame->pivotX_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"pivotY", frame->pivotY_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"rotationX", frame->rotationX_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"rotationY", frame->rotationY_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"rotationZ", frame->rotationZ_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"translationX", frame->translationX_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"translationY", frame->translationY_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"translationZ", frame->translationZ_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"scaleX", frame->scaleX_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"scaleY", frame->scaleY_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"alpha", frame->alpha_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withInt_(ret, @"visibility", frame->left_);
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"interpolatedPos", frame->interpolatedPos_);
  if (sendPhoneOrientation) {
    ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"phone_orientation", ADXWidgetFrame_phone_orientation);
  }
  if (sendPhoneOrientation) {
    ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(ret, @"phone_orientation", ADXWidgetFrame_phone_orientation);
  }
  if ([((JavaUtilHashMap *) nil_chk(frame->mCustom_)) size] != 0) {
    [ret appendWithNSString:@"custom : {\n"];
    for (NSString * __strong s in nil_chk([frame->mCustom_ keySet])) {
      ADXCustomVariable *value = JreRetainedLocalValue([frame->mCustom_ getWithId:s]);
      [ret appendWithNSString:s];
      [ret appendWithNSString:@": "];
      switch ([((ADXCustomVariable *) nil_chk(value)) getType]) {
        case ADXTypedValues_Custom_TYPE_INT:
        [ret appendWithInt:[value getIntegerValue]];
        [ret appendWithNSString:@",\n"];
        break;
        case ADXTypedValues_Custom_TYPE_FLOAT:
        case ADXTypedValues_Custom_TYPE_DIMENSION:
        [ret appendWithFloat:[value getFloatValue]];
        [ret appendWithNSString:@",\n"];
        break;
        case ADXTypedValues_Custom_TYPE_COLOR:
        [ret appendWithNSString:@"'"];
        [ret appendWithNSString:ADXCustomVariable_colorStringWithInt_([value getIntegerValue])];
        [ret appendWithNSString:@"',\n"];
        break;
        case ADXTypedValues_Custom_TYPE_STRING:
        [ret appendWithNSString:@"'"];
        [ret appendWithNSString:[value getStringValue]];
        [ret appendWithNSString:@"',\n"];
        break;
        case ADXTypedValues_Custom_TYPE_BOOLEAN:
        [ret appendWithNSString:@"'"];
        [ret appendWithBoolean:[value getBooleanValue]];
        [ret appendWithNSString:@"',\n"];
        break;
      }
    }
    [ret appendWithNSString:@"}\n"];
  }
  [ret appendWithNSString:@"}\n"];
  return ret;
}

+ (void)addWithJavaLangStringBuilder:(JavaLangStringBuilder *)s
                        withNSString:(NSString *)title
                             withInt:(jint)value {
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withInt_(s, title, value);
}

+ (void)addWithJavaLangStringBuilder:(JavaLangStringBuilder *)s
                        withNSString:(NSString *)title
                           withFloat:(jfloat)value {
  ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(s, title, value);
}

- (void)printCustomAttributes {
  JavaLangStackTraceElement *s = IOSObjectArray_Get(nil_chk([create_JavaLangThrowable_init() getStackTrace]), 1);
  NSString *ss = JreStrcat("$$CI$$", @".(", [((JavaLangStackTraceElement *) nil_chk(s)) getFileName], ':', [s getLineNumber], @") ", [s getMethodName]);
  JreStrAppend(&ss, "CI", ' ', (JreIntMod(((jint) [self hash]), 1000)));
  if (widget_ != nil) {
    JreStrAppend(&ss, "CIC", '/', (JreIntMod(((jint) [widget_ hash]), 1000)), ' ');
  }
  else {
    JreStrAppend(&ss, "$", @"/NULL ");
  }
  if (mCustom_ != nil) for (NSString * __strong key in nil_chk([mCustom_ keySet])) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", ss, [((ADXCustomVariable *) nil_chk([mCustom_ getWithId:key])) description])];
  }
}

- (void)logvWithNSString:(NSString *)str {
  JavaLangStackTraceElement *s = IOSObjectArray_Get(nil_chk([create_JavaLangThrowable_init() getStackTrace]), 1);
  NSString *ss = JreStrcat("$$CI$$", @".(", [((JavaLangStackTraceElement *) nil_chk(s)) getFileName], ':', [s getLineNumber], @") ", [s getMethodName]);
  JreStrAppend(&ss, "CI", ' ', (JreIntMod(((jint) [self hash]), 1000)));
  if (widget_ != nil) {
    JreStrAppend(&ss, "CI", '/', (JreIntMod(((jint) [widget_ hash]), 1000)));
  }
  else {
    JreStrAppend(&ss, "$", @"/NULL");
  }
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$C$", ss, ' ', str)];
}

- (void)__javaClone:(ADXWidgetFrame *)original {
  [super __javaClone:original];
  [widget_ release];
}

- (void)dealloc {
  RELEASE_(mCustom_);
  RELEASE_(name_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "F", 0xa, 3, 5, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXWidgetFrame;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXWidgetFrame;", 0x1, 6, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 13, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 18, -1, -1, -1, -1 },
    { NULL, "LADXCustomVariable;", 0x1, 19, 10, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 20, -1, -1 },
    { NULL, "Z", 0x1, 21, 22, 23, -1, -1, -1 },
    { NULL, "V", 0x0, 24, 25, 23, -1, -1, -1 },
    { NULL, "LJavaLangStringBuilder;", 0x1, 26, 27, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuilder;", 0x1, 26, 28, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 29, 30, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 29, 31, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 32, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(width);
  methods[1].selector = @selector(height);
  methods[2].selector = @selector(init);
  methods[3].selector = @selector(initWithADXConstraintWidget:);
  methods[4].selector = @selector(initWithADXWidgetFrame:);
  methods[5].selector = @selector(updateAttributesWithADXWidgetFrame:);
  methods[6].selector = @selector(isDefaultTransform);
  methods[7].selector = @selector(interpolateWithInt:withInt:withADXWidgetFrame:withADXWidgetFrame:withADXWidgetFrame:withADXTransition:withFloat:);
  methods[8].selector = @selector(interpolateWithFloat:withFloat:withFloat:withFloat:);
  methods[9].selector = @selector(centerX);
  methods[10].selector = @selector(centerY);
  methods[11].selector = @selector(update);
  methods[12].selector = @selector(updateWithADXConstraintWidget:);
  methods[13].selector = @selector(addCustomColorWithNSString:withInt:);
  methods[14].selector = @selector(getCustomColorWithNSString:);
  methods[15].selector = @selector(addCustomFloatWithNSString:withFloat:);
  methods[16].selector = @selector(getCustomFloatWithNSString:);
  methods[17].selector = @selector(setCustomAttributeWithNSString:withInt:withFloat:);
  methods[18].selector = @selector(setCustomAttributeWithNSString:withInt:withInt:);
  methods[19].selector = @selector(setCustomAttributeWithNSString:withInt:withBoolean:);
  methods[20].selector = @selector(setCustomAttributeWithNSString:withInt:withNSString:);
  methods[21].selector = @selector(getCustomAttributeWithNSString:);
  methods[22].selector = @selector(getCustomAttributeNames);
  methods[23].selector = @selector(setValueWithNSString:withADXCLElement:);
  methods[24].selector = @selector(parseCustomWithADXCLElement:);
  methods[25].selector = @selector(serializeWithJavaLangStringBuilder:);
  methods[26].selector = @selector(serializeWithJavaLangStringBuilder:withBoolean:);
  methods[27].selector = @selector(addWithJavaLangStringBuilder:withNSString:withInt:);
  methods[28].selector = @selector(addWithJavaLangStringBuilder:withNSString:withFloat:);
  methods[29].selector = @selector(printCustomAttributes);
  methods[30].selector = @selector(logvWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "OLD_SYSTEM", "Z", .constantValue.asBOOL = ADXWidgetFrame_OLD_SYSTEM, 0x1a, -1, -1, -1, -1 },
    { "widget_", "LADXConstraintWidget;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "left_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "top_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "right_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "bottom_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "pivotX_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "pivotY_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "rotationX_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "rotationY_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "rotationZ_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "translationX_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "translationY_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "translationZ_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "phone_orientation", "F", .constantValue.asLong = 0, 0x9, -1, 33, -1, -1 },
    { "scaleX_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "scaleY_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "alpha_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "interpolatedPos_", "F", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "visibility_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "mCustom_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x11, -1, -1, 34, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXConstraintWidget;", "LADXWidgetFrame;", "updateAttributes", "interpolate", "IILADXWidgetFrame;LADXWidgetFrame;LADXWidgetFrame;LADXTransition;F", "FFFF", "update", "addCustomColor", "LNSString;I", "getCustomColor", "LNSString;", "addCustomFloat", "LNSString;F", "getCustomFloat", "setCustomAttribute", "LNSString;IF", "LNSString;II", "LNSString;IZ", "LNSString;ILNSString;", "getCustomAttribute", "()Ljava/util/Set<Ljava/lang/String;>;", "setValue", "LNSString;LADXCLElement;", "LADXCLParsingException;", "parseCustom", "LADXCLElement;", "serialize", "LJavaLangStringBuilder;", "LJavaLangStringBuilder;Z", "add", "LJavaLangStringBuilder;LNSString;I", "LJavaLangStringBuilder;LNSString;F", "logv", &ADXWidgetFrame_phone_orientation, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomVariable;>;" };
  static const J2ObjcClassInfo _ADXWidgetFrame = { "WidgetFrame", "androidx.constraintlayout.core.state", ptrTable, methods, fields, 7, 0x1, 31, 22, -1, -1, -1, -1, -1 };
  return &_ADXWidgetFrame;
}

@end

void ADXWidgetFrame_init(ADXWidgetFrame *self) {
  NSObject_init(self);
  self->widget_ = nil;
  self->left_ = 0;
  self->top_ = 0;
  self->right_ = 0;
  self->bottom_ = 0;
  self->pivotX_ = JavaLangFloat_NaN;
  self->pivotY_ = JavaLangFloat_NaN;
  self->rotationX_ = JavaLangFloat_NaN;
  self->rotationY_ = JavaLangFloat_NaN;
  self->rotationZ_ = JavaLangFloat_NaN;
  self->translationX_ = JavaLangFloat_NaN;
  self->translationY_ = JavaLangFloat_NaN;
  self->translationZ_ = JavaLangFloat_NaN;
  self->scaleX_ = JavaLangFloat_NaN;
  self->scaleY_ = JavaLangFloat_NaN;
  self->alpha_ = JavaLangFloat_NaN;
  self->interpolatedPos_ = JavaLangFloat_NaN;
  self->visibility_ = ADXConstraintWidget_VISIBLE;
  JreStrongAssignAndConsume(&self->mCustom_, new_JavaUtilHashMap_init());
  JreStrongAssign(&self->name_, nil);
}

ADXWidgetFrame *new_ADXWidgetFrame_init() {
  J2OBJC_NEW_IMPL(ADXWidgetFrame, init)
}

ADXWidgetFrame *create_ADXWidgetFrame_init() {
  J2OBJC_CREATE_IMPL(ADXWidgetFrame, init)
}

void ADXWidgetFrame_initWithADXConstraintWidget_(ADXWidgetFrame *self, ADXConstraintWidget *widget) {
  NSObject_init(self);
  self->widget_ = nil;
  self->left_ = 0;
  self->top_ = 0;
  self->right_ = 0;
  self->bottom_ = 0;
  self->pivotX_ = JavaLangFloat_NaN;
  self->pivotY_ = JavaLangFloat_NaN;
  self->rotationX_ = JavaLangFloat_NaN;
  self->rotationY_ = JavaLangFloat_NaN;
  self->rotationZ_ = JavaLangFloat_NaN;
  self->translationX_ = JavaLangFloat_NaN;
  self->translationY_ = JavaLangFloat_NaN;
  self->translationZ_ = JavaLangFloat_NaN;
  self->scaleX_ = JavaLangFloat_NaN;
  self->scaleY_ = JavaLangFloat_NaN;
  self->alpha_ = JavaLangFloat_NaN;
  self->interpolatedPos_ = JavaLangFloat_NaN;
  self->visibility_ = ADXConstraintWidget_VISIBLE;
  JreStrongAssignAndConsume(&self->mCustom_, new_JavaUtilHashMap_init());
  JreStrongAssign(&self->name_, nil);
  self->widget_ = widget;
}

ADXWidgetFrame *new_ADXWidgetFrame_initWithADXConstraintWidget_(ADXConstraintWidget *widget) {
  J2OBJC_NEW_IMPL(ADXWidgetFrame, initWithADXConstraintWidget_, widget)
}

ADXWidgetFrame *create_ADXWidgetFrame_initWithADXConstraintWidget_(ADXConstraintWidget *widget) {
  J2OBJC_CREATE_IMPL(ADXWidgetFrame, initWithADXConstraintWidget_, widget)
}

void ADXWidgetFrame_initWithADXWidgetFrame_(ADXWidgetFrame *self, ADXWidgetFrame *frame) {
  NSObject_init(self);
  self->widget_ = nil;
  self->left_ = 0;
  self->top_ = 0;
  self->right_ = 0;
  self->bottom_ = 0;
  self->pivotX_ = JavaLangFloat_NaN;
  self->pivotY_ = JavaLangFloat_NaN;
  self->rotationX_ = JavaLangFloat_NaN;
  self->rotationY_ = JavaLangFloat_NaN;
  self->rotationZ_ = JavaLangFloat_NaN;
  self->translationX_ = JavaLangFloat_NaN;
  self->translationY_ = JavaLangFloat_NaN;
  self->translationZ_ = JavaLangFloat_NaN;
  self->scaleX_ = JavaLangFloat_NaN;
  self->scaleY_ = JavaLangFloat_NaN;
  self->alpha_ = JavaLangFloat_NaN;
  self->interpolatedPos_ = JavaLangFloat_NaN;
  self->visibility_ = ADXConstraintWidget_VISIBLE;
  JreStrongAssignAndConsume(&self->mCustom_, new_JavaUtilHashMap_init());
  JreStrongAssign(&self->name_, nil);
  self->widget_ = ((ADXWidgetFrame *) nil_chk(frame))->widget_;
  self->left_ = frame->left_;
  self->top_ = frame->top_;
  self->right_ = frame->right_;
  self->bottom_ = frame->bottom_;
  [self updateAttributesWithADXWidgetFrame:frame];
}

ADXWidgetFrame *new_ADXWidgetFrame_initWithADXWidgetFrame_(ADXWidgetFrame *frame) {
  J2OBJC_NEW_IMPL(ADXWidgetFrame, initWithADXWidgetFrame_, frame)
}

ADXWidgetFrame *create_ADXWidgetFrame_initWithADXWidgetFrame_(ADXWidgetFrame *frame) {
  J2OBJC_CREATE_IMPL(ADXWidgetFrame, initWithADXWidgetFrame_, frame)
}

void ADXWidgetFrame_interpolateWithInt_withInt_withADXWidgetFrame_withADXWidgetFrame_withADXWidgetFrame_withADXTransition_withFloat_(jint parentWidth, jint parentHeight, ADXWidgetFrame *frame, ADXWidgetFrame *start, ADXWidgetFrame *end, ADXTransition *transition, jfloat progress) {
  ADXWidgetFrame_initialize();
  jint frameNumber = JreFpToInt((progress * 100));
  jint startX = ((ADXWidgetFrame *) nil_chk(start))->left_;
  jint startY = start->top_;
  jint endX = ((ADXWidgetFrame *) nil_chk(end))->left_;
  jint endY = end->top_;
  jint startWidth = start->right_ - start->left_;
  jint startHeight = start->bottom_ - start->top_;
  jint endWidth = end->right_ - end->left_;
  jint endHeight = end->bottom_ - end->top_;
  jfloat progressPosition = progress;
  jfloat startAlpha = start->alpha_;
  jfloat endAlpha = end->alpha_;
  if (start->visibility_ == ADXConstraintWidget_GONE) {
    JreMinusAssignIntF(&startX, endWidth / 2.0f);
    JreMinusAssignIntF(&startY, endHeight / 2.0f);
    startWidth = endWidth;
    startHeight = endHeight;
    if (JavaLangFloat_isNaNWithFloat_(startAlpha)) {
      startAlpha = 0.0f;
    }
  }
  if (end->visibility_ == ADXConstraintWidget_GONE) {
    JreMinusAssignIntF(&endX, startWidth / 2.0f);
    JreMinusAssignIntF(&endY, startHeight / 2.0f);
    endWidth = startWidth;
    endHeight = startHeight;
    if (JavaLangFloat_isNaNWithFloat_(endAlpha)) {
      endAlpha = 0.0f;
    }
  }
  if (JavaLangFloat_isNaNWithFloat_(startAlpha) && !JavaLangFloat_isNaNWithFloat_(endAlpha)) {
    startAlpha = 1.0f;
  }
  if (!JavaLangFloat_isNaNWithFloat_(startAlpha) && JavaLangFloat_isNaNWithFloat_(endAlpha)) {
    endAlpha = 1.0f;
  }
  if (((ADXWidgetFrame *) nil_chk(frame))->widget_ != nil && [((ADXTransition *) nil_chk(transition)) hasPositionKeyframes]) {
    ADXTransition_KeyPosition *firstPosition = JreRetainedLocalValue([((ADXTransition *) nil_chk(transition)) findPreviousPositionWithNSString:frame->widget_->stringId_ withInt:frameNumber]);
    ADXTransition_KeyPosition *lastPosition = JreRetainedLocalValue([transition findNextPositionWithNSString:((ADXConstraintWidget *) nil_chk(frame->widget_))->stringId_ withInt:frameNumber]);
    if (firstPosition == lastPosition) {
      lastPosition = nil;
    }
    jint interpolateStartFrame = 0;
    jint interpolateEndFrame = 100;
    if (firstPosition != nil) {
      startX = JreFpToInt((firstPosition->x_ * parentWidth));
      startY = JreFpToInt((firstPosition->y_ * parentHeight));
      interpolateStartFrame = firstPosition->frame_;
    }
    if (lastPosition != nil) {
      endX = JreFpToInt((lastPosition->x_ * parentWidth));
      endY = JreFpToInt((lastPosition->y_ * parentHeight));
      interpolateEndFrame = lastPosition->frame_;
    }
    progressPosition = (progress * 100.0f - interpolateStartFrame) / (jfloat) (interpolateEndFrame - interpolateStartFrame);
  }
  frame->widget_ = start->widget_;
  frame->left_ = JreFpToInt((startX + progressPosition * (endX - startX)));
  frame->top_ = JreFpToInt((startY + progressPosition * (endY - startY)));
  jint width = JreFpToInt(((1 - progress) * startWidth + (progress * endWidth)));
  jint height = JreFpToInt(((1 - progress) * startHeight + (progress * endHeight)));
  frame->right_ = frame->left_ + width;
  frame->bottom_ = frame->top_ + height;
  frame->pivotX_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->pivotX_, end->pivotX_, 0.5f, progress);
  frame->pivotY_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->pivotY_, end->pivotY_, 0.5f, progress);
  frame->rotationX_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->rotationX_, end->rotationX_, 0.0f, progress);
  frame->rotationY_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->rotationY_, end->rotationY_, 0.0f, progress);
  frame->rotationZ_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->rotationZ_, end->rotationZ_, 0.0f, progress);
  frame->scaleX_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->scaleX_, end->scaleX_, 1.0f, progress);
  frame->scaleY_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->scaleY_, end->scaleY_, 1.0f, progress);
  frame->translationX_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->translationX_, end->translationX_, 0.0f, progress);
  frame->translationY_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->translationY_, end->translationY_, 0.0f, progress);
  frame->translationZ_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(start->translationZ_, end->translationZ_, 0.0f, progress);
  frame->alpha_ = ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(startAlpha, endAlpha, 1.0f, progress);
}

jfloat ADXWidgetFrame_interpolateWithFloat_withFloat_withFloat_withFloat_(jfloat start, jfloat end, jfloat defaultValue, jfloat progress) {
  ADXWidgetFrame_initialize();
  jboolean isStartUnset = JavaLangFloat_isNaNWithFloat_(start);
  jboolean isEndUnset = JavaLangFloat_isNaNWithFloat_(end);
  if (isStartUnset && isEndUnset) {
    return JavaLangFloat_NaN;
  }
  if (isStartUnset) {
    start = defaultValue;
  }
  if (isEndUnset) {
    end = defaultValue;
  }
  return (start + progress * (end - start));
}

void ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withInt_(JavaLangStringBuilder *s, NSString *title, jint value) {
  ADXWidgetFrame_initialize();
  [((JavaLangStringBuilder *) nil_chk(s)) appendWithNSString:title];
  [s appendWithNSString:@": "];
  [s appendWithInt:value];
  [s appendWithNSString:@",\n"];
}

void ADXWidgetFrame_addWithJavaLangStringBuilder_withNSString_withFloat_(JavaLangStringBuilder *s, NSString *title, jfloat value) {
  ADXWidgetFrame_initialize();
  if (JavaLangFloat_isNaNWithFloat_(value)) {
    return;
  }
  [((JavaLangStringBuilder *) nil_chk(s)) appendWithNSString:title];
  [s appendWithNSString:@": "];
  [s appendWithFloat:value];
  [s appendWithNSString:@",\n"];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXWidgetFrame)
