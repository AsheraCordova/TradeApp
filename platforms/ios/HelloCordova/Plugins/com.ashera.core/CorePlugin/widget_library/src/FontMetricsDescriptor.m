//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\model\FontMetricsDescriptor.java
//

#include "FontMetricsDescriptor.h"
#include "J2ObjC_source.h"


@implementation ASFontMetricsDescriptor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASFontMetricsDescriptor_init(self);
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
    { "top_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "ascent_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "descent_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "bottom_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "leading_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const J2ObjcClassInfo _ASFontMetricsDescriptor = { "FontMetricsDescriptor", "com.ashera.model", NULL, methods, fields, 7, 0x1, 1, 5, -1, -1, -1, -1, -1 };
  return &_ASFontMetricsDescriptor;
}

@end

void ASFontMetricsDescriptor_init(ASFontMetricsDescriptor *self) {
  NSObject_init(self);
}

ASFontMetricsDescriptor *new_ASFontMetricsDescriptor_init() {
  J2OBJC_NEW_IMPL(ASFontMetricsDescriptor, init)
}

ASFontMetricsDescriptor *create_ASFontMetricsDescriptor_init() {
  J2OBJC_CREATE_IMPL(ASFontMetricsDescriptor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASFontMetricsDescriptor)
