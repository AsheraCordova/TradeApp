//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\content\pm\ApplicationInfo.java
//

#include "ApplicationInfo.h"
#include "J2ObjC_source.h"


@implementation ADApplicationInfo

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADApplicationInfo_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "targetSdkVersion_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "FLAG_DEBUGGABLE", "I", .constantValue.asInt = ADApplicationInfo_FLAG_DEBUGGABLE, 0x19, -1, -1, -1, -1 },
    { "FLAG_SUPPORTS_RTL", "I", .constantValue.asInt = ADApplicationInfo_FLAG_SUPPORTS_RTL, 0x19, -1, -1, -1, -1 },
    { "flags_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const J2ObjcClassInfo _ADApplicationInfo = { "ApplicationInfo", "r.android.content.pm", NULL, methods, fields, 7, 0x1, 1, 4, -1, -1, -1, -1, -1 };
  return &_ADApplicationInfo;
}

@end

void ADApplicationInfo_init(ADApplicationInfo *self) {
  NSObject_init(self);
  self->targetSdkVersion_ = 24;
}

ADApplicationInfo *new_ADApplicationInfo_init() {
  J2OBJC_NEW_IMPL(ADApplicationInfo, init)
}

ADApplicationInfo *create_ADApplicationInfo_init() {
  J2OBJC_CREATE_IMPL(ADApplicationInfo, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADApplicationInfo)