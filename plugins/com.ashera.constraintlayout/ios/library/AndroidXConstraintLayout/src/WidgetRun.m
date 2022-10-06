//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\analyzer\WidgetRun.java
//

#include "ConstraintAnchor.h"
#include "ConstraintWidget.h"
#include "Dependency.h"
#include "DependencyNode.h"
#include "DimensionDependency.h"
#include "HorizontalWidgetRun.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "RunGroup.h"
#include "VerticalWidgetRun.h"
#include "WidgetRun.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/util/List.h"


@interface ADXWidgetRun ()

- (void)resolveDimensionWithInt:(jint)orientation
                        withInt:(jint)distance;

@end

__attribute__((unused)) static ADXDependencyNode *ADXWidgetRun_getTargetWithADXConstraintAnchor_(ADXWidgetRun *self, ADXConstraintAnchor *anchor);

__attribute__((unused)) static void ADXWidgetRun_resolveDimensionWithInt_withInt_(ADXWidgetRun *self, jint orientation, jint distance);

__attribute__((unused)) static jint ADXWidgetRun_getLimitedDimensionWithInt_withInt_(ADXWidgetRun *self, jint dimension, jint orientation);

__attribute__((unused)) static void ADXWidgetRun_RunType_initWithNSString_withInt_(ADXWidgetRun_RunType *self, NSString *__name, jint __ordinal);

@implementation ADXWidgetRun

- (instancetype)initWithADXConstraintWidget:(ADXConstraintWidget *)widget {
  ADXWidgetRun_initWithADXConstraintWidget_(self, widget);
  return self;
}

- (void)clear {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)apply {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)applyToWidget {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)reset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jboolean)supportsWrapComputation {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isDimensionResolved {
  return ((ADXDimensionDependency *) nil_chk(dimension_))->resolved_;
}

- (jboolean)isCenterConnection {
  jint connections = 0;
  jint count = [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(start_))->targets_)) size];
  for (jint i = 0; i < count; i++) {
    ADXDependencyNode *dependency = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(start_))->targets_)) getWithInt:i]);
    if (((ADXDependencyNode *) nil_chk(dependency))->run_ != self) {
      connections++;
    }
  }
  count = [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(end_))->targets_)) size];
  for (jint i = 0; i < count; i++) {
    ADXDependencyNode *dependency = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(end_))->targets_)) getWithInt:i]);
    if (((ADXDependencyNode *) nil_chk(dependency))->run_ != self) {
      connections++;
    }
  }
  return connections >= 2;
}

- (jlong)wrapSizeWithInt:(jint)direction {
  if (((ADXDimensionDependency *) nil_chk(dimension_))->resolved_) {
    jlong size = dimension_->value_;
    if ([self isCenterConnection]) {
      size += ((ADXDependencyNode *) nil_chk(start_))->margin_ - ((ADXDependencyNode *) nil_chk(end_))->margin_;
    }
    else {
      if (direction == ADXRunGroup_START) {
        size += ((ADXDependencyNode *) nil_chk(start_))->margin_;
      }
      else {
        size -= ((ADXDependencyNode *) nil_chk(end_))->margin_;
      }
    }
    return size;
  }
  return 0;
}

- (ADXDependencyNode *)getTargetWithADXConstraintAnchor:(ADXConstraintAnchor *)anchor {
  return ADXWidgetRun_getTargetWithADXConstraintAnchor_(self, anchor);
}

- (void)updateRunCenterWithADXDependency:(id<ADXDependency>)dependency
                 withADXConstraintAnchor:(ADXConstraintAnchor *)startAnchor
                 withADXConstraintAnchor:(ADXConstraintAnchor *)endAnchor
                                 withInt:(jint)orientation {
  ADXDependencyNode *startTarget = ADXWidgetRun_getTargetWithADXConstraintAnchor_(self, startAnchor);
  ADXDependencyNode *endTarget = ADXWidgetRun_getTargetWithADXConstraintAnchor_(self, endAnchor);
  if (!(((ADXDependencyNode *) nil_chk(startTarget))->resolved_ && ((ADXDependencyNode *) nil_chk(endTarget))->resolved_)) {
    return;
  }
  jint startPos = startTarget->value_ + [((ADXConstraintAnchor *) nil_chk(startAnchor)) getMargin];
  jint endPos = ((ADXDependencyNode *) nil_chk(endTarget))->value_ - [((ADXConstraintAnchor *) nil_chk(endAnchor)) getMargin];
  jint distance = endPos - startPos;
  if (!((ADXDimensionDependency *) nil_chk(dimension_))->resolved_ && dimensionBehavior_ == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT)) {
    ADXWidgetRun_resolveDimensionWithInt_withInt_(self, orientation, distance);
  }
  if (!((ADXDimensionDependency *) nil_chk(dimension_))->resolved_) {
    return;
  }
  if (dimension_->value_ == distance) {
    [((ADXDependencyNode *) nil_chk(start_)) resolveWithInt:startPos];
    [((ADXDependencyNode *) nil_chk(end_)) resolveWithInt:endPos];
    return;
  }
  jfloat bias = orientation == ADXConstraintWidget_HORIZONTAL ? [((ADXConstraintWidget *) nil_chk(widget_)) getHorizontalBiasPercent] : [((ADXConstraintWidget *) nil_chk(widget_)) getVerticalBiasPercent];
  if (startTarget == endTarget) {
    startPos = startTarget->value_;
    endPos = endTarget->value_;
    bias = 0.5f;
  }
  jint availableDistance = (endPos - startPos - ((ADXDimensionDependency *) nil_chk(dimension_))->value_);
  [((ADXDependencyNode *) nil_chk(start_)) resolveWithInt:JreFpToInt((0.5f + startPos + availableDistance * bias))];
  [((ADXDependencyNode *) nil_chk(end_)) resolveWithInt:((ADXDependencyNode *) nil_chk(start_))->value_ + ((ADXDimensionDependency *) nil_chk(dimension_))->value_];
}

- (void)resolveDimensionWithInt:(jint)orientation
                        withInt:(jint)distance {
  ADXWidgetRun_resolveDimensionWithInt_withInt_(self, orientation, distance);
}

- (void)updateRunStartWithADXDependency:(id<ADXDependency>)dependency {
}

- (void)updateRunEndWithADXDependency:(id<ADXDependency>)dependency {
}

- (void)updateWithADXDependency:(id<ADXDependency>)dependency {
}

- (jint)getLimitedDimensionWithInt:(jint)dimension
                           withInt:(jint)orientation {
  return ADXWidgetRun_getLimitedDimensionWithInt_withInt_(self, dimension, orientation);
}

- (ADXDependencyNode *)getTargetWithADXConstraintAnchor:(ADXConstraintAnchor *)anchor
                                                withInt:(jint)orientation {
  if (((ADXConstraintAnchor *) nil_chk(anchor))->mTarget_ == nil) {
    return nil;
  }
  ADXDependencyNode *target = nil;
  ADXConstraintWidget *targetWidget = JreRetainedLocalValue(anchor->mTarget_->mOwner_);
  ADXWidgetRun *run = (orientation == ADXConstraintWidget_HORIZONTAL) ? ((ADXConstraintWidget *) nil_chk(targetWidget))->horizontalRun_ : (id) ((ADXConstraintWidget *) nil_chk(targetWidget))->verticalRun_;
  ADXConstraintAnchor_Type *targetType = JreRetainedLocalValue(anchor->mTarget_->mType_);
  switch ([targetType ordinal]) {
    case ADXConstraintAnchor_Type_Enum_TOP:
    case ADXConstraintAnchor_Type_Enum_LEFT:
    {
      target = run->start_;
    }
    break;
    case ADXConstraintAnchor_Type_Enum_BOTTOM:
    case ADXConstraintAnchor_Type_Enum_RIGHT:
    {
      target = run->end_;
    }
    break;
    default:
    break;
  }
  return target;
}

- (void)addTargetWithADXDependencyNode:(ADXDependencyNode *)node
                 withADXDependencyNode:(ADXDependencyNode *)target
                               withInt:(jint)margin {
  [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(node))->targets_)) addWithId:target];
  node->margin_ = margin;
  [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(target))->dependencies_)) addWithId:node];
}

- (void)addTargetWithADXDependencyNode:(ADXDependencyNode *)node
                 withADXDependencyNode:(ADXDependencyNode *)target
                               withInt:(jint)marginFactor
            withADXDimensionDependency:(ADXDimensionDependency *)dimensionDependency {
  [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(node))->targets_)) addWithId:target];
  [((id<JavaUtilList>) nil_chk(node->targets_)) addWithId:dimension_];
  node->marginFactor_ = marginFactor;
  JreStrongAssign(&node->marginDependency_, dimensionDependency);
  [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(target))->dependencies_)) addWithId:node];
  [((id<JavaUtilList>) nil_chk(((ADXDimensionDependency *) nil_chk(dimensionDependency))->dependencies_)) addWithId:node];
}

- (jlong)getWrapDimension {
  if (((ADXDimensionDependency *) nil_chk(dimension_))->resolved_) {
    return dimension_->value_;
  }
  return 0;
}

- (jboolean)isResolved {
  return resolved_;
}

- (void)dealloc {
  RELEASE_(widget_);
  RELEASE_(runGroup_);
  RELEASE_(dimensionBehavior_);
  RELEASE_(dimension_);
  RELEASE_(start_);
  RELEASE_(end_);
  RELEASE_(mRunType_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x400, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LADXDependencyNode;", 0x14, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 11, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x14, 13, 8, -1, -1, -1, -1 },
    { NULL, "LADXDependencyNode;", 0x14, 3, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x14, 15, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x14, 15, 17, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXConstraintWidget:);
  methods[1].selector = @selector(clear);
  methods[2].selector = @selector(apply);
  methods[3].selector = @selector(applyToWidget);
  methods[4].selector = @selector(reset);
  methods[5].selector = @selector(supportsWrapComputation);
  methods[6].selector = @selector(isDimensionResolved);
  methods[7].selector = @selector(isCenterConnection);
  methods[8].selector = @selector(wrapSizeWithInt:);
  methods[9].selector = @selector(getTargetWithADXConstraintAnchor:);
  methods[10].selector = @selector(updateRunCenterWithADXDependency:withADXConstraintAnchor:withADXConstraintAnchor:withInt:);
  methods[11].selector = @selector(resolveDimensionWithInt:withInt:);
  methods[12].selector = @selector(updateRunStartWithADXDependency:);
  methods[13].selector = @selector(updateRunEndWithADXDependency:);
  methods[14].selector = @selector(updateWithADXDependency:);
  methods[15].selector = @selector(getLimitedDimensionWithInt:withInt:);
  methods[16].selector = @selector(getTargetWithADXConstraintAnchor:withInt:);
  methods[17].selector = @selector(addTargetWithADXDependencyNode:withADXDependencyNode:withInt:);
  methods[18].selector = @selector(addTargetWithADXDependencyNode:withADXDependencyNode:withInt:withADXDimensionDependency:);
  methods[19].selector = @selector(getWrapDimension);
  methods[20].selector = @selector(isResolved);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "matchConstraintsType_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "widget_", "LADXConstraintWidget;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "runGroup_", "LADXRunGroup;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "dimensionBehavior_", "LADXConstraintWidget_DimensionBehaviour;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "dimension_", "LADXDimensionDependency;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "orientation_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "resolved_", "Z", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "start_", "LADXDependencyNode;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "end_", "LADXDependencyNode;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "mRunType_", "LADXWidgetRun_RunType;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXConstraintWidget;", "wrapSize", "I", "getTarget", "LADXConstraintAnchor;", "updateRunCenter", "LADXDependency;LADXConstraintAnchor;LADXConstraintAnchor;I", "resolveDimension", "II", "updateRunStart", "LADXDependency;", "updateRunEnd", "update", "getLimitedDimension", "LADXConstraintAnchor;I", "addTarget", "LADXDependencyNode;LADXDependencyNode;I", "LADXDependencyNode;LADXDependencyNode;ILADXDimensionDependency;", "LADXWidgetRun_RunType;" };
  static const J2ObjcClassInfo _ADXWidgetRun = { "WidgetRun", "androidx.constraintlayout.core.widgets.analyzer", ptrTable, methods, fields, 7, 0x401, 21, 10, -1, 18, -1, -1, -1 };
  return &_ADXWidgetRun;
}

@end

void ADXWidgetRun_initWithADXConstraintWidget_(ADXWidgetRun *self, ADXConstraintWidget *widget) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->dimension_, new_ADXDimensionDependency_initPackagePrivateWithADXWidgetRun_(self));
  self->orientation_ = ADXConstraintWidget_HORIZONTAL;
  self->resolved_ = false;
  JreStrongAssignAndConsume(&self->start_, new_ADXDependencyNode_initWithADXWidgetRun_(self));
  JreStrongAssignAndConsume(&self->end_, new_ADXDependencyNode_initWithADXWidgetRun_(self));
  JreStrongAssign(&self->mRunType_, JreLoadEnum(ADXWidgetRun_RunType, NONE));
  JreStrongAssign(&self->widget_, widget);
}

ADXDependencyNode *ADXWidgetRun_getTargetWithADXConstraintAnchor_(ADXWidgetRun *self, ADXConstraintAnchor *anchor) {
  if (((ADXConstraintAnchor *) nil_chk(anchor))->mTarget_ == nil) {
    return nil;
  }
  ADXDependencyNode *target = nil;
  ADXConstraintWidget *targetWidget = JreRetainedLocalValue(anchor->mTarget_->mOwner_);
  ADXConstraintAnchor_Type *targetType = JreRetainedLocalValue(anchor->mTarget_->mType_);
  switch ([targetType ordinal]) {
    case ADXConstraintAnchor_Type_Enum_LEFT:
    {
      ADXHorizontalWidgetRun *run = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(targetWidget))->horizontalRun_);
      target = ((ADXHorizontalWidgetRun *) nil_chk(run))->start_;
    }
    break;
    case ADXConstraintAnchor_Type_Enum_RIGHT:
    {
      ADXHorizontalWidgetRun *run = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(targetWidget))->horizontalRun_);
      target = ((ADXHorizontalWidgetRun *) nil_chk(run))->end_;
    }
    break;
    case ADXConstraintAnchor_Type_Enum_TOP:
    {
      ADXVerticalWidgetRun *run = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(targetWidget))->verticalRun_);
      target = ((ADXVerticalWidgetRun *) nil_chk(run))->start_;
    }
    break;
    case ADXConstraintAnchor_Type_Enum_BASELINE:
    {
      ADXVerticalWidgetRun *run = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(targetWidget))->verticalRun_);
      target = ((ADXVerticalWidgetRun *) nil_chk(run))->baseline_;
    }
    break;
    case ADXConstraintAnchor_Type_Enum_BOTTOM:
    {
      ADXVerticalWidgetRun *run = JreRetainedLocalValue(((ADXConstraintWidget *) nil_chk(targetWidget))->verticalRun_);
      target = ((ADXVerticalWidgetRun *) nil_chk(run))->end_;
    }
    break;
    default:
    break;
  }
  return target;
}

void ADXWidgetRun_resolveDimensionWithInt_withInt_(ADXWidgetRun *self, jint orientation, jint distance) {
  switch (self->matchConstraintsType_) {
    case ADXConstraintWidget_MATCH_CONSTRAINT_SPREAD:
    {
      [((ADXDimensionDependency *) nil_chk(self->dimension_)) resolveWithInt:ADXWidgetRun_getLimitedDimensionWithInt_withInt_(self, distance, orientation)];
    }
    break;
    case ADXConstraintWidget_MATCH_CONSTRAINT_PERCENT:
    {
      ADXConstraintWidget *parent = JreRetainedLocalValue([((ADXConstraintWidget *) nil_chk(self->widget_)) getParent]);
      if (parent != nil) {
        ADXWidgetRun *run = orientation == ADXConstraintWidget_HORIZONTAL ? parent->horizontalRun_ : (id) parent->verticalRun_;
        if (((ADXDimensionDependency *) nil_chk(run->dimension_))->resolved_) {
          jfloat percent = orientation == ADXConstraintWidget_HORIZONTAL ? ((ADXConstraintWidget *) nil_chk(self->widget_))->mMatchConstraintPercentWidth_ : ((ADXConstraintWidget *) nil_chk(self->widget_))->mMatchConstraintPercentHeight_;
          jint targetDimensionValue = run->dimension_->value_;
          jint size = JreFpToInt((0.5f + targetDimensionValue * percent));
          [self->dimension_ resolveWithInt:ADXWidgetRun_getLimitedDimensionWithInt_withInt_(self, size, orientation)];
        }
      }
    }
    break;
    case ADXConstraintWidget_MATCH_CONSTRAINT_WRAP:
    {
      jint wrapValue = ADXWidgetRun_getLimitedDimensionWithInt_withInt_(self, ((ADXDimensionDependency *) nil_chk(self->dimension_))->wrapValue_, orientation);
      [((ADXDimensionDependency *) nil_chk(self->dimension_)) resolveWithInt:JavaLangMath_minWithInt_withInt_(wrapValue, distance)];
    }
    break;
    case ADXConstraintWidget_MATCH_CONSTRAINT_RATIO:
    {
      if (((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(self->widget_))->horizontalRun_))->dimensionBehavior_ == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT) && self->widget_->horizontalRun_->matchConstraintsType_ == ADXConstraintWidget_MATCH_CONSTRAINT_RATIO && ((ADXVerticalWidgetRun *) nil_chk(self->widget_->verticalRun_))->dimensionBehavior_ == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT) && self->widget_->verticalRun_->matchConstraintsType_ == ADXConstraintWidget_MATCH_CONSTRAINT_RATIO) {
      }
      else {
        ADXWidgetRun *run = (orientation == ADXConstraintWidget_HORIZONTAL) ? self->widget_->verticalRun_ : (id) self->widget_->horizontalRun_;
        if (((ADXDimensionDependency *) nil_chk(run->dimension_))->resolved_) {
          jfloat ratio = [self->widget_ getDimensionRatio];
          jint value;
          if (orientation == ADXConstraintWidget_VERTICAL) {
            value = JreFpToInt((0.5f + ((ADXDimensionDependency *) nil_chk(run->dimension_))->value_ / ratio));
          }
          else {
            value = JreFpToInt((0.5f + ratio * ((ADXDimensionDependency *) nil_chk(run->dimension_))->value_));
          }
          [self->dimension_ resolveWithInt:value];
        }
      }
    }
    break;
    default:
    break;
  }
}

jint ADXWidgetRun_getLimitedDimensionWithInt_withInt_(ADXWidgetRun *self, jint dimension, jint orientation) {
  if (orientation == ADXConstraintWidget_HORIZONTAL) {
    jint max = ((ADXConstraintWidget *) nil_chk(self->widget_))->mMatchConstraintMaxWidth_;
    jint min = self->widget_->mMatchConstraintMinWidth_;
    jint value = JavaLangMath_maxWithInt_withInt_(min, dimension);
    if (max > 0) {
      value = JavaLangMath_minWithInt_withInt_(max, dimension);
    }
    if (value != dimension) {
      dimension = value;
    }
  }
  else {
    jint max = ((ADXConstraintWidget *) nil_chk(self->widget_))->mMatchConstraintMaxHeight_;
    jint min = self->widget_->mMatchConstraintMinHeight_;
    jint value = JavaLangMath_maxWithInt_withInt_(min, dimension);
    if (max > 0) {
      value = JavaLangMath_minWithInt_withInt_(max, dimension);
    }
    if (value != dimension) {
      dimension = value;
    }
  }
  return dimension;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXWidgetRun)

