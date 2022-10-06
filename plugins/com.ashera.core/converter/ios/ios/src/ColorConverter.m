//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSConverter\src\main\java\com\ashera\converter\ColorConverter.java
//

#include "ColorConverter.h"
#include "IFragment.h"
#include "J2ObjC_source.h"
#include "PluginInvoker.h"
#include "ResourceBundleUtils.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/ResourceBundle.h"


@implementation ASColorConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASColorConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (id)convertFromWithId:(NSString *)value
        withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
        withASIFragment:(id<ASIFragment>)fragment {
  if (value == nil) {
    return nil;
  }
  NSString *color = ASResourceBundleUtils_getStringWithNSString_withNSString_withNSString_withASIFragment_(@"color/color", @"color", value, fragment);
  return ASPluginInvoker_getColorWithNSString_(color);
}

- (NSString *)convertToWithId:(id)value
              withASIFragment:(id<ASIFragment>)fragment {
  return [self colorToStringWithId:value];
}

- (NSString *)colorToStringWithId:(id)color {
  CGFloat red, green, blue, alpha;
  [((UIColor*) color) getRed:&red green:&green blue:&blue alpha:&alpha];
  return [[NSString stringWithFormat:@"#%02x%02x%02x", (int)(red * 255), (int)(green * 255) , (int)(blue * 255)] uppercaseString];
}

- (id<JavaUtilList>)getDependentAttributes {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 0, 1, -1, 2, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x101, 5, 6, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 7, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(convertFromWithId:withJavaUtilMap:withASIFragment:);
  methods[2].selector = @selector(convertToWithId:withASIFragment:);
  methods[3].selector = @selector(colorToStringWithId:);
  methods[4].selector = @selector(getDependentAttributes);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "resourceBundle_", "LJavaUtilResourceBundle;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "convertFrom", "LNSString;LJavaUtilMap;LASIFragment;", "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/core/IFragment;)Ljava/lang/Object;", "convertTo", "LNSObject;LASIFragment;", "colorToString", "LNSObject;", "()Ljava/util/List<Ljava/lang/String;>;", "Ljava/lang/Object;Lcom/ashera/converter/IConverter<Ljava/lang/Object;Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _ASColorConverter = { "ColorConverter", "com.ashera.converter", ptrTable, methods, fields, 7, 0x1, 5, 1, -1, -1, -1, 8, -1 };
  return &_ASColorConverter;
}

@end

void ASColorConverter_init(ASColorConverter *self) {
  NSObject_init(self);
}

ASColorConverter *new_ASColorConverter_init() {
  J2OBJC_NEW_IMPL(ASColorConverter, init)
}

ASColorConverter *create_ASColorConverter_init() {
  J2OBJC_CREATE_IMPL(ASColorConverter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASColorConverter)