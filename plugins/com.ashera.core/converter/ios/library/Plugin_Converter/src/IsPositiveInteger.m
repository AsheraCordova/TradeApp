//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\validations\IsPositiveInteger.java
//

#include "BaseValidator.h"
#include "IFragment.h"
#include "IOSObjectArray.h"
#include "IWidget.h"
#include "IsPositiveInteger.h"
#include "J2ObjC_source.h"
#include "ResourceBundleUtils.h"
#include "Validation.h"


NSString *ASIsPositiveInteger_POSITIVE_INT_PATTERN = @"\\d+";

@implementation ASIsPositiveInteger

- (id<ASValidation>)newInstanceWithNSStringArray:(IOSObjectArray *)argument {
  return create_ASIsPositiveInteger_init();
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASIsPositiveInteger_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)getDefaultErrorMessageWithASIWidget:(id<ASIWidget>)widget {
  NSString *res = ASResourceBundleUtils_getStringWithNSString_withNSString_withNSString_withASIFragment_(@"values/strings", @"string", @"@string/positivenumber_error_message", [((id<ASIWidget>) nil_chk(widget)) getFragment]);
  return res;
}

- (jboolean)isValidWithNSString:(NSString *)text
                  withASIWidget:(id<ASIWidget>)widget {
  if (text == nil || [text java_isEmpty]) {
    return true;
  }
  return [text java_matches:ASIsPositiveInteger_POSITIVE_INT_PATTERN];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LASValidation;", 0x81, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(newInstanceWithNSStringArray:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(getDefaultErrorMessageWithASIWidget:);
  methods[3].selector = @selector(isValidWithNSString:withASIWidget:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "POSITIVE_INT_PATTERN", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 6, -1, -1 },
  };
  static const void *ptrTable[] = { "newInstance", "[LNSString;", "getDefaultErrorMessage", "LASIWidget;", "isValid", "LNSString;LASIWidget;", &ASIsPositiveInteger_POSITIVE_INT_PATTERN };
  static const J2ObjcClassInfo _ASIsPositiveInteger = { "IsPositiveInteger", "com.ashera.validations", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_ASIsPositiveInteger;
}

@end

void ASIsPositiveInteger_init(ASIsPositiveInteger *self) {
  ASBaseValidator_init(self);
}

ASIsPositiveInteger *new_ASIsPositiveInteger_init() {
  J2OBJC_NEW_IMPL(ASIsPositiveInteger, init)
}

ASIsPositiveInteger *create_ASIsPositiveInteger_init() {
  J2OBJC_CREATE_IMPL(ASIsPositiveInteger, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASIsPositiveInteger)
