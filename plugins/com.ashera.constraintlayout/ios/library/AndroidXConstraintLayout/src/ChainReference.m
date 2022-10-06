//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\state\helpers\ChainReference.java
//

#include "ChainReference.h"
#include "HelperReference.h"
#include "J2ObjC_source.h"
#include "State.h"


@implementation ADXChainReference

- (instancetype)initWithADXState:(ADXState *)state
             withADXState_Helper:(ADXState_Helper *)type {
  ADXChainReference_initWithADXState_withADXState_Helper_(self, state, type);
  return self;
}

- (ADXState_Chain *)getStyle {
  return JreLoadEnum(ADXState_Chain, SPREAD);
}

- (ADXChainReference *)styleWithADXState_Chain:(ADXState_Chain *)style {
  JreStrongAssign(&mStyle_, style);
  return self;
}

- (jfloat)getBias {
  return mBias_;
}

- (ADXChainReference *)biasWithFloat:(jfloat)bias {
  mBias_ = bias;
  return self;
}

- (void)dealloc {
  RELEASE_(mStyle_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LADXState_Chain;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXChainReference;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXChainReference;", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXState:withADXState_Helper:);
  methods[1].selector = @selector(getStyle);
  methods[2].selector = @selector(styleWithADXState_Chain:);
  methods[3].selector = @selector(getBias);
  methods[4].selector = @selector(biasWithFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mBias_", "F", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "mStyle_", "LADXState_Chain;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXState;LADXState_Helper;", "style", "LADXState_Chain;", "bias", "F" };
  static const J2ObjcClassInfo _ADXChainReference = { "ChainReference", "androidx.constraintlayout.core.state.helpers", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, -1, -1, -1, -1 };
  return &_ADXChainReference;
}

@end

void ADXChainReference_initWithADXState_withADXState_Helper_(ADXChainReference *self, ADXState *state, ADXState_Helper *type) {
  ADXHelperReference_initWithADXState_withADXState_Helper_(self, state, type);
  self->mBias_ = 0.5f;
  JreStrongAssign(&self->mStyle_, JreLoadEnum(ADXState_Chain, SPREAD));
}

ADXChainReference *new_ADXChainReference_initWithADXState_withADXState_Helper_(ADXState *state, ADXState_Helper *type) {
  J2OBJC_NEW_IMPL(ADXChainReference, initWithADXState_withADXState_Helper_, state, type)
}

ADXChainReference *create_ADXChainReference_initWithADXState_withADXState_Helper_(ADXState *state, ADXState_Helper *type) {
  J2OBJC_CREATE_IMPL(ADXChainReference, initWithADXState_withADXState_Helper_, state, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXChainReference)