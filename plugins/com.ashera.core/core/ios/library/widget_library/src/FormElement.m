//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\validations\FormElement.java
//

#include "FormElement.h"
#include "J2ObjC_source.h"


@interface ASFormElement : NSObject

@end

@implementation ASFormElement

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, 4, -1, -1 },
    { NULL, "V", 0x401, 5, 3, -1, 4, -1, -1 },
    { NULL, "LNSString;", 0x401, 6, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 9, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 10, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getFormGroupId);
  methods[1].selector = @selector(getTextEntered);
  methods[2].selector = @selector(isViewVisible);
  methods[3].selector = @selector(focus);
  methods[4].selector = @selector(resetError);
  methods[5].selector = @selector(showErrorWithNSString:);
  methods[6].selector = @selector(setCustomErrorMessageKeysWithJavaUtilList:);
  methods[7].selector = @selector(setCustomErrorMessageValuesWithJavaUtilList:);
  methods[8].selector = @selector(getCustomMessageWithNSString:);
  methods[9].selector = @selector(getValidationErrorDisplayType);
  methods[10].selector = @selector(setValidationErrorDisplayTypeWithInt:);
  methods[11].selector = @selector(setNormalStyleWithNSString:);
  methods[12].selector = @selector(setErrorStyleWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ERROR_DISPLAY_TYPE_POPUP", "I", .constantValue.asInt = ASFormElement_ERROR_DISPLAY_TYPE_POPUP, 0x19, -1, -1, -1, -1 },
    { "ERROR_DISPLAY_TYPE_LABEL", "I", .constantValue.asInt = ASFormElement_ERROR_DISPLAY_TYPE_LABEL, 0x19, -1, -1, -1, -1 },
    { "ERROR_DISPLAY_TYPE_STYLE", "I", .constantValue.asInt = ASFormElement_ERROR_DISPLAY_TYPE_STYLE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "showError", "LNSString;", "setCustomErrorMessageKeys", "LJavaUtilList;", "(Ljava/util/List<Ljava/lang/String;>;)V", "setCustomErrorMessageValues", "getCustomMessage", "setValidationErrorDisplayType", "I", "setNormalStyle", "setErrorStyle" };
  static const J2ObjcClassInfo _ASFormElement = { "FormElement", "com.ashera.validations", ptrTable, methods, fields, 7, 0x609, 13, 3, -1, -1, -1, -1, -1 };
  return &_ASFormElement;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ASFormElement)