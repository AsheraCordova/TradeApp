//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\PriorityGoalRow.java
//

#include "ArrayRow.h"
#include "Cache.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LinearSystem.h"
#include "PriorityGoalRow.h"
#include "SolverVariable.h"
#include "java/lang/Math.h"
#include "java/util/Arrays.h"
#include "java/util/Comparator.h"
#include "java/util/function/Function.h"
#include "java/util/function/ToDoubleFunction.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/function/ToLongFunction.h"

@protocol JavaUtilComparator;
@protocol JavaUtilFunctionFunction;
@protocol JavaUtilFunctionToDoubleFunction;
@protocol JavaUtilFunctionToIntFunction;
@protocol JavaUtilFunctionToLongFunction;


#pragma clang diagnostic ignored "-Wprotocol"

@interface ADXPriorityGoalRow () {
 @public
  jint TABLE_SIZE_;
  IOSObjectArray *arrayGoals_;
  IOSObjectArray *sortArray_;
  jint numGoals_;
}

- (void)addToGoalWithADXSolverVariable:(ADXSolverVariable *)variable;

- (void)removeGoalWithADXSolverVariable:(ADXSolverVariable *)variable;

@end

J2OBJC_FIELD_SETTER(ADXPriorityGoalRow, arrayGoals_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(ADXPriorityGoalRow, sortArray_, IOSObjectArray *)

inline jfloat ADXPriorityGoalRow_get_epsilon(void);
#define ADXPriorityGoalRow_epsilon 1.0E-4f
J2OBJC_STATIC_FIELD_CONSTANT(ADXPriorityGoalRow, epsilon, jfloat)

inline jboolean ADXPriorityGoalRow_get_DEBUG(void);
#define ADXPriorityGoalRow_DEBUG false
J2OBJC_STATIC_FIELD_CONSTANT(ADXPriorityGoalRow, DEBUG, jboolean)

__attribute__((unused)) static void ADXPriorityGoalRow_addToGoalWithADXSolverVariable_(ADXPriorityGoalRow *self, ADXSolverVariable *variable);

__attribute__((unused)) static void ADXPriorityGoalRow_removeGoalWithADXSolverVariable_(ADXPriorityGoalRow *self, ADXSolverVariable *variable);

@interface ADXPriorityGoalRow_GoalVariableAccessor () {
 @public
  __unsafe_unretained ADXPriorityGoalRow *this$0_;
}

@end

__attribute__((unused)) static jboolean ADXPriorityGoalRow_GoalVariableAccessor_isNegative(ADXPriorityGoalRow_GoalVariableAccessor *self);

__attribute__((unused)) static jboolean ADXPriorityGoalRow_GoalVariableAccessor_isSmallerThanWithADXSolverVariable_(ADXPriorityGoalRow_GoalVariableAccessor *self, ADXSolverVariable *other);

@interface ADXPriorityGoalRow_1 : NSObject < JavaUtilComparator >

- (instancetype)init;

- (jint)compareWithId:(ADXSolverVariable *)variable1
               withId:(ADXSolverVariable *)variable2;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXPriorityGoalRow_1)

__attribute__((unused)) static void ADXPriorityGoalRow_1_init(ADXPriorityGoalRow_1 *self);

__attribute__((unused)) static ADXPriorityGoalRow_1 *new_ADXPriorityGoalRow_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADXPriorityGoalRow_1 *create_ADXPriorityGoalRow_1_init(void);

@implementation ADXPriorityGoalRow

- (void)clear {
  numGoals_ = 0;
  constantValue_ = 0;
}

- (instancetype)initWithADXCache:(ADXCache *)cache {
  ADXPriorityGoalRow_initWithADXCache_(self, cache);
  return self;
}

- (jboolean)isEmpty {
  return numGoals_ == 0;
}

- (ADXSolverVariable *)getPivotCandidateWithADXLinearSystem:(ADXLinearSystem *)system
                                           withBooleanArray:(IOSBooleanArray *)avoid {
  jint pivot = ADXPriorityGoalRow_NOT_FOUND;
  for (jint i = 0; i < numGoals_; i++) {
    ADXSolverVariable *variable = IOSObjectArray_Get(nil_chk(arrayGoals_), i);
    if (IOSBooleanArray_Get(nil_chk(avoid), ((ADXSolverVariable *) nil_chk(variable))->id__)) {
      continue;
    }
    [((ADXPriorityGoalRow_GoalVariableAccessor *) nil_chk(accessor_)) init__WithADXSolverVariable:variable];
    if (pivot == ADXPriorityGoalRow_NOT_FOUND) {
      if (ADXPriorityGoalRow_GoalVariableAccessor_isNegative(nil_chk(accessor_))) {
        pivot = i;
      }
    }
    else if (ADXPriorityGoalRow_GoalVariableAccessor_isSmallerThanWithADXSolverVariable_(nil_chk(accessor_), IOSObjectArray_Get(nil_chk(arrayGoals_), pivot))) {
      pivot = i;
    }
  }
  if (pivot == ADXPriorityGoalRow_NOT_FOUND) {
    return nil;
  }
  return IOSObjectArray_Get(nil_chk(arrayGoals_), pivot);
}

- (void)addErrorWithADXSolverVariable:(ADXSolverVariable *)error {
  [((ADXPriorityGoalRow_GoalVariableAccessor *) nil_chk(accessor_)) init__WithADXSolverVariable:error];
  [((ADXPriorityGoalRow_GoalVariableAccessor *) nil_chk(accessor_)) reset];
  *IOSFloatArray_GetRef(nil_chk(((ADXSolverVariable *) nil_chk(error))->goalStrengthVector_), error->strength_) = 1;
  ADXPriorityGoalRow_addToGoalWithADXSolverVariable_(self, error);
}

- (void)addToGoalWithADXSolverVariable:(ADXSolverVariable *)variable {
  ADXPriorityGoalRow_addToGoalWithADXSolverVariable_(self, variable);
}

- (void)removeGoalWithADXSolverVariable:(ADXSolverVariable *)variable {
  ADXPriorityGoalRow_removeGoalWithADXSolverVariable_(self, variable);
}

- (void)updateFromRowWithADXLinearSystem:(ADXLinearSystem *)system
                         withADXArrayRow:(ADXArrayRow *)definition
                             withBoolean:(jboolean)removeFromDefinition {
  ADXSolverVariable *goalVariable = JreRetainedLocalValue(((ADXArrayRow *) nil_chk(definition))->variable_);
  if (goalVariable == nil) {
    return;
  }
  id<ADXArrayRow_ArrayRowVariables> rowVariables = JreRetainedLocalValue(definition->variables_);
  jint currentSize = [((id<ADXArrayRow_ArrayRowVariables>) nil_chk(rowVariables)) getCurrentSize];
  for (jint i = 0; i < currentSize; i++) {
    ADXSolverVariable *solverVariable = JreRetainedLocalValue([rowVariables getVariableWithInt:i]);
    jfloat value = [rowVariables getVariableValueWithInt:i];
    [((ADXPriorityGoalRow_GoalVariableAccessor *) nil_chk(accessor_)) init__WithADXSolverVariable:solverVariable];
    if ([((ADXPriorityGoalRow_GoalVariableAccessor *) nil_chk(accessor_)) addToGoalWithADXSolverVariable:goalVariable withFloat:value]) {
      ADXPriorityGoalRow_addToGoalWithADXSolverVariable_(self, solverVariable);
    }
    JrePlusAssignFloatF(&constantValue_, definition->constantValue_ * value);
  }
  ADXPriorityGoalRow_removeGoalWithADXSolverVariable_(self, goalVariable);
}

- (NSString *)description {
  NSString *result = @"";
  JreStrAppend(&result, "$F$", @" goal -> (", constantValue_, @") : ");
  for (jint i = 0; i < numGoals_; i++) {
    ADXSolverVariable *v = IOSObjectArray_Get(nil_chk(arrayGoals_), i);
    [((ADXPriorityGoalRow_GoalVariableAccessor *) nil_chk(accessor_)) init__WithADXSolverVariable:v];
    JreStrAppend(&result, "@C", accessor_, ' ');
  }
  return result;
}

- (void)__javaClone:(ADXPriorityGoalRow *)original {
  [super __javaClone:original];
  [mCache_ release];
}

- (void)dealloc {
  RELEASE_(arrayGoals_);
  RELEASE_(sortArray_);
  RELEASE_(accessor_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXSolverVariable;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x12, 5, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x12, 6, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(clear);
  methods[1].selector = @selector(initWithADXCache:);
  methods[2].selector = @selector(isEmpty);
  methods[3].selector = @selector(getPivotCandidateWithADXLinearSystem:withBooleanArray:);
  methods[4].selector = @selector(addErrorWithADXSolverVariable:);
  methods[5].selector = @selector(addToGoalWithADXSolverVariable:);
  methods[6].selector = @selector(removeGoalWithADXSolverVariable:);
  methods[7].selector = @selector(updateFromRowWithADXLinearSystem:withADXArrayRow:withBoolean:);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "epsilon", "F", .constantValue.asFloat = ADXPriorityGoalRow_epsilon, 0x1a, -1, -1, -1, -1 },
    { "DEBUG", "Z", .constantValue.asBOOL = ADXPriorityGoalRow_DEBUG, 0x1a, -1, -1, -1, -1 },
    { "TABLE_SIZE_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "arrayGoals_", "[LADXSolverVariable;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "sortArray_", "[LADXSolverVariable;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "numGoals_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "accessor_", "LADXPriorityGoalRow_GoalVariableAccessor;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mCache_", "LADXCache;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "NOT_FOUND", "I", .constantValue.asInt = ADXPriorityGoalRow_NOT_FOUND, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXCache;", "getPivotCandidate", "LADXLinearSystem;[Z", "addError", "LADXSolverVariable;", "addToGoal", "removeGoal", "updateFromRow", "LADXLinearSystem;LADXArrayRow;Z", "toString", "LADXPriorityGoalRow_GoalVariableAccessor;" };
  static const J2ObjcClassInfo _ADXPriorityGoalRow = { "PriorityGoalRow", "androidx.constraintlayout.core", ptrTable, methods, fields, 7, 0x1, 9, 9, -1, 10, -1, -1, -1 };
  return &_ADXPriorityGoalRow;
}

@end

void ADXPriorityGoalRow_initWithADXCache_(ADXPriorityGoalRow *self, ADXCache *cache) {
  ADXArrayRow_initWithADXCache_(self, cache);
  self->TABLE_SIZE_ = 128;
  JreStrongAssignAndConsume(&self->arrayGoals_, [IOSObjectArray newArrayWithLength:self->TABLE_SIZE_ type:ADXSolverVariable_class_()]);
  JreStrongAssignAndConsume(&self->sortArray_, [IOSObjectArray newArrayWithLength:self->TABLE_SIZE_ type:ADXSolverVariable_class_()]);
  self->numGoals_ = 0;
  JreStrongAssignAndConsume(&self->accessor_, new_ADXPriorityGoalRow_GoalVariableAccessor_initWithADXPriorityGoalRow_withADXPriorityGoalRow_(self, self));
  self->mCache_ = cache;
}

ADXPriorityGoalRow *new_ADXPriorityGoalRow_initWithADXCache_(ADXCache *cache) {
  J2OBJC_NEW_IMPL(ADXPriorityGoalRow, initWithADXCache_, cache)
}

ADXPriorityGoalRow *create_ADXPriorityGoalRow_initWithADXCache_(ADXCache *cache) {
  J2OBJC_CREATE_IMPL(ADXPriorityGoalRow, initWithADXCache_, cache)
}

void ADXPriorityGoalRow_addToGoalWithADXSolverVariable_(ADXPriorityGoalRow *self, ADXSolverVariable *variable) {
  if (self->numGoals_ + 1 > ((IOSObjectArray *) nil_chk(self->arrayGoals_))->size_) {
    JreStrongAssign(&self->arrayGoals_, JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->arrayGoals_, self->arrayGoals_->size_ * 2));
    JreStrongAssign(&self->sortArray_, JavaUtilArrays_copyOfWithNSObjectArray_withInt_(self->arrayGoals_, ((IOSObjectArray *) nil_chk(self->arrayGoals_))->size_ * 2));
  }
  IOSObjectArray_Set(nil_chk(self->arrayGoals_), self->numGoals_, variable);
  self->numGoals_++;
  if (self->numGoals_ > 1 && ((ADXSolverVariable *) nil_chk(IOSObjectArray_Get(self->arrayGoals_, self->numGoals_ - 1)))->id__ > ((ADXSolverVariable *) nil_chk(variable))->id__) {
    for (jint i = 0; i < self->numGoals_; i++) {
      IOSObjectArray_Set(nil_chk(self->sortArray_), i, IOSObjectArray_Get(self->arrayGoals_, i));
    }
    JavaUtilArrays_sortWithNSObjectArray_withInt_withInt_withJavaUtilComparator_(self->sortArray_, 0, self->numGoals_, create_ADXPriorityGoalRow_1_init());
    for (jint i = 0; i < self->numGoals_; i++) {
      IOSObjectArray_Set(nil_chk(self->arrayGoals_), i, IOSObjectArray_Get(nil_chk(self->sortArray_), i));
    }
  }
  ((ADXSolverVariable *) nil_chk(variable))->inGoal_ = true;
  [variable addToRowWithADXArrayRow:self];
}

void ADXPriorityGoalRow_removeGoalWithADXSolverVariable_(ADXPriorityGoalRow *self, ADXSolverVariable *variable) {
  for (jint i = 0; i < self->numGoals_; i++) {
    if (IOSObjectArray_Get(nil_chk(self->arrayGoals_), i) == variable) {
      for (jint j = i; j < self->numGoals_ - 1; j++) {
        IOSObjectArray_Set(self->arrayGoals_, j, IOSObjectArray_Get(self->arrayGoals_, j + 1));
      }
      self->numGoals_--;
      ((ADXSolverVariable *) nil_chk(variable))->inGoal_ = false;
      return;
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXPriorityGoalRow)

@implementation ADXPriorityGoalRow_GoalVariableAccessor

- (instancetype)initWithADXPriorityGoalRow:(ADXPriorityGoalRow *)outer$
                    withADXPriorityGoalRow:(ADXPriorityGoalRow *)row {
  ADXPriorityGoalRow_GoalVariableAccessor_initWithADXPriorityGoalRow_withADXPriorityGoalRow_(self, outer$, row);
  return self;
}

- (void)init__WithADXSolverVariable:(ADXSolverVariable *)variable {
  self->variable_ = variable;
}

- (jboolean)addToGoalWithADXSolverVariable:(ADXSolverVariable *)other
                                 withFloat:(jfloat)value {
  if (((ADXSolverVariable *) nil_chk(variable_))->inGoal_) {
    jboolean empty = true;
    for (jint i = 0; i < ADXSolverVariable_MAX_STRENGTH; i++) {
      JrePlusAssignFloatF(IOSFloatArray_GetRef(nil_chk(((ADXSolverVariable *) nil_chk(variable_))->goalStrengthVector_), i), IOSFloatArray_Get(((ADXSolverVariable *) nil_chk(other))->goalStrengthVector_, i) * value);
      jfloat v = IOSFloatArray_Get(variable_->goalStrengthVector_, i);
      if (JavaLangMath_absWithFloat_(v) < ADXPriorityGoalRow_epsilon) {
        *IOSFloatArray_GetRef(nil_chk(((ADXSolverVariable *) nil_chk(variable_))->goalStrengthVector_), i) = 0;
      }
      else {
        empty = false;
      }
    }
    if (empty) {
      ADXPriorityGoalRow_removeGoalWithADXSolverVariable_(this$0_, variable_);
    }
  }
  else {
    for (jint i = 0; i < ADXSolverVariable_MAX_STRENGTH; i++) {
      jfloat strength = IOSFloatArray_Get(nil_chk(((ADXSolverVariable *) nil_chk(other))->goalStrengthVector_), i);
      if (strength != 0) {
        jfloat v = value * strength;
        if (JavaLangMath_absWithFloat_(v) < ADXPriorityGoalRow_epsilon) {
          v = 0;
        }
        *IOSFloatArray_GetRef(nil_chk(((ADXSolverVariable *) nil_chk(variable_))->goalStrengthVector_), i) = v;
      }
      else {
        *IOSFloatArray_GetRef(variable_->goalStrengthVector_, i) = 0;
      }
    }
    return true;
  }
  return false;
}

- (void)addWithADXSolverVariable:(ADXSolverVariable *)other {
  for (jint i = 0; i < ADXSolverVariable_MAX_STRENGTH; i++) {
    JrePlusAssignFloatF(IOSFloatArray_GetRef(nil_chk(((ADXSolverVariable *) nil_chk(variable_))->goalStrengthVector_), i), IOSFloatArray_Get(((ADXSolverVariable *) nil_chk(other))->goalStrengthVector_, i));
    jfloat value = IOSFloatArray_Get(variable_->goalStrengthVector_, i);
    if (JavaLangMath_absWithFloat_(value) < ADXPriorityGoalRow_epsilon) {
      *IOSFloatArray_GetRef(nil_chk(((ADXSolverVariable *) nil_chk(variable_))->goalStrengthVector_), i) = 0;
    }
  }
}

- (jboolean)isNegative {
  return ADXPriorityGoalRow_GoalVariableAccessor_isNegative(self);
}

- (jboolean)isSmallerThanWithADXSolverVariable:(ADXSolverVariable *)other {
  return ADXPriorityGoalRow_GoalVariableAccessor_isSmallerThanWithADXSolverVariable_(self, other);
}

- (jboolean)isNull {
  for (jint i = 0; i < ADXSolverVariable_MAX_STRENGTH; i++) {
    if (IOSFloatArray_Get(nil_chk(((ADXSolverVariable *) nil_chk(variable_))->goalStrengthVector_), i) != 0) {
      return false;
    }
  }
  return true;
}

- (void)reset {
  JavaUtilArrays_fillWithFloatArray_withFloat_(((ADXSolverVariable *) nil_chk(variable_))->goalStrengthVector_, 0);
}

- (NSString *)description {
  NSString *result = @"[ ";
  if (variable_ != nil) {
    for (jint i = 0; i < ADXSolverVariable_MAX_STRENGTH; i++) {
      JreStrAppend(&result, "FC", IOSFloatArray_Get(nil_chk(variable_->goalStrengthVector_), i), ' ');
    }
  }
  JreStrAppend(&result, "$@", @"] ", variable_);
  return result;
}

- (void)__javaClone:(ADXPriorityGoalRow_GoalVariableAccessor *)original {
  [super __javaClone:original];
  [this$0_ release];
  [variable_ release];
  [row_ release];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, 6, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXPriorityGoalRow:withADXPriorityGoalRow:);
  methods[1].selector = @selector(init__WithADXSolverVariable:);
  methods[2].selector = @selector(addToGoalWithADXSolverVariable:withFloat:);
  methods[3].selector = @selector(addWithADXSolverVariable:);
  methods[4].selector = @selector(isNegative);
  methods[5].selector = @selector(isSmallerThanWithADXSolverVariable:);
  methods[6].selector = @selector(isNull);
  methods[7].selector = @selector(reset);
  methods[8].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LADXPriorityGoalRow;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "variable_", "LADXSolverVariable;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "row_", "LADXPriorityGoalRow;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXPriorityGoalRow;LADXPriorityGoalRow;", "init", "LADXSolverVariable;", "addToGoal", "LADXSolverVariable;F", "add", "isSmallerThan", "toString", "LADXPriorityGoalRow;" };
  static const J2ObjcClassInfo _ADXPriorityGoalRow_GoalVariableAccessor = { "GoalVariableAccessor", "androidx.constraintlayout.core", ptrTable, methods, fields, 7, 0x0, 9, 3, 8, -1, -1, -1, -1 };
  return &_ADXPriorityGoalRow_GoalVariableAccessor;
}

@end

void ADXPriorityGoalRow_GoalVariableAccessor_initWithADXPriorityGoalRow_withADXPriorityGoalRow_(ADXPriorityGoalRow_GoalVariableAccessor *self, ADXPriorityGoalRow *outer$, ADXPriorityGoalRow *row) {
  self->this$0_ = outer$;
  NSObject_init(self);
  self->row_ = row;
}

ADXPriorityGoalRow_GoalVariableAccessor *new_ADXPriorityGoalRow_GoalVariableAccessor_initWithADXPriorityGoalRow_withADXPriorityGoalRow_(ADXPriorityGoalRow *outer$, ADXPriorityGoalRow *row) {
  J2OBJC_NEW_IMPL(ADXPriorityGoalRow_GoalVariableAccessor, initWithADXPriorityGoalRow_withADXPriorityGoalRow_, outer$, row)
}

ADXPriorityGoalRow_GoalVariableAccessor *create_ADXPriorityGoalRow_GoalVariableAccessor_initWithADXPriorityGoalRow_withADXPriorityGoalRow_(ADXPriorityGoalRow *outer$, ADXPriorityGoalRow *row) {
  J2OBJC_CREATE_IMPL(ADXPriorityGoalRow_GoalVariableAccessor, initWithADXPriorityGoalRow_withADXPriorityGoalRow_, outer$, row)
}

jboolean ADXPriorityGoalRow_GoalVariableAccessor_isNegative(ADXPriorityGoalRow_GoalVariableAccessor *self) {
  for (jint i = ADXSolverVariable_MAX_STRENGTH - 1; i >= 0; i--) {
    jfloat value = IOSFloatArray_Get(nil_chk(((ADXSolverVariable *) nil_chk(self->variable_))->goalStrengthVector_), i);
    if (value > 0) {
      return false;
    }
    if (value < 0) {
      return true;
    }
  }
  return false;
}

jboolean ADXPriorityGoalRow_GoalVariableAccessor_isSmallerThanWithADXSolverVariable_(ADXPriorityGoalRow_GoalVariableAccessor *self, ADXSolverVariable *other) {
  for (jint i = ADXSolverVariable_MAX_STRENGTH - 1; i >= 0; i--) {
    jfloat comparedValue = IOSFloatArray_Get(nil_chk(((ADXSolverVariable *) nil_chk(other))->goalStrengthVector_), i);
    jfloat value = IOSFloatArray_Get(((ADXSolverVariable *) nil_chk(self->variable_))->goalStrengthVector_, i);
    if (value == comparedValue) {
      continue;
    }
    if (value < comparedValue) {
      return true;
    }
    else {
      return false;
    }
  }
  return false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXPriorityGoalRow_GoalVariableAccessor)

@implementation ADXPriorityGoalRow_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXPriorityGoalRow_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)compareWithId:(ADXSolverVariable *)variable1
               withId:(ADXSolverVariable *)variable2 {
  return ((ADXSolverVariable *) nil_chk(variable1))->id__ - ((ADXSolverVariable *) nil_chk(variable2))->id__;
}

- (id<JavaUtilComparator>)reversed {
  return JavaUtilComparator_reversed(self);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilComparator:(id<JavaUtilComparator>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilComparator_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0
                                             withJavaUtilComparator:(id<JavaUtilComparator>)arg1 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_withJavaUtilComparator_(self, arg0, arg1);
}

- (id<JavaUtilComparator>)thenComparingWithJavaUtilFunctionFunction:(id<JavaUtilFunctionFunction>)arg0 {
  return JavaUtilComparator_thenComparingWithJavaUtilFunctionFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingIntWithJavaUtilFunctionToIntFunction:(id<JavaUtilFunctionToIntFunction>)arg0 {
  return JavaUtilComparator_thenComparingIntWithJavaUtilFunctionToIntFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingLongWithJavaUtilFunctionToLongFunction:(id<JavaUtilFunctionToLongFunction>)arg0 {
  return JavaUtilComparator_thenComparingLongWithJavaUtilFunctionToLongFunction_(self, arg0);
}

- (id<JavaUtilComparator>)thenComparingDoubleWithJavaUtilFunctionToDoubleFunction:(id<JavaUtilFunctionToDoubleFunction>)arg0 {
  return JavaUtilComparator_thenComparingDoubleWithJavaUtilFunctionToDoubleFunction_(self, arg0);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LADXSolverVariable;LADXSolverVariable;", "LADXPriorityGoalRow;", "addToGoalWithADXSolverVariable:", "Ljava/lang/Object;Ljava/util/Comparator<Landroidx/constraintlayout/core/SolverVariable;>;" };
  static const J2ObjcClassInfo _ADXPriorityGoalRow_1 = { "", "androidx.constraintlayout.core", ptrTable, methods, NULL, 7, 0x8010, 2, 0, 2, -1, 3, 4, -1 };
  return &_ADXPriorityGoalRow_1;
}

@end

void ADXPriorityGoalRow_1_init(ADXPriorityGoalRow_1 *self) {
  NSObject_init(self);
}

ADXPriorityGoalRow_1 *new_ADXPriorityGoalRow_1_init() {
  J2OBJC_NEW_IMPL(ADXPriorityGoalRow_1, init)
}

ADXPriorityGoalRow_1 *create_ADXPriorityGoalRow_1_init() {
  J2OBJC_CREATE_IMPL(ADXPriorityGoalRow_1, init)
}