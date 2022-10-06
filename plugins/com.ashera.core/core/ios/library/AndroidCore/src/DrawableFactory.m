//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\com\ashera\drawable\DrawableFactory.java
//

#include "CommonConverters.h"
#include "Drawable.h"
#include "DrawableFactory.h"
#include "IConverter.h"
#include "IFragment.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "PluginInvoker.h"
#include "R.h"
#include "ShapeDrawable.h"
#include "StateListDrawable.h"
#include "java/lang/Boolean.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/function/ToIntFunction.h"
#include "java/util/stream/IntStream.h"
#include "java/util/stream/Stream.h"

@class JavaLangInteger;
@protocol JavaUtilMap;


#pragma clang diagnostic ignored "-Wprotocol"

@interface ASDrawableFactory ()

+ (void)addStateListDrawableWithNSString:(NSString *)converterKey
                         withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                         withASIFragment:(id<ASIFragment>)fragment
                 withADStateListDrawable:(ADStateListDrawable *)stateListDrawable
                                  withId:(id)item;

+ (void)createShapeDrawableWithJavaUtilMap:(id<JavaUtilMap>)drawableMap
                           withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                           withASIFragment:(id<ASIFragment>)fragment
                       withADShapeDrawable:(ADShapeDrawable *)shapeDrawable;

+ (id)colorConvertWithId:(id)value
         withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
         withASIFragment:(id<ASIFragment>)fragment;

+ (jint)dimensionConvertWithId:(id)value
               withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
               withASIFragment:(id<ASIFragment>)fragment;

@end

inline IOSObjectArray *ASDrawableFactory_get_DRAWABLE_STATE_LIST(void);
static IOSObjectArray *ASDrawableFactory_DRAWABLE_STATE_LIST;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASDrawableFactory, DRAWABLE_STATE_LIST, IOSObjectArray *)

inline IOSIntArray *ASDrawableFactory_get_DRAWABLE_STATE_LIST_ATTR(void);
static IOSIntArray *ASDrawableFactory_DRAWABLE_STATE_LIST_ATTR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASDrawableFactory, DRAWABLE_STATE_LIST_ATTR, IOSIntArray *)

__attribute__((unused)) static void ASDrawableFactory_addStateListDrawableWithNSString_withJavaUtilMap_withASIFragment_withADStateListDrawable_withId_(NSString *converterKey, id<JavaUtilMap> dependentAttributesMap, id<ASIFragment> fragment, ADStateListDrawable *stateListDrawable, id item);

__attribute__((unused)) static void ASDrawableFactory_createShapeDrawableWithJavaUtilMap_withJavaUtilMap_withASIFragment_withADShapeDrawable_(id<JavaUtilMap> drawableMap, id<JavaUtilMap> dependentAttributesMap, id<ASIFragment> fragment, ADShapeDrawable *shapeDrawable);

__attribute__((unused)) static id ASDrawableFactory_colorConvertWithId_withJavaUtilMap_withASIFragment_(id value, id<JavaUtilMap> dependentAttributesMap, id<ASIFragment> fragment);

__attribute__((unused)) static jint ASDrawableFactory_dimensionConvertWithId_withJavaUtilMap_withASIFragment_(id value, id<JavaUtilMap> dependentAttributesMap, id<ASIFragment> fragment);

@interface ASDrawableFactory_$Lambda$1 : NSObject < JavaUtilFunctionToIntFunction >

- (jint)applyAsIntWithId:(JavaLangInteger *)i;

@end

J2OBJC_STATIC_INIT(ASDrawableFactory_$Lambda$1)

inline ASDrawableFactory_$Lambda$1 *ASDrawableFactory_$Lambda$1_get_instance(void);
static ASDrawableFactory_$Lambda$1 *ASDrawableFactory_$Lambda$1_instance;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASDrawableFactory_$Lambda$1, instance, ASDrawableFactory_$Lambda$1 *)

__attribute__((unused)) static void ASDrawableFactory_$Lambda$1_init(ASDrawableFactory_$Lambda$1 *self);

__attribute__((unused)) static ASDrawableFactory_$Lambda$1 *new_ASDrawableFactory_$Lambda$1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ASDrawableFactory_$Lambda$1 *create_ASDrawableFactory_$Lambda$1_init(void);

J2OBJC_INITIALIZED_DEFN(ASDrawableFactory)

@implementation ASDrawableFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASDrawableFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (ADDrawable *)getDrawableWithNSString:(NSString *)converterKey
                        withJavaUtilMap:(id<JavaUtilMap>)drawableMap
                        withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                        withASIFragment:(id<ASIFragment>)fragment {
  return ASDrawableFactory_getDrawableWithNSString_withJavaUtilMap_withJavaUtilMap_withASIFragment_(converterKey, drawableMap, dependentAttributesMap, fragment);
}

+ (void)addStateListDrawableWithNSString:(NSString *)converterKey
                         withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                         withASIFragment:(id<ASIFragment>)fragment
                 withADStateListDrawable:(ADStateListDrawable *)stateListDrawable
                                  withId:(id)item {
  ASDrawableFactory_addStateListDrawableWithNSString_withJavaUtilMap_withASIFragment_withADStateListDrawable_withId_(converterKey, dependentAttributesMap, fragment, stateListDrawable, item);
}

+ (void)createShapeDrawableWithJavaUtilMap:(id<JavaUtilMap>)drawableMap
                           withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                           withASIFragment:(id<ASIFragment>)fragment
                       withADShapeDrawable:(ADShapeDrawable *)shapeDrawable {
  ASDrawableFactory_createShapeDrawableWithJavaUtilMap_withJavaUtilMap_withASIFragment_withADShapeDrawable_(drawableMap, dependentAttributesMap, fragment, shapeDrawable);
}

+ (id)colorConvertWithId:(id)value
         withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
         withASIFragment:(id<ASIFragment>)fragment {
  return ASDrawableFactory_colorConvertWithId_withJavaUtilMap_withASIFragment_(value, dependentAttributesMap, fragment);
}

