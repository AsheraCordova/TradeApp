//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\analyzer\GuidelineReference.java
//

#include "ConstraintWidget.h"
#include "CoreGuideline.h"
#include "Dependency.h"
#include "DependencyNode.h"
#include "GuidelineReference.h"
#include "HorizontalWidgetRun.h"
#include "J2ObjC_source.h"
#include "VerticalWidgetRun.h"
#include "WidgetRun.h"
#include "java/util/List.h"


@interface ADXGuidelineReference ()

- (void)addDependencyWithADXDependencyNode:(ADXDependencyNode *)node;

@end

__attribute__((unused)) static void ADXGuidelineReference_addDependencyWithADXDependencyNode_(ADXGuidelineReference *self, ADXDependencyNode *node);

@implementation ADXGuidelineReference

- (instancetype)initPackagePrivateWithADXConstraintWidget:(ADXConstraintWidget *)widget {
  ADXGuidelineReference_initPackagePrivateWithADXConstraintWidget_(self, widget);
  return self;
}

- (void)clear {
  [((ADXDependencyNode *) nil_chk(start_)) clear];
}

- (void)reset {
  ((ADXDependencyNode *) nil_chk(start_))->resolved_ = false;
  ((ADXDependencyNode *) nil_chk(end_))->resolved_ = false;
}

- (jboolean)supportsWrapComputation {
  return false;
}

- (void)addDependencyWithADXDependencyNode:(ADXDependencyNode *)node {
  ADXGuidelineReference_addDependencyWithADXDependencyNode_(self, node);
}

- (void)updateWithADXDependency:(id<ADXDependency>)dependency {
  if (!((ADXDependencyNode *) nil_chk(start_))->readyToSolve_) {
    return;
  }
  if (start_->resolved_) {
    return;
  }
  ADXDependencyNode *startTarget = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(start_->targets_)) getWithInt:0]);
  ADXCoreGuideline *guideline = (ADXCoreGuideline *) cast_chk(widget_, [ADXCoreGuideline class]);
  jint startPos = JreFpToInt((0.5f + ((ADXDependencyNode *) nil_chk(startTarget))->value_ * [((ADXCoreGuideline *) nil_chk(guideline)) getRelativePercent]));
  [((ADXDependencyNode *) nil_chk(start_)) resolveWithInt:startPos];
}

- (void)apply {
  ADXCoreGuideline *guideline = (ADXCoreGuideline *) cast_chk(widget_, [ADXCoreGuideline class]);
  jint relativeBegin = [((ADXCoreGuideline *) nil_chk(guideline)) getRelativeBegin];
  jint relativeEnd = [guideline getRelativeEnd];
  jfloat percent = [guideline getRelativePercent];
  if ([guideline getOrientation] == ADXConstraintWidget_VERTICAL) {
    if (relativeBegin != -1) {
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(start_))->targets_)) addWithId:((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->horizontalRun_))->start_];
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->horizontalRun_))->start_))->dependencies_)) addWithId:start_];
      ((ADXDependencyNode *) nil_chk(start_))->margin_ = relativeBegin;
    }
    else if (relativeEnd != -1) {
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(start_))->targets_)) addWithId:((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->horizontalRun_))->end_];
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->horizontalRun_))->end_))->dependencies_)) addWithId:start_];
      ((ADXDependencyNode *) nil_chk(start_))->margin_ = -relativeEnd;
    }
    else {
      ((ADXDependencyNode *) nil_chk(start_))->delegateToWidgetRun_ = true;
      [((id<JavaUtilList>) nil_chk(start_->targets_)) addWithId:((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->horizontalRun_))->end_];
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->horizontalRun_))->end_))->dependencies_)) addWithId:start_];
    }
    ADXGuidelineReference_addDependencyWithADXDependencyNode_(self, ((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->horizontalRun_))->start_);
    ADXGuidelineReference_addDependencyWithADXDependencyNode_(self, ((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->horizontalRun_))->end_);
  }
  else {
    if (relativeBegin != -1) {
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(start_))->targets_)) addWithId:((ADXVerticalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->verticalRun_))->start_];
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(((ADXVerticalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->verticalRun_))->start_))->dependencies_)) addWithId:start_];
      ((ADXDependencyNode *) nil_chk(start_))->margin_ = relativeBegin;
    }
    else if (relativeEnd != -1) {
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(start_))->targets_)) addWithId:((ADXVerticalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->verticalRun_))->end_];
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(((ADXVerticalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->verticalRun_))->end_))->dependencies_)) addWithId:start_];
      ((ADXDependencyNode *) nil_chk(start_))->margin_ = -relativeEnd;
    }
    else {
      ((ADXDependencyNode *) nil_chk(start_))->delegateToWidgetRun_ = true;
      [((id<JavaUtilList>) nil_chk(start_->targets_)) addWithId:((ADXVerticalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->verticalRun_))->end_];
      [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(((ADXVerticalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->mParent_))->verticalRun_))->end_))->dependencies_)) addWithId:start_];
    }
    ADXGuidelineReference_addDependencyWithADXDependencyNode_(self, ((ADXVerticalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->verticalRun_))->start_);
    ADXGuidelineReference_addDependencyWithADXDependencyNode_(self, ((ADXVerticalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(widget_))->verticalRun_))->end_);
  }
}

