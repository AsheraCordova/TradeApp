//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\webkit\SslErrorHandler.java
//

#include "J2ObjC_source.h"
#include "SslErrorHandler.h"


@implementation ADSslErrorHandler

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADSslErrorHandler_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)proceed {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(proceed);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _ADSslErrorHandler = { "SslErrorHandler", "r.android.webkit", NULL, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_ADSslErrorHandler;
}

@end

void ADSslErrorHandler_init(ADSslErrorHandler *self) {
  NSObject_init(self);
}

ADSslErrorHandler *new_ADSslErrorHandler_init() {
  J2OBJC_NEW_IMPL(ADSslErrorHandler, init)
}

ADSslErrorHandler *create_ADSslErrorHandler_init() {
  J2OBJC_CREATE_IMPL(ADSslErrorHandler, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADSslErrorHandler)