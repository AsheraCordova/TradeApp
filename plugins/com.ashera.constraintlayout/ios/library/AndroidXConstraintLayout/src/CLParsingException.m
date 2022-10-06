//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\parser\CLParsingException.java
//

#include "CLElement.h"
#include "CLParsingException.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"


@interface ADXCLParsingException () {
 @public
  NSString *mReason_;
  jint mLineNumber_;
  NSString *mElementClass_;
}

@end

J2OBJC_FIELD_SETTER(ADXCLParsingException, mReason_, NSString *)
J2OBJC_FIELD_SETTER(ADXCLParsingException, mElementClass_, NSString *)

@implementation ADXCLParsingException

- (instancetype)initWithNSString:(NSString *)reason
                withADXCLElement:(ADXCLElement *)element {
  ADXCLParsingException_initWithNSString_withADXCLElement_(self, reason, element);
  return self;
}

- (NSString *)reason {
  return JreStrcat("$$$$IC", mReason_, @" (", mElementClass_, @" at line ", mLineNumber_, ')');
}

- (NSString *)description {
  return JreStrcat("$I$$", @"CLParsingException (", ((jint) [self hash]), @") : ", [self reason]);
}

- (void)dealloc {
  RELEASE_(mReason_);
  RELEASE_(mElementClass_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withADXCLElement:);
  methods[1].selector = @selector(reason);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mReason_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mLineNumber_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mElementClass_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LADXCLElement;", "toString" };
  static const J2ObjcClassInfo _ADXCLParsingException = { "CLParsingException", "androidx.constraintlayout.core.parser", ptrTable, methods, fields, 7, 0x1, 3, 3, -1, -1, -1, -1, -1 };
  return &_ADXCLParsingException;
}

@end

void ADXCLParsingException_initWithNSString_withADXCLElement_(ADXCLParsingException *self, NSString *reason, ADXCLElement *element) {
  JavaLangException_init(self);
  JreStrongAssign(&self->mReason_, reason);
  if (element != nil) {
    JreStrongAssign(&self->mElementClass_, [element getStrClass]);
    self->mLineNumber_ = [element getLine];
  }
  else {
    JreStrongAssign(&self->mElementClass_, @"unknown");
    self->mLineNumber_ = 0;
  }
}

ADXCLParsingException *new_ADXCLParsingException_initWithNSString_withADXCLElement_(NSString *reason, ADXCLElement *element) {
  J2OBJC_NEW_IMPL(ADXCLParsingException, initWithNSString_withADXCLElement_, reason, element)
}

ADXCLParsingException *create_ADXCLParsingException_initWithNSString_withADXCLElement_(NSString *reason, ADXCLElement *element) {
  J2OBJC_CREATE_IMPL(ADXCLParsingException, initWithNSString_withADXCLElement_, reason, element)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXCLParsingException)