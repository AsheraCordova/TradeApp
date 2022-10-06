//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\analyzer\DependencyNode.java
//

#include "ConstraintWidget.h"
#include "Dependency.h"
#include "DependencyNode.h"
#include "DimensionDependency.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "WidgetRun.h"
#include "java/io/Serializable.h"
#include "java/lang/Comparable.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"


__attribute__((unused)) static void ADXDependencyNode_Type_initWithNSString_withInt_(ADXDependencyNode_Type *self, NSString *__name, jint __ordinal);

@implementation ADXDependencyNode

- (instancetype)initWithADXWidgetRun:(ADXWidgetRun *)run {
  ADXDependencyNode_initWithADXWidgetRun_(self, run);
  return self;
}

- (NSString *)description {
  return JreStrcat("$C@C@$I$IC", [((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run_))->widget_)) getDebugName], ':', type_, '(', (resolved_ ? JavaLangInteger_valueOfWithInt_(value_) : (id) @"unresolved"), @") <t=", [((id<JavaUtilList>) nil_chk(targets_)) size], @":d=", [((id<JavaUtilList>) nil_chk(dependencies_)) size], '>');
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

- (void)updateWithADXDependency:(id<ADXDependency>)node {
  for (ADXDependencyNode * __strong target in nil_chk(targets_)) {
    if (!((ADXDependencyNode *) nil_chk(target))->resolved_) {
      return;
    }
  }
  readyToSolve_ = true;
  if (updateDelegate_ != nil) {
    [updateDelegate_ updateWithADXDependency:self];
  }
  if (delegateToWidgetRun_) {
    [((ADXWidgetRun *) nil_chk(run_)) updateWithADXDependency:self];
    return;
  }
  ADXDependencyNode *target = nil;
  jint numTargets = 0;
  for (ADXDependencyNode * __strong t in nil_chk(targets_)) {
    if ([t isKindOfClass:[ADXDimensionDependency class]]) {
      continue;
    }
    target = t;
    numTargets++;
  }
  if (target != nil && numTargets == 1 && target->resolved_) {
    if (marginDependency_ != nil) {
      if (marginDependency_->resolved_) {
        margin_ = marginFactor_ * marginDependency_->value_;
      }
      else {
        return;
      }
    }
    [self resolveWithInt:target->value_ + margin_];
  }
  if (updateDelegate_ != nil) {
    [updateDelegate_ updateWithADXDependency:self];
  }
}

- (void)addDependencyWithADXDependency:(id<ADXDependency>)dependency {
  [((id<JavaUtilList>) nil_chk(dependencies_)) addWithId:dependency];
  if (resolved_) {
    [((id<ADXDependency>) nil_chk(dependency)) updateWithADXDependency:dependency];
  }
}

- (NSString *)name {
  NSString *definition = JreRetainedLocalValue([((ADXConstraintWidget *) nil_chk(((ADXWidgetRun *) nil_chk(run_))->widget_)) getDebugName]);
  if (type_ == JreLoadEnum(ADXDependencyNode_Type, LEFT) || type_ == JreLoadEnum(ADXDependencyNode_Type, RIGHT)) {
    JreStrAppend(&definition, "$", @"_HORIZONTAL");
  }
  else {
    JreStrAppend(&definition, "$", @"_VERTICAL");
  }
  JreStrAppend(&definition, "C$", ':', [((ADXDependencyNode_Type *) nil_chk(type_)) name]);
  return definition;
}

- (void)clear {
  [((id<JavaUtilList>) nil_chk(targets_)) clear];
  [((id<JavaUtilList>) nil_chk(dependencies_)) clear];
  resolved_ = false;
  value_ = 0;
  readyToSolve_ = false;
  delegateToWidgetRun_ = false;
}

- (void)dealloc {
  RELEASE_(updateDelegate_);
  RELEASE_(run_);
  RELEASE_(type_);
  RELEASE_(marginDependency_);
  RELEASE_(dependencies_);
  RELEASE_(targets_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXWidgetRun:);
  methods[1].selector = @selector(description);
  methods[2].selector = @selector(resolveWithInt:);
  methods[3].selector = @selector(updateWithADXDependency:);
  methods[4].selector = @selector(addDependencyWithADXDependency:);
  methods[5].selector = @selector(name);
  methods[6].selector = @selector(clear);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "updateDelegate_", "LADXDependency;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "delegateToWidgetRun_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "readyToSolve_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "run_", "LADXWidgetRun;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "type_", "LADXDependencyNode_Type;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "margin_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "value_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "marginFactor_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "marginDependency_", "LADXDimensionDependency;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "resolved_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "dependencies_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, 7, -1 },
    { "targets_", "LJavaUtilList;", .constantValue.asLong = 0, 0x0, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "LADXWidgetRun;", "toString", "resolve", "I", "update", "LADXDependency;", "addDependency", "Ljava/util/List<Landroidx/constraintlayout/core/widgets/analyzer/Dependency;>;", "Ljava/util/List<Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;>;", "LADXDependencyNode_Type;" };
  static const J2ObjcClassInfo _ADXDependencyNode = { "DependencyNode", "androidx.constraintlayout.core.widgets.analyzer", ptrTable, methods, fields, 7, 0x1, 7, 12, -1, 9, -1, -1, -1 };
  return &_ADXDependencyNode;
}

@end

void ADXDependencyNode_initWithADXWidgetRun_(ADXDependencyNode *self, ADXWidgetRun *run) {
  NSObject_init(self);
  JreStrongAssign(&self->updateDelegate_, nil);
  self->delegateToWidgetRun_ = false;
  self->readyToSolve_ = false;
  JreStrongAssign(&self->type_, JreLoadEnum(ADXDependencyNode_Type, UNKNOWN));
  self->marginFactor_ = 1;
  JreStrongAssign(&self->marginDependency_, nil);
  self->resolved_ = false;
  JreStrongAssignAndConsume(&self->dependencies_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->targets_, new_JavaUtilArrayList_init());
  JreStrongAssign(&self->run_, run);
}

ADXDependencyNode *new_ADXDependencyNode_initWithADXWidgetRun_(ADXWidgetRun *run) {
  J2OBJC_NEW_IMPL(ADXDependencyNode, initWithADXWidgetRun_, run)
}

ADXDependencyNode *create_ADXDependencyNode_initWithADXWidgetRun_(ADXWidgetRun *run) {
  J2OBJC_CREATE_IMPL(ADXDependencyNode, initWithADXWidgetRun_, run)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXDependencyNode)

J2OBJC_INITIALIZED_DEFN(ADXDependencyNode_Type)

ADXDependencyNode_Type *ADXDependencyNode_Type_values_[8];

@implementation ADXDependencyNode_Type

+ (IOSObjectArray *)values {
  return ADXDependencyNode_Type_values();
}

+ (ADXDependencyNode_Type *)valueOfWithNSString:(NSString *)name {
  return ADXDependencyNode_Type_valueOfWithNSString_(name);
}

- (ADXDependencyNode_Type_Enum)toNSEnum {
  return (ADXDependencyNode_Type_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LADXDependencyNode_Type;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXDependencyNode_Type;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "UNKNOWN", "LADXDependencyNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "HORIZONTAL_DIMENSION", "LADXDependencyNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "VERTICAL_DIMENSION", "LADXDependencyNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "LEFT", "LADXDependencyNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
    { "RIGHT", "LADXDependencyNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 6, -1, -1 },
    { "TOP", "LADXDependencyNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 7, -1, -1 },
    { "BOTTOM", "LADXDependencyNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 8, -1, -1 },
    { "BASELINE", "LADXDependencyNode_Type;", .constantValue.asLong = 0, 0x4019, -1, 9, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ADXDependencyNode_Type, UNKNOWN), &JreEnum(ADXDependencyNode_Type, HORIZONTAL_DIMENSION), &JreEnum(ADXDependencyNode_Type, VERTICAL_DIMENSION), &JreEnum(ADXDependencyNode_Type, LEFT), &JreEnum(ADXDependencyNode_Type, RIGHT), &JreEnum(ADXDependencyNode_Type, TOP), &JreEnum(ADXDependencyNode_Type, BOTTOM), &JreEnum(ADXDependencyNode_Type, BASELINE), "LADXDependencyNode;", "Ljava/lang/Enum<Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;>;" };
  static const J2ObjcClassInfo _ADXDependencyNode_Type = { "Type", "androidx.constraintlayout.core.widgets.analyzer", ptrTable, methods, fields, 7, 0x4018, 2, 8, 10, -1, -1, 11, -1 };
  return &_ADXDependencyNode_Type;
}

+ (void)initialize {
  if (self == [ADXDependencyNode_Type class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 8 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 8; i++) {
      ((void)(ADXDependencyNode_Type_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      ADXDependencyNode_Type_initWithNSString_withInt_(e, JreEnumConstantName(ADXDependencyNode_Type_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(ADXDependencyNode_Type)
  }
}

@end

void ADXDependencyNode_Type_initWithNSString_withInt_(ADXDependencyNode_Type *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *ADXDependencyNode_Type_values() {
  ADXDependencyNode_Type_initialize();
  return [IOSObjectArray arrayWithObjects:ADXDependencyNode_Type_values_ count:8 type:ADXDependencyNode_Type_class_()];
}

ADXDependencyNode_Type *ADXDependencyNode_Type_valueOfWithNSString_(NSString *name) {
  ADXDependencyNode_Type_initialize();
  for (int i = 0; i < 8; i++) {
    ADXDependencyNode_Type *e = ADXDependencyNode_Type_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ADXDependencyNode_Type *ADXDependencyNode_Type_fromOrdinal(NSUInteger ordinal) {
  ADXDependencyNode_Type_initialize();
  if (ordinal >= 8) {
    return nil;
  }
  return ADXDependencyNode_Type_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXDependencyNode_Type)
