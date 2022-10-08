//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\Chain.java
//

#include "ArrayRow.h"
#include "Chain.h"
#include "ChainHead.h"
#include "ConstraintAnchor.h"
#include "ConstraintWidget.h"
#include "ConstraintWidgetContainer.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LinearSystem.h"
#include "SolverVariable.h"
#include "java/util/ArrayList.h"


inline jboolean ADXChain_get_DEBUG(void);
#define ADXChain_DEBUG false
J2OBJC_STATIC_FIELD_CONSTANT(ADXChain, DEBUG, jboolean)

@implementation ADXChain

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXChain_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)applyChainConstraintsWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)constraintWidgetContainer
                                          withADXLinearSystem:(ADXLinearSystem *)system
                                        withJavaUtilArrayList:(JavaUtilArrayList *)widgets
                                                      withInt:(jint)orientation {
  ADXChain_applyChainConstraintsWithADXConstraintWidgetContainer_withADXLinearSystem_withJavaUtilArrayList_withInt_(constraintWidgetContainer, system, widgets, orientation);
}

+ (void)applyChainConstraintsWithADXConstraintWidgetContainer:(ADXConstraintWidgetContainer *)container
                                          withADXLinearSystem:(ADXLinearSystem *)system
                                                      withInt:(jint)orientation
                                                      withInt:(jint)offset
                                             withADXChainHead:(ADXChainHead *)chainHead {
  ADXChain_applyChainConstraintsWithADXConstraintWidgetContainer_withADXLinearSystem_withInt_withInt_withADXChainHead_(container, system, orientation, offset, chainHead);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "V", 0x8, 0, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(applyChainConstraintsWithADXConstraintWidgetContainer:withADXLinearSystem:withJavaUtilArrayList:withInt:);
  methods[2].selector = @selector(applyChainConstraintsWithADXConstraintWidgetContainer:withADXLinearSystem:withInt:withInt:withADXChainHead:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DEBUG", "Z", .constantValue.asBOOL = ADXChain_DEBUG, 0x1a, -1, -1, -1, -1 },
    { "USE_CHAIN_OPTIMIZATION", "Z", .constantValue.asBOOL = ADXChain_USE_CHAIN_OPTIMIZATION, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "applyChainConstraints", "LADXConstraintWidgetContainer;LADXLinearSystem;LJavaUtilArrayList;I", "(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;I)V", "LADXConstraintWidgetContainer;LADXLinearSystem;IILADXChainHead;" };
  static const J2ObjcClassInfo _ADXChain = { "Chain", "androidx.constraintlayout.core.widgets", ptrTable, methods, fields, 7, 0x1, 3, 2, -1, -1, -1, -1, -1 };
  return &_ADXChain;
}

@end

void ADXChain_init(ADXChain *self) {
  NSObject_init(self);
}

ADXChain *new_ADXChain_init() {
  J2OBJC_NEW_IMPL(ADXChain, init)
}

ADXChain *create_ADXChain_init() {
  J2OBJC_CREATE_IMPL(ADXChain, init)
}

void ADXChain_applyChainConstraintsWithADXConstraintWidgetContainer_withADXLinearSystem_withJavaUtilArrayList_withInt_(ADXConstraintWidgetContainer *constraintWidgetContainer, ADXLinearSystem *system, JavaUtilArrayList *widgets, jint orientation) {
  ADXChain_initialize();
  jint offset = 0;
  jint chainsSize = 0;
  IOSObjectArray *chainsArray = nil;
  if (orientation == ADXConstraintWidget_HORIZONTAL) {
    offset = 0;
    chainsSize = ((ADXConstraintWidgetContainer *) nil_chk(constraintWidgetContainer))->mHorizontalChainsSize_;
    chainsArray = constraintWidgetContainer->mHorizontalChainsArray_;
  }
  else {
    offset = 2;
    chainsSize = ((ADXConstraintWidgetContainer *) nil_chk(constraintWidgetContainer))->mVerticalChainsSize_;
    chainsArray = constraintWidgetContainer->mVerticalChainsArray_;
  }
  for (jint i = 0; i < chainsSize; i++) {
    ADXChainHead *first = IOSObjectArray_Get(nil_chk(chainsArray), i);
    [((ADXChainHead *) nil_chk(first)) define];
    if (widgets == nil || (widgets != nil && [widgets containsWithId:first->mFirst_])) {
      ADXChain_applyChainConstraintsWithADXConstraintWidgetContainer_withADXLinearSystem_withInt_withInt_withADXChainHead_(constraintWidgetContainer, system, orientation, offset, first);
    }
  }
}

void ADXChain_applyChainConstraintsWithADXConstraintWidgetContainer_withADXLinearSystem_withInt_withInt_withADXChainHead_(ADXConstraintWidgetContainer *container, ADXLinearSystem *system, jint orientation, jint offset, ADXChainHead *chainHead) {
  ADXChain_initialize();
  ADXConstraintWidget *first = JreRetainedLocalValue(((ADXChainHead *) nil_chk(chainHead))->mFirst_);
  ADXConstraintWidget *last = JreRetainedLocalValue(chainHead->mLast_);
  ADXConstraintWidget *firstVisibleWidget = JreRetainedLocalValue(chainHead->mFirstVisibleWidget_);
  ADXConstraintWidget *lastVisibleWidget = JreRetainedLocalValue(chainHead->mLastVisibleWidget_);
  ADXConstraintWidget *head = JreRetainedLocalValue(chainHead->mHead_);
  ADXConstraintWidget *widget = JreRetainedLocalValue(first);
  ADXConstraintWidget *next = nil;
  jboolean done = false;
  jfloat totalWeights = chainHead->mTotalWeight_;
  ADXConstraintWidget *firstMatchConstraintsWidget = JreRetainedLocalValue(chainHead->mFirstMatchConstraintWidget_);
  ADXConstraintWidget *previousMatchConstraintsWidget = JreRetainedLocalValue(chainHead->mLastMatchConstraintWidget_);
  jboolean isWrapContent = IOSObjectArray_Get(nil_chk(((ADXConstraintWidgetContainer *) nil_chk(container))->mListDimensionBehaviors_), orientation) == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, WRAP_CONTENT);
  jboolean isChainSpread = false;
  jboolean isChainSpreadInside = false;
  jboolean isChainPacked = false;
  if (orientation == ADXConstraintWidget_HORIZONTAL) {
    isChainSpread = (((ADXConstraintWidget *) nil_chk(head))->mHorizontalChainStyle_ == ADXConstraintWidget_CHAIN_SPREAD);
    isChainSpreadInside = (head->mHorizontalChainStyle_ == ADXConstraintWidget_CHAIN_SPREAD_INSIDE);
    isChainPacked = (head->mHorizontalChainStyle_ == ADXConstraintWidget_CHAIN_PACKED);
  }
  else {
    isChainSpread = (((ADXConstraintWidget *) nil_chk(head))->mVerticalChainStyle_ == ADXConstraintWidget_CHAIN_SPREAD);
    isChainSpreadInside = (head->mVerticalChainStyle_ == ADXConstraintWidget_CHAIN_SPREAD_INSIDE);
    isChainPacked = (head->mVerticalChainStyle_ == ADXConstraintWidget_CHAIN_PACKED);
  }
  while (!done) {
    ADXConstraintAnchor *begin = IOSObjectArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(widget))->mListAnchors_), offset);
    jint strength = ADXSolverVariable_STRENGTH_HIGHEST;
    if (isChainPacked) {
      strength = ADXSolverVariable_STRENGTH_LOW;
    }
    jint margin = [((ADXConstraintAnchor *) nil_chk(begin)) getMargin];
    jboolean isSpreadOnly = IOSObjectArray_Get(nil_chk(widget->mListDimensionBehaviors_), orientation) == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT) && IOSIntArray_Get(nil_chk(widget->mResolvedMatchConstraintDefault_), orientation) == ADXConstraintWidget_MATCH_CONSTRAINT_SPREAD;
    if (begin->mTarget_ != nil && widget != first) {
      margin += [begin->mTarget_ getMargin];
    }
    if (isChainPacked && widget != first && widget != firstVisibleWidget) {
      strength = ADXSolverVariable_STRENGTH_FIXED;
    }
    if (begin->mTarget_ != nil) {
      if (widget == firstVisibleWidget) {
        [((ADXLinearSystem *) nil_chk(system)) addGreaterThanWithADXSolverVariable:begin->mSolverVariable_ withADXSolverVariable:begin->mTarget_->mSolverVariable_ withInt:margin withInt:ADXSolverVariable_STRENGTH_BARRIER];
      }
      else {
        [((ADXLinearSystem *) nil_chk(system)) addGreaterThanWithADXSolverVariable:begin->mSolverVariable_ withADXSolverVariable:begin->mTarget_->mSolverVariable_ withInt:margin withInt:ADXSolverVariable_STRENGTH_FIXED];
      }
      if (isSpreadOnly && !isChainPacked) {
        strength = ADXSolverVariable_STRENGTH_EQUALITY;
      }
      if (widget == firstVisibleWidget && isChainPacked && [widget isInBarrierWithInt:orientation]) {
        strength = ADXSolverVariable_STRENGTH_EQUALITY;
      }
      [system addEqualityWithADXSolverVariable:begin->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(begin->mTarget_))->mSolverVariable_ withInt:margin withInt:strength];
    }
    if (isWrapContent) {
      if ([widget getVisibility] != ADXConstraintWidget_GONE && IOSObjectArray_Get(nil_chk(widget->mListDimensionBehaviors_), orientation) == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT)) {
        [((ADXLinearSystem *) nil_chk(system)) addGreaterThanWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(widget->mListAnchors_), offset + 1)))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(widget->mListAnchors_, offset)))->mSolverVariable_ withInt:0 withInt:ADXSolverVariable_STRENGTH_EQUALITY];
      }
      [((ADXLinearSystem *) nil_chk(system)) addGreaterThanWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(widget->mListAnchors_), offset)))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(container->mListAnchors_, offset)))->mSolverVariable_ withInt:0 withInt:ADXSolverVariable_STRENGTH_FIXED];
    }
    ADXConstraintAnchor *nextAnchor = JreRetainedLocalValue(((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(widget->mListAnchors_), offset + 1)))->mTarget_);
    if (nextAnchor != nil) {
      next = nextAnchor->mOwner_;
      if (((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(((ADXConstraintWidget *) nil_chk(next))->mListAnchors_, offset)))->mTarget_ == nil || ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(next->mListAnchors_, offset)))->mTarget_->mOwner_ != widget) {
        next = nil;
      }
    }
    else {
      next = nil;
    }
    if (next != nil) {
      widget = next;
    }
    else {
      done = true;
    }
  }
  if (lastVisibleWidget != nil && ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(last))->mListAnchors_), offset + 1)))->mTarget_ != nil) {
    ADXConstraintAnchor *end = IOSObjectArray_Get(nil_chk(lastVisibleWidget->mListAnchors_), offset + 1);
    jboolean isSpreadOnly = IOSObjectArray_Get(nil_chk(lastVisibleWidget->mListDimensionBehaviors_), orientation) == JreLoadEnum(ADXConstraintWidget_DimensionBehaviour, MATCH_CONSTRAINT) && IOSIntArray_Get(nil_chk(lastVisibleWidget->mResolvedMatchConstraintDefault_), orientation) == ADXConstraintWidget_MATCH_CONSTRAINT_SPREAD;
    if (isSpreadOnly && !isChainPacked && ((ADXConstraintAnchor *) nil_chk(end))->mTarget_->mOwner_ == container) {
      [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(end))->mSolverVariable_ withADXSolverVariable:end->mTarget_->mSolverVariable_ withInt:-[end getMargin] withInt:ADXSolverVariable_STRENGTH_EQUALITY];
    }
    else if (isChainPacked && ((ADXConstraintAnchor *) nil_chk(end))->mTarget_->mOwner_ == container) {
      [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(end))->mSolverVariable_ withADXSolverVariable:end->mTarget_->mSolverVariable_ withInt:-[end getMargin] withInt:ADXSolverVariable_STRENGTH_HIGHEST];
    }
    [((ADXLinearSystem *) nil_chk(system)) addLowerThanWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(end))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(last))->mListAnchors_), offset + 1)))->mTarget_))->mSolverVariable_ withInt:-[end getMargin] withInt:ADXSolverVariable_STRENGTH_BARRIER];
  }
  if (isWrapContent) {
    [((ADXLinearSystem *) nil_chk(system)) addGreaterThanWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(container->mListAnchors_), offset + 1)))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(((ADXConstraintWidget *) nil_chk(last))->mListAnchors_, offset + 1)))->mSolverVariable_ withInt:[((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(last->mListAnchors_, offset + 1))) getMargin] withInt:ADXSolverVariable_STRENGTH_FIXED];
  }
  JavaUtilArrayList *listMatchConstraints = JreRetainedLocalValue(chainHead->mWeightedMatchConstraintsWidgets_);
  if (listMatchConstraints != nil) {
    jint count = [listMatchConstraints size];
    if (count > 1) {
      ADXConstraintWidget *lastMatch = nil;
      jfloat lastWeight = 0;
      if (chainHead->mHasUndefinedWeights_ && !chainHead->mHasComplexMatchWeights_) {
        totalWeights = chainHead->mWidgetsMatchCount_;
      }
      for (jint i = 0; i < count; i++) {
        ADXConstraintWidget *match = JreRetainedLocalValue([listMatchConstraints getWithInt:i]);
        jfloat currentWeight = IOSFloatArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(match))->mWeight_), orientation);
        if (currentWeight < 0) {
          if (chainHead->mHasComplexMatchWeights_) {
            [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(match->mListAnchors_), offset + 1)))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(match->mListAnchors_, offset)))->mSolverVariable_ withInt:0 withInt:ADXSolverVariable_STRENGTH_HIGHEST];
            continue;
          }
          currentWeight = 1;
        }
        if (currentWeight == 0) {
          [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(match->mListAnchors_), offset + 1)))->mSolverVariable_ withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(match->mListAnchors_, offset)))->mSolverVariable_ withInt:0 withInt:ADXSolverVariable_STRENGTH_FIXED];
          continue;
        }
        if (lastMatch != nil) {
          ADXSolverVariable *begin = JreRetainedLocalValue(((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(lastMatch->mListAnchors_), offset)))->mSolverVariable_);
          ADXSolverVariable *end = JreRetainedLocalValue(((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(lastMatch->mListAnchors_, offset + 1)))->mSolverVariable_);
          ADXSolverVariable *nextBegin = JreRetainedLocalValue(((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(match->mListAnchors_, offset)))->mSolverVariable_);
          ADXSolverVariable *nextEnd = JreRetainedLocalValue(((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(match->mListAnchors_, offset + 1)))->mSolverVariable_);
          ADXArrayRow *row = JreRetainedLocalValue([((ADXLinearSystem *) nil_chk(system)) createRow]);
          [((ADXArrayRow *) nil_chk(row)) createRowEqualMatchDimensionsWithFloat:lastWeight withFloat:totalWeights withFloat:currentWeight withADXSolverVariable:begin withADXSolverVariable:end withADXSolverVariable:nextBegin withADXSolverVariable:nextEnd];
          [system addConstraintWithADXArrayRow:row];
        }
        lastMatch = match;
        lastWeight = currentWeight;
      }
    }
  }
  if (firstVisibleWidget != nil && (firstVisibleWidget == lastVisibleWidget || isChainPacked)) {
    ADXConstraintAnchor *begin = IOSObjectArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(first))->mListAnchors_), offset);
    ADXConstraintAnchor *end = IOSObjectArray_Get(((ADXConstraintWidget *) nil_chk(last))->mListAnchors_, offset + 1);
    ADXSolverVariable *beginTarget = ((ADXConstraintAnchor *) nil_chk(begin))->mTarget_ != nil ? begin->mTarget_->mSolverVariable_ : nil;
    ADXSolverVariable *endTarget = ((ADXConstraintAnchor *) nil_chk(end))->mTarget_ != nil ? end->mTarget_->mSolverVariable_ : nil;
    begin = IOSObjectArray_Get(firstVisibleWidget->mListAnchors_, offset);
    if (lastVisibleWidget != nil) {
      end = IOSObjectArray_Get(lastVisibleWidget->mListAnchors_, offset + 1);
    }
    if (beginTarget != nil && endTarget != nil) {
      jfloat bias = 0.5f;
      if (orientation == ADXConstraintWidget_HORIZONTAL) {
        bias = head->mHorizontalBiasPercent_;
      }
      else {
        bias = head->mVerticalBiasPercent_;
      }
      jint beginMargin = [((ADXConstraintAnchor *) nil_chk(begin)) getMargin];
      jint endMargin = [((ADXConstraintAnchor *) nil_chk(end)) getMargin];
      [((ADXLinearSystem *) nil_chk(system)) addCenteringWithADXSolverVariable:begin->mSolverVariable_ withADXSolverVariable:beginTarget withInt:beginMargin withFloat:bias withADXSolverVariable:endTarget withADXSolverVariable:end->mSolverVariable_ withInt:endMargin withInt:ADXSolverVariable_STRENGTH_CENTERING];
    }
  }
  else if (isChainSpread && firstVisibleWidget != nil) {
    widget = firstVisibleWidget;
    ADXConstraintWidget *previousVisibleWidget = JreRetainedLocalValue(firstVisibleWidget);
    jboolean applyFixedEquality = chainHead->mWidgetsMatchCount_ > 0 && (chainHead->mWidgetsCount_ == chainHead->mWidgetsMatchCount_);
    while (widget != nil) {
      next = IOSObjectArray_Get(nil_chk(widget->mNextChainWidget_), orientation);
      while (next != nil && [next getVisibility] == ADXConstraintWidget_GONE) {
        next = IOSObjectArray_Get(nil_chk(next->mNextChainWidget_), orientation);
      }
      if (next != nil || widget == lastVisibleWidget) {
        ADXConstraintAnchor *beginAnchor = IOSObjectArray_Get(nil_chk(widget->mListAnchors_), offset);
        ADXSolverVariable *begin = JreRetainedLocalValue(((ADXConstraintAnchor *) nil_chk(beginAnchor))->mSolverVariable_);
        ADXSolverVariable *beginTarget = beginAnchor->mTarget_ != nil ? beginAnchor->mTarget_->mSolverVariable_ : nil;
        if (previousVisibleWidget != widget) {
          beginTarget = ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(previousVisibleWidget->mListAnchors_, offset + 1)))->mSolverVariable_;
        }
        else if (widget == firstVisibleWidget) {
          beginTarget = ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(((ADXConstraintWidget *) nil_chk(first))->mListAnchors_, offset)))->mTarget_ != nil ? ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(first->mListAnchors_, offset)))->mTarget_->mSolverVariable_ : nil;
        }
        ADXConstraintAnchor *beginNextAnchor = nil;
        ADXSolverVariable *beginNext = nil;
        ADXSolverVariable *beginNextTarget = nil;
        jint beginMargin = [beginAnchor getMargin];
        jint nextMargin = [((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(widget->mListAnchors_), offset + 1))) getMargin];
        if (next != nil) {
          beginNextAnchor = IOSObjectArray_Get(nil_chk(next->mListAnchors_), offset);
          beginNext = ((ADXConstraintAnchor *) nil_chk(beginNextAnchor))->mSolverVariable_;
        }
        else {
          beginNextAnchor = ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(last))->mListAnchors_), offset + 1)))->mTarget_;
          if (beginNextAnchor != nil) {
            beginNext = beginNextAnchor->mSolverVariable_;
          }
        }
        beginNextTarget = ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(widget->mListAnchors_, offset + 1)))->mSolverVariable_;
        if (beginNextAnchor != nil) {
          nextMargin += [beginNextAnchor getMargin];
        }
        beginMargin += [((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(previousVisibleWidget->mListAnchors_), offset + 1))) getMargin];
        if (begin != nil && beginTarget != nil && beginNext != nil && beginNextTarget != nil) {
          jint margin1 = beginMargin;
          if (widget == firstVisibleWidget) {
            margin1 = [((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(firstVisibleWidget->mListAnchors_), offset))) getMargin];
          }
          jint margin2 = nextMargin;
          if (widget == lastVisibleWidget) {
            margin2 = [((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(lastVisibleWidget))->mListAnchors_), offset + 1))) getMargin];
          }
          jint strength = ADXSolverVariable_STRENGTH_EQUALITY;
          if (applyFixedEquality) {
            strength = ADXSolverVariable_STRENGTH_FIXED;
          }
          [((ADXLinearSystem *) nil_chk(system)) addCenteringWithADXSolverVariable:begin withADXSolverVariable:beginTarget withInt:margin1 withFloat:0.5f withADXSolverVariable:beginNext withADXSolverVariable:beginNextTarget withInt:margin2 withInt:strength];
        }
      }
      if ([widget getVisibility] != ADXConstraintWidget_GONE) {
        previousVisibleWidget = widget;
      }
      widget = next;
    }
  }
  else if (isChainSpreadInside && firstVisibleWidget != nil) {
    widget = firstVisibleWidget;
    ADXConstraintWidget *previousVisibleWidget = JreRetainedLocalValue(firstVisibleWidget);
    jboolean applyFixedEquality = chainHead->mWidgetsMatchCount_ > 0 && (chainHead->mWidgetsCount_ == chainHead->mWidgetsMatchCount_);
    while (widget != nil) {
      next = IOSObjectArray_Get(nil_chk(widget->mNextChainWidget_), orientation);
      while (next != nil && [next getVisibility] == ADXConstraintWidget_GONE) {
        next = IOSObjectArray_Get(nil_chk(next->mNextChainWidget_), orientation);
      }
      if (widget != firstVisibleWidget && widget != lastVisibleWidget && next != nil) {
        if (next == lastVisibleWidget) {
          next = nil;
        }
        ADXConstraintAnchor *beginAnchor = IOSObjectArray_Get(nil_chk(widget->mListAnchors_), offset);
        ADXSolverVariable *begin = JreRetainedLocalValue(((ADXConstraintAnchor *) nil_chk(beginAnchor))->mSolverVariable_);
        ADXSolverVariable *beginTarget = beginAnchor->mTarget_ != nil ? beginAnchor->mTarget_->mSolverVariable_ : nil;
        beginTarget = ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(previousVisibleWidget->mListAnchors_, offset + 1)))->mSolverVariable_;
        ADXConstraintAnchor *beginNextAnchor = nil;
        ADXSolverVariable *beginNext = nil;
        ADXSolverVariable *beginNextTarget = nil;
        jint beginMargin = [beginAnchor getMargin];
        jint nextMargin = [((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(widget->mListAnchors_), offset + 1))) getMargin];
        if (next != nil) {
          beginNextAnchor = IOSObjectArray_Get(nil_chk(next->mListAnchors_), offset);
          beginNext = ((ADXConstraintAnchor *) nil_chk(beginNextAnchor))->mSolverVariable_;
          beginNextTarget = beginNextAnchor->mTarget_ != nil ? beginNextAnchor->mTarget_->mSolverVariable_ : nil;
        }
        else {
          beginNextAnchor = IOSObjectArray_Get(nil_chk(((ADXConstraintWidget *) nil_chk(lastVisibleWidget))->mListAnchors_), offset);
          if (beginNextAnchor != nil) {
            beginNext = beginNextAnchor->mSolverVariable_;
          }
          beginNextTarget = ((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(widget->mListAnchors_, offset + 1)))->mSolverVariable_;
        }
        if (beginNextAnchor != nil) {
          nextMargin += [beginNextAnchor getMargin];
        }
        beginMargin += [((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(previousVisibleWidget->mListAnchors_), offset + 1))) getMargin];
        jint strength = ADXSolverVariable_STRENGTH_HIGHEST;
        if (applyFixedEquality) {
          strength = ADXSolverVariable_STRENGTH_FIXED;
        }
        if (begin != nil && beginTarget != nil && beginNext != nil && beginNextTarget != nil) {
          [((ADXLinearSystem *) nil_chk(system)) addCenteringWithADXSolverVariable:begin withADXSolverVariable:beginTarget withInt:beginMargin withFloat:0.5f withADXSolverVariable:beginNext withADXSolverVariable:beginNextTarget withInt:nextMargin withInt:strength];
        }
      }
      if ([widget getVisibility] != ADXConstraintWidget_GONE) {
        previousVisibleWidget = widget;
      }
      widget = next;
    }
    ADXConstraintAnchor *begin = IOSObjectArray_Get(nil_chk(firstVisibleWidget->mListAnchors_), offset);
    ADXConstraintAnchor *beginTarget = JreRetainedLocalValue(((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(((ADXConstraintWidget *) nil_chk(first))->mListAnchors_, offset)))->mTarget_);
    ADXConstraintAnchor *end = IOSObjectArray_Get(((ADXConstraintWidget *) nil_chk(lastVisibleWidget))->mListAnchors_, offset + 1);
    ADXConstraintAnchor *endTarget = JreRetainedLocalValue(((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(((ADXConstraintWidget *) nil_chk(last))->mListAnchors_, offset + 1)))->mTarget_);
    jint endPointsStrength = ADXSolverVariable_STRENGTH_EQUALITY;
    if (beginTarget != nil) {
      if (firstVisibleWidget != lastVisibleWidget) {
        [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(begin))->mSolverVariable_ withADXSolverVariable:beginTarget->mSolverVariable_ withInt:[begin getMargin] withInt:endPointsStrength];
      }
      else if (endTarget != nil) {
        [((ADXLinearSystem *) nil_chk(system)) addCenteringWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(begin))->mSolverVariable_ withADXSolverVariable:beginTarget->mSolverVariable_ withInt:[begin getMargin] withFloat:0.5f withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(end))->mSolverVariable_ withADXSolverVariable:endTarget->mSolverVariable_ withInt:[end getMargin] withInt:endPointsStrength];
      }
    }
    if (endTarget != nil && (firstVisibleWidget != lastVisibleWidget)) {
      [((ADXLinearSystem *) nil_chk(system)) addEqualityWithADXSolverVariable:((ADXConstraintAnchor *) nil_chk(end))->mSolverVariable_ withADXSolverVariable:endTarget->mSolverVariable_ withInt:-[end getMargin] withInt:endPointsStrength];
    }
  }
  if ((isChainSpread || isChainSpreadInside) && firstVisibleWidget != nil && firstVisibleWidget != lastVisibleWidget) {
    ADXConstraintAnchor *begin = IOSObjectArray_Get(nil_chk(firstVisibleWidget->mListAnchors_), offset);
    if (lastVisibleWidget == nil) {
      lastVisibleWidget = firstVisibleWidget;
    }
    ADXConstraintAnchor *end = IOSObjectArray_Get(lastVisibleWidget->mListAnchors_, offset + 1);
    ADXSolverVariable *beginTarget = ((ADXConstraintAnchor *) nil_chk(begin))->mTarget_ != nil ? begin->mTarget_->mSolverVariable_ : nil;
    ADXSolverVariable *endTarget = ((ADXConstraintAnchor *) nil_chk(end))->mTarget_ != nil ? end->mTarget_->mSolverVariable_ : nil;
    if (last != lastVisibleWidget) {
      ADXConstraintAnchor *realEnd = IOSObjectArray_Get(((ADXConstraintWidget *) nil_chk(last))->mListAnchors_, offset + 1);
      endTarget = ((ADXConstraintAnchor *) nil_chk(realEnd))->mTarget_ != nil ? realEnd->mTarget_->mSolverVariable_ : nil;
    }
    if (firstVisibleWidget == lastVisibleWidget) {
      begin = IOSObjectArray_Get(firstVisibleWidget->mListAnchors_, offset);
      end = IOSObjectArray_Get(firstVisibleWidget->mListAnchors_, offset + 1);
    }
    if (beginTarget != nil && endTarget != nil) {
      jfloat bias = 0.5f;
      jint beginMargin = [((ADXConstraintAnchor *) nil_chk(begin)) getMargin];
      jint endMargin = [((ADXConstraintAnchor *) nil_chk(IOSObjectArray_Get(nil_chk(lastVisibleWidget->mListAnchors_), offset + 1))) getMargin];
      [((ADXLinearSystem *) nil_chk(system)) addCenteringWithADXSolverVariable:begin->mSolverVariable_ withADXSolverVariable:beginTarget withInt:beginMargin withFloat:bias withADXSolverVariable:endTarget withADXSolverVariable:((ADXConstraintAnchor *) nil_chk(end))->mSolverVariable_ withInt:endMargin withInt:ADXSolverVariable_STRENGTH_EQUALITY];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXChain)
