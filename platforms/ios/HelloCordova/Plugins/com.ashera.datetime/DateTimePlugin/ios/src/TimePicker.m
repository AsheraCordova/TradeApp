//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSDateTimePlugin\src\main\java\com\ashera\datetime\TimePicker.java
//

#include "FrameLayout.h"
#include "J2ObjC_source.h"
#include "TimePicker.h"


@implementation ASTimePicker

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASTimePicker_init(self);
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
  static const J2ObjcClassInfo _ASTimePicker = { "TimePicker", "com.ashera.datetime", NULL, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, -1, -1 };
  return &_ASTimePicker;
}

@end

void ASTimePicker_init(ASTimePicker *self) {
  ADFrameLayout_init(self);
}

ASTimePicker *new_ASTimePicker_init() {
  J2OBJC_NEW_IMPL(ASTimePicker, init)
}

ASTimePicker *create_ASTimePicker_init() {
  J2OBJC_CREATE_IMPL(ASTimePicker, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASTimePicker)