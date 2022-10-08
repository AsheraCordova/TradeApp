//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\converter\ResourceStringConverter.java
//

#include "IFragment.h"
#include "J2ObjC_source.h"
#include "ResourceBundleUtils.h"
#include "ResourceStringConverter.h"
#include "java/util/List.h"
#include "java/util/Map.h"


@implementation ASResourceStringConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASResourceStringConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSString *)convertFromWithId:(NSString *)text
                withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                withASIFragment:(id<ASIFragment>)fragment {
  return ASResourceBundleUtils_getStringWithNSString_withNSString_withNSString_withASIFragment_(@"values/strings", @"string", text, fragment);
}

- (NSString *)convertToWithId:(NSString *)value
              withASIFragment:(id<ASIFragment>)fragment {
  return value;
}

- (id<JavaUtilList>)getDependentAttributes {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 0, 1, -1, 2, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 5, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(convertFromWithId:withJavaUtilMap:withASIFragment:);
  methods[2].selector = @selector(convertToWithId:withASIFragment:);
  methods[3].selector = @selector(getDependentAttributes);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "convertFrom", "LNSString;LJavaUtilMap;LASIFragment;", "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/core/IFragment;)Ljava/lang/String;", "convertTo", "LNSString;LASIFragment;", "()Ljava/util/List<Ljava/lang/String;>;", "Ljava/lang/Object;Lcom/ashera/converter/IConverter<Ljava/lang/String;Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _ASResourceStringConverter = { "ResourceStringConverter", "com.ashera.converter", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, 6, -1 };
  return &_ASResourceStringConverter;
}

@end

void ASResourceStringConverter_init(ASResourceStringConverter *self) {
  NSObject_init(self);
}

ASResourceStringConverter *new_ASResourceStringConverter_init() {
  J2OBJC_NEW_IMPL(ASResourceStringConverter, init)
}

ASResourceStringConverter *create_ASResourceStringConverter_init() {
  J2OBJC_CREATE_IMPL(ASResourceStringConverter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASResourceStringConverter)
