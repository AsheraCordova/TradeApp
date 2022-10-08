//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\validations\ValidatorFactory.java
//

#include "J2ObjC_source.h"
#include "Validation.h"
#include "ValidatorFactory.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"

@protocol JavaUtilMap;


inline id<JavaUtilMap> ASValidatorFactory_get_registrationMap(void);
inline id<JavaUtilMap> ASValidatorFactory_set_registrationMap(id<JavaUtilMap> value);
static id<JavaUtilMap> ASValidatorFactory_registrationMap;
J2OBJC_STATIC_FIELD_OBJ(ASValidatorFactory, registrationMap, id<JavaUtilMap>)

J2OBJC_INITIALIZED_DEFN(ASValidatorFactory)

@implementation ASValidatorFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASValidatorFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)init__ {
  ASValidatorFactory_init__();
}

+ (id<ASValidation>)getWithNSString:(NSString *)localname {
  return ASValidatorFactory_getWithNSString_(localname);
}

+ (void)register__WithNSString:(NSString *)localname
              withASValidation:(id<ASValidation>)validator {
  ASValidatorFactory_register__WithNSString_withASValidation_(localname, validator);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, -1, -1, -1, -1, -1 },
    { NULL, "LASValidation;", 0x9, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(init__);
  methods[2].selector = @selector(getWithNSString:);
  methods[3].selector = @selector(register__WithNSString:withASValidation:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "registrationMap", "LJavaUtilMap;", .constantValue.asLong = 0, 0xa, -1, 5, 6, -1 },
  };
  static const void *ptrTable[] = { "init", "get", "LNSString;", "register", "LNSString;LASValidation;", &ASValidatorFactory_registrationMap, "Ljava/util/Map<Ljava/lang/String;Lcom/ashera/validations/Validation;>;" };
  static const J2ObjcClassInfo _ASValidatorFactory = { "ValidatorFactory", "com.ashera.validations", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_ASValidatorFactory;
}

+ (void)initialize {
  if (self == [ASValidatorFactory class]) {
    JreStrongAssignAndConsume(&ASValidatorFactory_registrationMap, new_JavaUtilHashMap_init());
    J2OBJC_SET_INITIALIZED(ASValidatorFactory)
  }
}

@end

void ASValidatorFactory_init(ASValidatorFactory *self) {
  NSObject_init(self);
}

ASValidatorFactory *new_ASValidatorFactory_init() {
  J2OBJC_NEW_IMPL(ASValidatorFactory, init)
}

ASValidatorFactory *create_ASValidatorFactory_init() {
  J2OBJC_CREATE_IMPL(ASValidatorFactory, init)
}

void ASValidatorFactory_init__() {
  ASValidatorFactory_initialize();
}

id<ASValidation> ASValidatorFactory_getWithNSString_(NSString *localname) {
  ASValidatorFactory_initialize();
  id<ASValidation> validator = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(ASValidatorFactory_registrationMap)) getWithId:localname]);
  if (validator != nil) {
    return validator;
  }
  return nil;
}

void ASValidatorFactory_register__WithNSString_withASValidation_(NSString *localname, id<ASValidation> validator) {
  ASValidatorFactory_initialize();
  [((id<JavaUtilMap>) nil_chk(ASValidatorFactory_registrationMap)) putWithId:localname withId:validator];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASValidatorFactory)