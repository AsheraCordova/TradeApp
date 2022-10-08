//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\converter\IntConverter.java
//

#include "IFragment.h"
#include "IntConverter.h"
#include "J2ObjC_source.h"
#include "PluginInvoker.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/util/List.h"
#include "java/util/Map.h"


@implementation ASIntConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASIntConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaLangInteger *)convertFromWithId:(id)value
                       withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                       withASIFragment:(id<ASIFragment>)fragment {
  if (value == nil) {
    return nil;
  }
  if ([value isKindOfClass:[JavaLangDouble class]]) {
    return JavaLangInteger_valueOfWithInt_([((JavaLangDouble *) value) intValue]);
  }
  if ([value isKindOfClass:[NSString class]]) {
    return JavaLangInteger_valueOfWithInt_([((JavaLangFloat *) nil_chk(JavaLangFloat_valueOfWithNSString_((NSString *) value))) intValue]);
  }
  return ASPluginInvoker_getIntWithId_(value);
}

- (JavaLangInteger *)convertToWithId:(JavaLangInteger *)value
                     withASIFragment:(id<ASIFragment>)fragment {
  return value;
}

- (id<JavaUtilList>)getDependentAttributes {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, 0, 1, -1, 2, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, 3, 4, -1, -1, -1, -1 },
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
  static const void *ptrTable[] = { "convertFrom", "LNSObject;LJavaUtilMap;LASIFragment;", "(Ljava/lang/Object;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/core/IFragment;)Ljava/lang/Integer;", "convertTo", "LJavaLangInteger;LASIFragment;", "()Ljava/util/List<Ljava/lang/String;>;", "Ljava/lang/Object;Lcom/ashera/converter/IConverter<Ljava/lang/Integer;Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _ASIntConverter = { "IntConverter", "com.ashera.converter", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, 6, -1 };
  return &_ASIntConverter;
}

@end

void ASIntConverter_init(ASIntConverter *self) {
  NSObject_init(self);
}

ASIntConverter *new_ASIntConverter_init() {
  J2OBJC_NEW_IMPL(ASIntConverter, init)
}

ASIntConverter *create_ASIntConverter_init() {
  J2OBJC_CREATE_IMPL(ASIntConverter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASIntConverter)