J2OBJC_INITIALIZED_DEFN(ADXWidgetRun_RunType)

ADXWidgetRun_RunType *ADXWidgetRun_RunType_values_[4];

@implementation ADXWidgetRun_RunType

+ (IOSObjectArray *)values {
  return ADXWidgetRun_RunType_values();
}

+ (ADXWidgetRun_RunType *)valueOfWithNSString:(NSString *)name {
  return ADXWidgetRun_RunType_valueOfWithNSString_(name);
}

- (ADXWidgetRun_RunType_Enum)toNSEnum {
  return (ADXWidgetRun_RunType_Enum)[self ordinal];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LADXWidgetRun_RunType;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXWidgetRun_RunType;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(values);
  methods[1].selector = @selector(valueOfWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "NONE", "LADXWidgetRun_RunType;", .constantValue.asLong = 0, 0x4019, -1, 2, -1, -1 },
    { "START", "LADXWidgetRun_RunType;", .constantValue.asLong = 0, 0x4019, -1, 3, -1, -1 },
    { "END", "LADXWidgetRun_RunType;", .constantValue.asLong = 0, 0x4019, -1, 4, -1, -1 },
    { "CENTER", "LADXWidgetRun_RunType;", .constantValue.asLong = 0, 0x4019, -1, 5, -1, -1 },
  };
  static const void *ptrTable[] = { "valueOf", "LNSString;", &JreEnum(ADXWidgetRun_RunType, NONE), &JreEnum(ADXWidgetRun_RunType, START), &JreEnum(ADXWidgetRun_RunType, END), &JreEnum(ADXWidgetRun_RunType, CENTER), "LADXWidgetRun;", "Ljava/lang/Enum<Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;>;" };
  static const J2ObjcClassInfo _ADXWidgetRun_RunType = { "RunType", "androidx.constraintlayout.core.widgets.analyzer", ptrTable, methods, fields, 7, 0x4018, 2, 4, 6, -1, -1, 7, -1 };
  return &_ADXWidgetRun_RunType;
}

+ (void)initialize {
  if (self == [ADXWidgetRun_RunType class]) {
    size_t objSize = class_getInstanceSize(self);
    size_t allocSize = 4 * objSize;
    uintptr_t ptr = (uintptr_t)calloc(allocSize, 1);
    id e;
    for (jint i = 0; i < 4; i++) {
      ((void)(ADXWidgetRun_RunType_values_[i] = e = objc_constructInstance(self, (void *)ptr)), ptr += objSize);
      ADXWidgetRun_RunType_initWithNSString_withInt_(e, JreEnumConstantName(ADXWidgetRun_RunType_class_(), i), i);
    }
    J2OBJC_SET_INITIALIZED(ADXWidgetRun_RunType)
  }
}

@end

void ADXWidgetRun_RunType_initWithNSString_withInt_(ADXWidgetRun_RunType *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

IOSObjectArray *ADXWidgetRun_RunType_values() {
  ADXWidgetRun_RunType_initialize();
  return [IOSObjectArray arrayWithObjects:ADXWidgetRun_RunType_values_ count:4 type:ADXWidgetRun_RunType_class_()];
}

ADXWidgetRun_RunType *ADXWidgetRun_RunType_valueOfWithNSString_(NSString *name) {
  ADXWidgetRun_RunType_initialize();
  for (int i = 0; i < 4; i++) {
    ADXWidgetRun_RunType *e = ADXWidgetRun_RunType_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw create_JavaLangIllegalArgumentException_initWithNSString_(name);
  return nil;
}

ADXWidgetRun_RunType *ADXWidgetRun_RunType_fromOrdinal(NSUInteger ordinal) {
  ADXWidgetRun_RunType_initialize();
  if (ordinal >= 4) {
    return nil;
  }
  return ADXWidgetRun_RunType_values_[ordinal];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXWidgetRun_RunType)