- (void)applyToWidget {
  ADXCoreGuideline *guideline = (ADXCoreGuideline *) cast_chk(widget_, [ADXCoreGuideline class]);
  if ([((ADXCoreGuideline *) nil_chk(guideline)) getOrientation] == ADXConstraintWidget_VERTICAL) {
    [((ADXConstraintWidget *) nil_chk(widget_)) setXWithInt:((ADXDependencyNode *) nil_chk(start_))->value_];
  }
  else {
    [((ADXConstraintWidget *) nil_chk(widget_)) setYWithInt:((ADXDependencyNode *) nil_chk(start_))->value_];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithADXConstraintWidget:);
  methods[1].selector = @selector(clear);
  methods[2].selector = @selector(reset);
  methods[3].selector = @selector(supportsWrapComputation);
  methods[4].selector = @selector(addDependencyWithADXDependencyNode:);
  methods[5].selector = @selector(updateWithADXDependency:);
  methods[6].selector = @selector(apply);
  methods[7].selector = @selector(applyToWidget);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LADXConstraintWidget;", "addDependency", "LADXDependencyNode;", "update", "LADXDependency;" };
  static const J2ObjcClassInfo _ADXGuidelineReference = { "GuidelineReference", "androidx.constraintlayout.core.widgets.analyzer", ptrTable, methods, NULL, 7, 0x0, 8, 0, -1, -1, -1, -1, -1 };
  return &_ADXGuidelineReference;
}

@end

void ADXGuidelineReference_initPackagePrivateWithADXConstraintWidget_(ADXGuidelineReference *self, ADXConstraintWidget *widget) {
  ADXWidgetRun_initWithADXConstraintWidget_(self, widget);
  [((ADXHorizontalWidgetRun *) nil_chk(((ADXConstraintWidget *) nil_chk(widget))->horizontalRun_)) clear];
  [((ADXVerticalWidgetRun *) nil_chk(widget->verticalRun_)) clear];
  self->orientation_ = [((ADXCoreGuideline *) cast_chk(widget, [ADXCoreGuideline class])) getOrientation];
}

ADXGuidelineReference *new_ADXGuidelineReference_initPackagePrivateWithADXConstraintWidget_(ADXConstraintWidget *widget) {
  J2OBJC_NEW_IMPL(ADXGuidelineReference, initPackagePrivateWithADXConstraintWidget_, widget)
}

ADXGuidelineReference *create_ADXGuidelineReference_initPackagePrivateWithADXConstraintWidget_(ADXConstraintWidget *widget) {
  J2OBJC_CREATE_IMPL(ADXGuidelineReference, initPackagePrivateWithADXConstraintWidget_, widget)
}

void ADXGuidelineReference_addDependencyWithADXDependencyNode_(ADXGuidelineReference *self, ADXDependencyNode *node) {
  [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(self->start_))->dependencies_)) addWithId:node];
  [((id<JavaUtilList>) nil_chk(((ADXDependencyNode *) nil_chk(node))->targets_)) addWithId:self->start_];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXGuidelineReference)
