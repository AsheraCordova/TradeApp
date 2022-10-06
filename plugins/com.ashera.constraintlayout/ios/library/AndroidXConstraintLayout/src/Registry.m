//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\state\Registry.java
//

#include "J2ObjC_source.h"
#include "Registry.h"
#include "RegistryCallback.h"
#include "java/lang/Long.h"
#include "java/util/HashMap.h"
#include "java/util/Set.h"

@class JavaUtilHashMap;


@interface ADXRegistry () {
 @public
  JavaUtilHashMap *mCallbacks_;
}

@end

J2OBJC_FIELD_SETTER(ADXRegistry, mCallbacks_, JavaUtilHashMap *)

inline ADXRegistry *ADXRegistry_get_sRegistry(void);
static ADXRegistry *ADXRegistry_sRegistry;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXRegistry, sRegistry, ADXRegistry *)

J2OBJC_INITIALIZED_DEFN(ADXRegistry)

@implementation ADXRegistry

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXRegistry_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ADXRegistry *)getInstance {
  return ADXRegistry_getInstance();
}

- (void)register__WithNSString:(NSString *)name
       withADXRegistryCallback:(id<ADXRegistryCallback>)callback {
  [((JavaUtilHashMap *) nil_chk(mCallbacks_)) putWithId:name withId:callback];
}

- (void)unregisterWithNSString:(NSString *)name
       withADXRegistryCallback:(id<ADXRegistryCallback>)callback {
  [((JavaUtilHashMap *) nil_chk(mCallbacks_)) removeWithId:name];
}

- (void)updateContentWithNSString:(NSString *)name
                     withNSString:(NSString *)content {
  id<ADXRegistryCallback> callback = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCallbacks_)) getWithId:name]);
  if (callback != nil) {
    [callback onNewMotionSceneWithNSString:content];
  }
}

- (void)updateProgressWithNSString:(NSString *)name
                         withFloat:(jfloat)progress {
  id<ADXRegistryCallback> callback = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCallbacks_)) getWithId:name]);
  if (callback != nil) {
    [callback onProgressWithFloat:progress];
  }
}

- (NSString *)currentContentWithNSString:(NSString *)name {
  id<ADXRegistryCallback> callback = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCallbacks_)) getWithId:name]);
  if (callback != nil) {
    return [callback currentMotionScene];
  }
  return nil;
}

- (NSString *)currentLayoutInformationWithNSString:(NSString *)name {
  id<ADXRegistryCallback> callback = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCallbacks_)) getWithId:name]);
  if (callback != nil) {
    return [callback currentLayoutInformation];
  }
  return nil;
}

- (void)setDrawDebugWithNSString:(NSString *)name
                         withInt:(jint)debugMode {
  id<ADXRegistryCallback> callback = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCallbacks_)) getWithId:name]);
  if (callback != nil) {
    [callback setDrawDebugWithInt:debugMode];
  }
}

- (void)setLayoutInformationModeWithNSString:(NSString *)name
                                     withInt:(jint)mode {
  id<ADXRegistryCallback> callback = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCallbacks_)) getWithId:name]);
  if (callback != nil) {
    [callback setLayoutInformationModeWithInt:mode];
  }
}

- (id<JavaUtilSet>)getLayoutList {
  return [((JavaUtilHashMap *) nil_chk(mCallbacks_)) keySet];
}

- (jlong)getLastModifiedWithNSString:(NSString *)name {
  id<ADXRegistryCallback> callback = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCallbacks_)) getWithId:name]);
  if (callback != nil) {
    return [callback getLastModified];
  }
  return JavaLangLong_MAX_VALUE;
}

- (void)updateDimensionsWithNSString:(NSString *)name
                             withInt:(jint)width
                             withInt:(jint)height {
  id<ADXRegistryCallback> callback = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(mCallbacks_)) getWithId:name]);
  if (callback != nil) {
    [callback onDimensionsWithInt:width withInt:height];
  }
}

- (void)dealloc {
  RELEASE_(mCallbacks_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXRegistry;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 9, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 11, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x1, -1, -1, -1, 13, -1, -1 },
    { NULL, "J", 0x1, 14, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 16, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getInstance);
  methods[2].selector = @selector(register__WithNSString:withADXRegistryCallback:);
  methods[3].selector = @selector(unregisterWithNSString:withADXRegistryCallback:);
  methods[4].selector = @selector(updateContentWithNSString:withNSString:);
  methods[5].selector = @selector(updateProgressWithNSString:withFloat:);
  methods[6].selector = @selector(currentContentWithNSString:);
  methods[7].selector = @selector(currentLayoutInformationWithNSString:);
  methods[8].selector = @selector(setDrawDebugWithNSString:withInt:);
  methods[9].selector = @selector(setLayoutInformationModeWithNSString:withInt:);
  methods[10].selector = @selector(getLayoutList);
  methods[11].selector = @selector(getLastModifiedWithNSString:);
  methods[12].selector = @selector(updateDimensionsWithNSString:withInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sRegistry", "LADXRegistry;", .constantValue.asLong = 0, 0x1a, -1, 17, -1, -1 },
    { "mCallbacks_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x2, -1, -1, 18, -1 },
  };
  static const void *ptrTable[] = { "register", "LNSString;LADXRegistryCallback;", "unregister", "updateContent", "LNSString;LNSString;", "updateProgress", "LNSString;F", "currentContent", "LNSString;", "currentLayoutInformation", "setDrawDebug", "LNSString;I", "setLayoutInformationMode", "()Ljava/util/Set<Ljava/lang/String;>;", "getLastModified", "updateDimensions", "LNSString;II", &ADXRegistry_sRegistry, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/core/state/RegistryCallback;>;" };
  static const J2ObjcClassInfo _ADXRegistry = { "Registry", "androidx.constraintlayout.core.state", ptrTable, methods, fields, 7, 0x1, 13, 2, -1, -1, -1, -1, -1 };
  return &_ADXRegistry;
}

+ (void)initialize {
  if (self == [ADXRegistry class]) {
    JreStrongAssignAndConsume(&ADXRegistry_sRegistry, new_ADXRegistry_init());
    J2OBJC_SET_INITIALIZED(ADXRegistry)
  }
}

@end

void ADXRegistry_init(ADXRegistry *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->mCallbacks_, new_JavaUtilHashMap_init());
}

ADXRegistry *new_ADXRegistry_init() {
  J2OBJC_NEW_IMPL(ADXRegistry, init)
}

ADXRegistry *create_ADXRegistry_init() {
  J2OBJC_CREATE_IMPL(ADXRegistry, init)
}

ADXRegistry *ADXRegistry_getInstance() {
  ADXRegistry_initialize();
  return ADXRegistry_sRegistry;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXRegistry)
