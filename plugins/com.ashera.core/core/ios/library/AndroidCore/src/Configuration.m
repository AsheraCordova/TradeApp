//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\content\res\Configuration.java
//

#include "Configuration.h"
#include "J2ObjC_source.h"


@implementation ADConfiguration

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADConfiguration_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getLayoutDirection {
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getLayoutDirection);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _ADConfiguration = { "Configuration", "r.android.content.res", NULL, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_ADConfiguration;
}

@end

void ADConfiguration_init(ADConfiguration *self) {
  NSObject_init(self);
}

ADConfiguration *new_ADConfiguration_init() {
  J2OBJC_NEW_IMPL(ADConfiguration, init)
}

ADConfiguration *create_ADConfiguration_init() {
  J2OBJC_CREATE_IMPL(ADConfiguration, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADConfiguration)