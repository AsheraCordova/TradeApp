//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\os\Looper.java
//

#include "J2ObjC_source.h"
#include "Looper.h"
#include "java/lang/Thread.h"


@implementation ADLooper

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADLooper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ADLooper *)getMainLooper {
  return ADLooper_getMainLooper();
}

- (JavaLangThread *)getThread {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADLooper;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangThread;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getMainLooper);
  methods[2].selector = @selector(getThread);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _ADLooper = { "Looper", "r.android.os", NULL, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_ADLooper;
}

@end

void ADLooper_init(ADLooper *self) {
  NSObject_init(self);
}

ADLooper *new_ADLooper_init() {
  J2OBJC_NEW_IMPL(ADLooper, init)
}

ADLooper *create_ADLooper_init() {
  J2OBJC_CREATE_IMPL(ADLooper, init)
}

ADLooper *ADLooper_getMainLooper() {
  ADLooper_initialize();
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADLooper)