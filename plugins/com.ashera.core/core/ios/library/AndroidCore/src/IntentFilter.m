//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\content\IntentFilter.java
//

#include "IntentFilter.h"
#include "J2ObjC_source.h"


@implementation ADIntentFilter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADIntentFilter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addActionWithNSString:(NSString *)actionPhoneStateChanged {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addActionWithNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "addAction", "LNSString;" };
  static const J2ObjcClassInfo _ADIntentFilter = { "IntentFilter", "r.android.content", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_ADIntentFilter;
}

@end

void ADIntentFilter_init(ADIntentFilter *self) {
  NSObject_init(self);
}

ADIntentFilter *new_ADIntentFilter_init() {
  J2OBJC_NEW_IMPL(ADIntentFilter, init)
}

ADIntentFilter *create_ADIntentFilter_init() {
  J2OBJC_CREATE_IMPL(ADIntentFilter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADIntentFilter)