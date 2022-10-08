//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\analyzer\DimensionDependency.java
//

#include "Dependency.h"
#include "DependencyNode.h"
#include "DimensionDependency.h"
#include "HorizontalWidgetRun.h"
#include "J2ObjC_source.h"
#include "WidgetRun.h"
#include "java/util/List.h"


@implementation ADXDimensionDependency

- (instancetype)initPackagePrivateWithADXWidgetRun:(ADXWidgetRun *)run {
  ADXDimensionDependency_initPackagePrivateWithADXWidgetRun_(self, run);
  return self;
}

- (void)resolveWithInt:(jint)value {
  if (resolved_) {
    return;
  }
  self->resolved_ = true;
  self->value_ = value;
  for (id<ADXDependency> __strong node in nil_chk(dependencies_)) {
    [((id<ADXDependency>) nil_chk(node)) updateWithADXDependency:node];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithADXWidgetRun:);
  methods[1].selector = @selector(resolveWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "wrapValue_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXWidgetRun;", "resolve", "I" };
  static const J2ObjcClassInfo _ADXDimensionDependency = { "DimensionDependency", "androidx.constraintlayout.core.widgets.analyzer", ptrTable, methods, fields, 7, 0x0, 2, 1, -1, -1, -1, -1, -1 };
  return &_ADXDimensionDependency;
}

@end

void ADXDimensionDependency_initPackagePrivateWithADXWidgetRun_(ADXDimensionDependency *self, ADXWidgetRun *run) {
  ADXDependencyNode_initWithADXWidgetRun_(self, run);
  if ([run isKindOfClass:[ADXHorizontalWidgetRun class]]) {
    JreStrongAssign(&self->type_, JreLoadEnum(ADXDependencyNode_Type, HORIZONTAL_DIMENSION));
  }
  else {
    JreStrongAssign(&self->type_, JreLoadEnum(ADXDependencyNode_Type, VERTICAL_DIMENSION));
  }
}

ADXDimensionDependency *new_ADXDimensionDependency_initPackagePrivateWithADXWidgetRun_(ADXWidgetRun *run) {
  J2OBJC_NEW_IMPL(ADXDimensionDependency, initPackagePrivateWithADXWidgetRun_, run)
}

ADXDimensionDependency *create_ADXDimensionDependency_initPackagePrivateWithADXWidgetRun_(ADXWidgetRun *run) {
  J2OBJC_CREATE_IMPL(ADXDimensionDependency, initPackagePrivateWithADXWidgetRun_, run)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXDimensionDependency)
