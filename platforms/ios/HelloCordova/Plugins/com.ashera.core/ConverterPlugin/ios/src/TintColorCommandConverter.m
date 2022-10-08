//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSConverter\src\main\java\com\ashera\converter\TintColorCommandConverter.java
//

#include "AttributeCommand.h"
#include "BaseAttributeCommand.h"
#include "IOSObjectArray.h"
#include "IWidget.h"
#include "J2ObjC_source.h"
#include "TintColorCommandConverter.h"


@interface ASTintColorCommandConverter ()

- (id)setImageWithRenderingModeAlwaysTemplateWithId:(id)image;

@end

__attribute__((unused)) static id ASTintColorCommandConverter_setImageWithRenderingModeAlwaysTemplateWithId_(ASTintColorCommandConverter *self, id image);

@implementation ASTintColorCommandConverter

- (instancetype)initWithNSString:(NSString *)id_ {
  ASTintColorCommandConverter_initWithNSString_(self, id_);
  return self;
}

- (id)modifyValueWithASIWidget:(id<ASIWidget>)widget
                        withId:(id)nativeView
                  withNSString:(NSString *)phase
                  withNSString:(NSString *)attributeName
                        withId:(id)value {
  if (value != nil) {
    value = ASTintColorCommandConverter_setImageWithRenderingModeAlwaysTemplateWithId_(self, value);
  }
  return value;
}

- (id)setImageWithRenderingModeAlwaysTemplateWithId:(id)image {
  return ASTintColorCommandConverter_setImageWithRenderingModeAlwaysTemplateWithId_(self, image);
}

- (id<ASAttributeCommand>)newInstanceWithNSObjectArray:(IOSObjectArray *)args {
  ASTintColorCommandConverter *capInsetsCommandConverter = new_ASTintColorCommandConverter_initWithNSString_(self->id__);
  return capInsetsCommandConverter;
}

- (void)updateArgsWithNSObjectArray:(IOSObjectArray *)args {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x102, 3, 4, -1, -1, -1, -1 },
    { NULL, "LASAttributeCommand;", 0x81, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x81, 7, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(modifyValueWithASIWidget:withId:withNSString:withNSString:withId:);
  methods[2].selector = @selector(setImageWithRenderingModeAlwaysTemplateWithId:);
  methods[3].selector = @selector(newInstanceWithNSObjectArray:);
  methods[4].selector = @selector(updateArgsWithNSObjectArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;", "modifyValue", "LASIWidget;LNSObject;LNSString;LNSString;LNSObject;", "setImageWithRenderingModeAlwaysTemplate", "LNSObject;", "newInstance", "[LNSObject;", "updateArgs" };
  static const J2ObjcClassInfo _ASTintColorCommandConverter = { "TintColorCommandConverter", "com.ashera.converter", ptrTable, methods, NULL, 7, 0x1, 5, 0, -1, -1, -1, -1, -1 };
  return &_ASTintColorCommandConverter;
}

@end

void ASTintColorCommandConverter_initWithNSString_(ASTintColorCommandConverter *self, NSString *id_) {
  ASBaseAttributeCommand_initWithNSString_(self, id_);
}

ASTintColorCommandConverter *new_ASTintColorCommandConverter_initWithNSString_(NSString *id_) {
  J2OBJC_NEW_IMPL(ASTintColorCommandConverter, initWithNSString_, id_)
}

ASTintColorCommandConverter *create_ASTintColorCommandConverter_initWithNSString_(NSString *id_) {
  J2OBJC_CREATE_IMPL(ASTintColorCommandConverter, initWithNSString_, id_)
}

id ASTintColorCommandConverter_setImageWithRenderingModeAlwaysTemplateWithId_(ASTintColorCommandConverter *self, id image) {
  if ([image isKindOfClass:[UIImage class]]) {
    return [(UIImage*) image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
  } else {
    return image;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASTintColorCommandConverter)