+ (jint)dimensionConvertWithId:(id)value
               withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
               withASIFragment:(id<ASIFragment>)fragment {
  return ASDrawableFactory_dimensionConvertWithId_withJavaUtilMap_withASIFragment_(value, dependentAttributesMap, fragment);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADDrawable;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "V", 0xa, 3, 4, -1, 5, -1, -1 },
    { NULL, "V", 0xa, 6, 7, -1, 8, -1, -1 },
    { NULL, "LNSObject;", 0xa, 9, 10, -1, 11, -1, -1 },
    { NULL, "I", 0xa, 12, 10, -1, 13, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getDrawableWithNSString:withJavaUtilMap:withJavaUtilMap:withASIFragment:);
  methods[2].selector = @selector(addStateListDrawableWithNSString:withJavaUtilMap:withASIFragment:withADStateListDrawable:withId:);
  methods[3].selector = @selector(createShapeDrawableWithJavaUtilMap:withJavaUtilMap:withASIFragment:withADShapeDrawable:);
  methods[4].selector = @selector(colorConvertWithId:withJavaUtilMap:withASIFragment:);
  methods[5].selector = @selector(dimensionConvertWithId:withJavaUtilMap:withASIFragment:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DRAWABLE_STATE_LIST", "[LNSString;", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "DRAWABLE_STATE_LIST_ATTR", "[I", .constantValue.asLong = 0, 0x1a, -1, 15, -1, -1 },
  };
  static const void *ptrTable[] = { "getDrawable", "LNSString;LJavaUtilMap;LJavaUtilMap;LASIFragment;", "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/core/IFragment;)Lr/android/graphics/drawable/Drawable;", "addStateListDrawable", "LNSString;LJavaUtilMap;LASIFragment;LADStateListDrawable;LNSObject;", "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/core/IFragment;Lr/android/graphics/drawable/StateListDrawable;Ljava/lang/Object;)V", "createShapeDrawable", "LJavaUtilMap;LJavaUtilMap;LASIFragment;LADShapeDrawable;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/core/IFragment;Lr/android/graphics/drawable/ShapeDrawable;)V", "colorConvert", "LNSObject;LJavaUtilMap;LASIFragment;", "(Ljava/lang/Object;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/core/IFragment;)Ljava/lang/Object;", "dimensionConvert", "(Ljava/lang/Object;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/core/IFragment;)I", &ASDrawableFactory_DRAWABLE_STATE_LIST, &ASDrawableFactory_DRAWABLE_STATE_LIST_ATTR };
  static const J2ObjcClassInfo _ASDrawableFactory = { "DrawableFactory", "com.ashera.drawable", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, -1, -1 };
  return &_ASDrawableFactory;
}

+ (void)initialize {
  if (self == [ASDrawableFactory class]) {
    JreStrongAssignAndConsume(&ASDrawableFactory_DRAWABLE_STATE_LIST, [IOSObjectArray newArrayWithObjects:(id[]){ @"@android:state_window_focused", @"@android:state_selected", @"@android:state_focused", @"@android:state_pressed", @"@android:state_hovered", @"@android:state_activated", @"@android:state_accelerated", @"@android:state_enabled", @"@android:state_drag_can_accept", @"@android:state_drag_hovered", @"@android:state_checked" } count:11 type:NSString_class_()]);
    JreStrongAssignAndConsume(&ASDrawableFactory_DRAWABLE_STATE_LIST_ATTR, [IOSIntArray newArrayWithInts:(jint[]){ ADR_attr_state_window_focused, ADR_attr_state_selected, ADR_attr_state_focused, ADR_attr_state_pressed, ADR_attr_state_hovered, ADR_attr_state_activated, ADR_attr_state_accelerated, ADR_attr_state_enabled, ADR_attr_state_drag_can_accept, ADR_attr_state_drag_hovered, ADR_attr_state_checked } count:11]);
    J2OBJC_SET_INITIALIZED(ASDrawableFactory)
  }
}

@end

void ASDrawableFactory_init(ASDrawableFactory *self) {
  NSObject_init(self);
}

ASDrawableFactory *new_ASDrawableFactory_init() {
  J2OBJC_NEW_IMPL(ASDrawableFactory, init)
}

ASDrawableFactory *create_ASDrawableFactory_init() {
  J2OBJC_CREATE_IMPL(ASDrawableFactory, init)
}

ADDrawable *ASDrawableFactory_getDrawableWithNSString_withJavaUtilMap_withJavaUtilMap_withASIFragment_(NSString *converterKey, id<JavaUtilMap> drawableMap, id<JavaUtilMap> dependentAttributesMap, id<ASIFragment> fragment) {
  ASDrawableFactory_initialize();
  if ([((id<JavaUtilMap>) nil_chk(drawableMap)) containsKeyWithId:@"shape"]) {
    ADShapeDrawable *shapeDrawable = (ADShapeDrawable *) cast_chk(ASPluginInvoker_createDrawableWithNSString_(@"shape"), [ADShapeDrawable class]);
    ASDrawableFactory_createShapeDrawableWithJavaUtilMap_withJavaUtilMap_withASIFragment_withADShapeDrawable_(drawableMap, dependentAttributesMap, fragment, shapeDrawable);
    return shapeDrawable;
  }
  else if ([drawableMap containsKeyWithId:@"selector"]) {
    ADStateListDrawable *stateListDrawable = create_ADStateListDrawable_init();
    id<JavaUtilMap> selector = ASPluginInvoker_getMapWithId_([drawableMap getWithId:@"selector"]);
    id payLoad = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(selector)) getWithId:@"item"]);
    id<JavaUtilList> items = ASPluginInvoker_getListWithId_(payLoad);
    if (items == nil && payLoad != nil) {
      id item = ASPluginInvoker_getMapWithId_(payLoad);
      ASDrawableFactory_addStateListDrawableWithNSString_withJavaUtilMap_withASIFragment_withADStateListDrawable_withId_(converterKey, dependentAttributesMap, fragment, stateListDrawable, item);
    }
    else {
      for (id __strong item in nil_chk(items)) {
        ASDrawableFactory_addStateListDrawableWithNSString_withJavaUtilMap_withASIFragment_withADStateListDrawable_withId_(converterKey, dependentAttributesMap, fragment, stateListDrawable, item);
      }
    }
    return stateListDrawable;
  }
  @throw create_JavaLangRuntimeException_initWithNSString_(@"unknown drawable");
}

void ASDrawableFactory_addStateListDrawableWithNSString_withJavaUtilMap_withASIFragment_withADStateListDrawable_withId_(NSString *converterKey, id<JavaUtilMap> dependentAttributesMap, id<ASIFragment> fragment, ADStateListDrawable *stateListDrawable, id item) {
  ASDrawableFactory_initialize();
  id<JavaUtilMap> itemMap = ASPluginInvoker_getMapWithId_(item);
  id<JavaUtilList> stateList = create_JavaUtilArrayList_init();
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(ASDrawableFactory_DRAWABLE_STATE_LIST))->size_; i++) {
    NSString *state = IOSObjectArray_Get(ASDrawableFactory_DRAWABLE_STATE_LIST, i);
    jint attrState = IOSIntArray_Get(nil_chk(ASDrawableFactory_DRAWABLE_STATE_LIST_ATTR), i);
    id attrValue = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(itemMap)) getWithId:state]);
    if (attrValue != nil) {
      JavaLangBoolean *attrValueBool = ASPluginInvoker_getBooleanWithId_(attrValue);
      if (![((JavaLangBoolean *) nil_chk(attrValueBool)) isEqual:JreLoadStatic(JavaLangBoolean, TRUE)]) {
        attrState = attrState * -1;
      }
      [stateList addWithId:JavaLangInteger_valueOfWithInt_(attrState)];
    }
  }
  NSString *drawableRes = (NSString *) cast_chk([((id<JavaUtilMap>) nil_chk(itemMap)) getWithId:@"@android:drawable"], [NSString class]);
  id image = ASPluginInvoker_convertFromWithASIConverter_withJavaUtilMap_withId_withASIFragment_(ASPluginInvoker_getConverterWithNSString_(converterKey), dependentAttributesMap, drawableRes, fragment);
  ADDrawable *drawable;
  if ([image isKindOfClass:[ADDrawable class]]) {
    drawable = (ADDrawable *) image;
  }
  else {
    drawable = create_ADDrawable_init();
    [drawable setDrawableWithId:image];
  }
  IOSIntArray *states = JreLoadStatic(ADDrawable, WILD_CARD);
  if ([stateList size] > 0) {
    states = [((id<JavaUtilStreamIntStream>) nil_chk([((id<JavaUtilStreamStream>) nil_chk([stateList stream])) mapToIntWithJavaUtilFunctionToIntFunction:JreLoadStatic(ASDrawableFactory_$Lambda$1, instance)])) toArray];
  }
  [((ADStateListDrawable *) nil_chk(stateListDrawable)) addStateWithIntArray:states withADDrawable:drawable];
}

void ASDrawableFactory_createShapeDrawableWithJavaUtilMap_withJavaUtilMap_withASIFragment_withADShapeDrawable_(id<JavaUtilMap> drawableMap, id<JavaUtilMap> dependentAttributesMap, id<ASIFragment> fragment, ADShapeDrawable *shapeDrawable) {
  ASDrawableFactory_initialize();
  id<JavaUtilMap> shape = ASPluginInvoker_getMapWithId_([((id<JavaUtilMap>) nil_chk(drawableMap)) getWithId:@"shape"]);
  if ([((id<JavaUtilMap>) nil_chk(shape)) containsKeyWithId:@"@android:shape"]) {
    NSString *shapeType = ASPluginInvoker_getStringWithId_([shape getWithId:@"@android:shape"]);
    [((ADShapeDrawable *) nil_chk(shapeDrawable)) setTypeWithNSString:shapeType];
  }
  if ([shape containsKeyWithId:@"size"]) {
    id<JavaUtilMap> size = ASPluginInvoker_getMapWithId_([shape getWithId:@"size"]);
    if ([((id<JavaUtilMap>) nil_chk(size)) containsKeyWithId:@"@android:width"]) {
      id value = JreRetainedLocalValue([size getWithId:@"@android:width"]);
      jint width = ASDrawableFactory_dimensionConvertWithId_withJavaUtilMap_withASIFragment_(value, dependentAttributesMap, fragment);
      [((ADShapeDrawable *) nil_chk(shapeDrawable)) setWidthWithInt:width];
    }
    if ([size containsKeyWithId:@"@android:height"]) {
      id value = JreRetainedLocalValue([size getWithId:@"@android:height"]);
      jint height = ASDrawableFactory_dimensionConvertWithId_withJavaUtilMap_withASIFragment_(value, dependentAttributesMap, fragment);
      [((ADShapeDrawable *) nil_chk(shapeDrawable)) setHeightWithInt:height];
    }
    [((ADShapeDrawable *) nil_chk(shapeDrawable)) setBoundsWithInt:0 withInt:0 withInt:[shapeDrawable getWidth] withInt:[shapeDrawable getHeight]];
  }
  if ([shape containsKeyWithId:@"stroke"]) {
    id<JavaUtilMap> stroke = ASPluginInvoker_getMapWithId_([shape getWithId:@"stroke"]);
    if ([((id<JavaUtilMap>) nil_chk(stroke)) containsKeyWithId:@"@android:width"]) {
      id value = JreRetainedLocalValue([stroke getWithId:@"@android:width"]);
      jint width = ASDrawableFactory_dimensionConvertWithId_withJavaUtilMap_withASIFragment_(value, dependentAttributesMap, fragment);
      [((ADShapeDrawable *) nil_chk(shapeDrawable)) setStrokeWidthWithInt:width];
    }
    if ([stroke containsKeyWithId:@"@android:height"]) {
      id value = JreRetainedLocalValue([stroke getWithId:@"@android:height"]);
      jint height = ASDrawableFactory_dimensionConvertWithId_withJavaUtilMap_withASIFragment_(value, dependentAttributesMap, fragment);
      [((ADShapeDrawable *) nil_chk(shapeDrawable)) setStrokeHeightWithInt:height];
    }
    if ([stroke containsKeyWithId:@"@android:color"]) {
      NSString *value = (NSString *) cast_chk([stroke getWithId:@"@android:color"], [NSString class]);
      id color = ASDrawableFactory_colorConvertWithId_withJavaUtilMap_withASIFragment_(value, dependentAttributesMap, fragment);
      [((ADShapeDrawable *) nil_chk(shapeDrawable)) setStrokeColorWithId:color];
    }
  }
}

id ASDrawableFactory_colorConvertWithId_withJavaUtilMap_withASIFragment_(id value, id<JavaUtilMap> dependentAttributesMap, id<ASIFragment> fragment) {
  ASDrawableFactory_initialize();
  return ASPluginInvoker_convertFromWithASIConverter_withJavaUtilMap_withId_withASIFragment_(ASPluginInvoker_getConverterWithNSString_(@"color"), dependentAttributesMap, value, fragment);
}

jint ASDrawableFactory_dimensionConvertWithId_withJavaUtilMap_withASIFragment_(id value, id<JavaUtilMap> dependentAttributesMap, id<ASIFragment> fragment) {
  ASDrawableFactory_initialize();
  return [((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(ASPluginInvoker_convertFromWithASIConverter_withJavaUtilMap_withId_withASIFragment_(ASPluginInvoker_getConverterWithNSString_(ASCommonConverters_dimension), dependentAttributesMap, value, fragment), [JavaLangInteger class]))) intValue];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASDrawableFactory)

J2OBJC_INITIALIZED_DEFN(ASDrawableFactory_$Lambda$1)

@implementation ASDrawableFactory_$Lambda$1

- (jint)applyAsIntWithId:(JavaLangInteger *)i {
  return [((JavaLangInteger *) nil_chk(i)) intValue];
}

+ (void)initialize {
  if (self == [ASDrawableFactory_$Lambda$1 class]) {
    JreStrongAssignAndConsume(&ASDrawableFactory_$Lambda$1_instance, new_ASDrawableFactory_$Lambda$1_init());
    J2OBJC_SET_INITIALIZED(ASDrawableFactory_$Lambda$1)
  }
}

@end

void ASDrawableFactory_$Lambda$1_init(ASDrawableFactory_$Lambda$1 *self) {
  NSObject_init(self);
}

ASDrawableFactory_$Lambda$1 *new_ASDrawableFactory_$Lambda$1_init() {
  J2OBJC_NEW_IMPL(ASDrawableFactory_$Lambda$1, init)
}

ASDrawableFactory_$Lambda$1 *create_ASDrawableFactory_$Lambda$1_init() {
  J2OBJC_CREATE_IMPL(ASDrawableFactory_$Lambda$1, init)
}