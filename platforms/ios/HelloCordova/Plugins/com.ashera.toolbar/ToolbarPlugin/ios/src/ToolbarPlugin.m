//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSToolbarPlugin\src\main\java\com\ashera\toolbar\ToolbarPlugin.java
//

#include "ActionMenuViewImpl.h"
#include "J2ObjC_source.h"
#include "ToolbarImpl.h"
#include "ToolbarPlugin.h"
#include "WidgetFactory.h"


@implementation ASToolbarPlugin

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASToolbarPlugin_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)initPlugin {
  ASToolbarPlugin_initPlugin();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initPlugin);
  #pragma clang diagnostic pop
  static const J2ObjcClassInfo _ASToolbarPlugin = { "ToolbarPlugin", "com.ashera.toolbar", NULL, methods, NULL, 7, 0x1, 2, 0, -1, -1, -1, -1, -1 };
  return &_ASToolbarPlugin;
}

@end

void ASToolbarPlugin_init(ASToolbarPlugin *self) {
  NSObject_init(self);
}

ASToolbarPlugin *new_ASToolbarPlugin_init() {
  J2OBJC_NEW_IMPL(ASToolbarPlugin, init)
}

ASToolbarPlugin *create_ASToolbarPlugin_init() {
  J2OBJC_CREATE_IMPL(ASToolbarPlugin, init)
}

void ASToolbarPlugin_initPlugin() {
  ASToolbarPlugin_initialize();
  ASWidgetFactory_register__WithASIWidget_(new_ASToolbarImpl_init());
  ASWidgetFactory_register__WithASIWidget_(new_ASActionMenuViewImpl_init());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASToolbarPlugin)