//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\converter\DimensionPxIntConverter.java
//

#include "DimensionPxIntConverter.h"
#include "IFragment.h"
#include "J2ObjC_source.h"
#include "ResourceBundleUtils.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/List.h"
#include "java/util/Map.h"


@implementation ASDimensionPxIntConverter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASDimensionPxIntConverter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaLangInteger *)convertFromWithId:(NSString *)dimen
                       withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                       withASIFragment:(id<ASIFragment>)fragment {
  jint paramDimen = 0;
  if (dimen != nil) {
    dimen = [dimen java_trim];
    dimen = ASResourceBundleUtils_getStringWithNSString_withNSString_withNSString_withASIFragment_(@"values/dimens", @"dimen", dimen, fragment);
    if ([((NSString *) nil_chk(dimen)) java_hasSuffix:@"px"]) {
      paramDimen = JavaLangInteger_parseIntWithNSString_([dimen java_substring:0 endIndex:[dimen java_length] - 2]);
    }
    else {
      @throw create_JavaLangRuntimeException_initWithNSString_(@"The dimension can be match_parent/wrap_content or should be expressed in px");
    }
  }
  return JavaLangInteger_valueOfWithInt_(paramDimen);
}

- (NSString *)convertToWithId:(JavaLangInteger *)value
              withASIFragment:(id<ASIFragment>)fragment {
  NSString *convertValue = nil;
  if (value != nil) {
    if ([value intValue] == -1) {
      convertValue = nil;
    }
    else {
      convertValue = JreStrcat("@$", value, @"px");
    }
  }
  return convertValue;
}

- (id<JavaUtilList>)getDependentAttributes {
  return nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaLangInteger;", 0x1, 0, 1, -1, 2, -1, -1 },
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
  static const void *ptrTable[] = { "convertFrom", "LNSString;LJavaUtilMap;LASIFragment;", "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/core/IFragment;)Ljava/lang/Integer;", "convertTo", "LJavaLangInteger;LASIFragment;", "()Ljava/util/List<Ljava/lang/String;>;", "Ljava/lang/Object;Lcom/ashera/converter/IConverter<Ljava/lang/Integer;Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _ASDimensionPxIntConverter = { "DimensionPxIntConverter", "com.ashera.converter", ptrTable, methods, NULL, 7, 0x1, 4, 0, -1, -1, -1, 6, -1 };
  return &_ASDimensionPxIntConverter;
}

@end

void ASDimensionPxIntConverter_init(ASDimensionPxIntConverter *self) {
  NSObject_init(self);
}

ASDimensionPxIntConverter *new_ASDimensionPxIntConverter_init() {
  J2OBJC_NEW_IMPL(ASDimensionPxIntConverter, init)
}

ASDimensionPxIntConverter *create_ASDimensionPxIntConverter_init() {
  J2OBJC_CREATE_IMPL(ASDimensionPxIntConverter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASDimensionPxIntConverter)