//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\ios_widget_library\src\main\java\com\ashera\layout\MeasurableImageView.java
//

#include "BaseMeasurableImageView.h"
#include "IWidget.h"
#include "J2ObjC_source.h"
#include "MeasurableImageView.h"


@implementation ASMeasurableImageView

- (instancetype)initWithASIWidget:(id<ASIWidget>)widget {
  ASMeasurableImageView_initWithASIWidget_(self, widget);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithASIWidget:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LASIWidget;" };
  static const J2ObjcClassInfo _ASMeasurableImageView = { "MeasurableImageView", "com.ashera.layout", ptrTable, methods, NULL, 7, 0x1, 1, 0, -1, -1, -1, -1, -1 };
  return &_ASMeasurableImageView;
}

@end

void ASMeasurableImageView_initWithASIWidget_(ASMeasurableImageView *self, id<ASIWidget> widget) {
  ASBaseMeasurableImageView_initWithASIWidget_(self, widget);
}

ASMeasurableImageView *new_ASMeasurableImageView_initWithASIWidget_(id<ASIWidget> widget) {
  J2OBJC_NEW_IMPL(ASMeasurableImageView, initWithASIWidget_, widget)
}

ASMeasurableImageView *create_ASMeasurableImageView_initWithASIWidget_(id<ASIWidget> widget) {
  J2OBJC_CREATE_IMPL(ASMeasurableImageView, initWithASIWidget_, widget)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASMeasurableImageView)