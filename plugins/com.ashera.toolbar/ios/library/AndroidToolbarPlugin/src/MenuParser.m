//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidToolBar\src\main\java\androidx\appcompat\widget\MenuParser.java
//

#include "Drawable.h"
#include "IConverter.h"
#include "IFragment.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "MenuBuilder.h"
#include "MenuItem.h"
#include "MenuParser.h"
#include "PluginInvoker.h"
#include "java/lang/Integer.h"
#include "java/util/List.h"
#include "java/util/Map.h"


@interface ADXMenuParser ()

+ (void)createMenuItemWithADXMenuBuilder:(ADXMenuBuilder *)menu
                         withASIFragment:(id<ASIFragment>)fragment
                                  withId:(id)payLoad;

@end

__attribute__((unused)) static void ADXMenuParser_createMenuItemWithADXMenuBuilder_withASIFragment_withId_(ADXMenuBuilder *menu, id<ASIFragment> fragment, id payLoad);

@implementation ADXMenuParser

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXMenuParser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)parseMenuWithADXMenuBuilder:(ADXMenuBuilder *)menu
                       withNSString:(NSString *)json
                    withASIFragment:(id<ASIFragment>)fragment {
  ADXMenuParser_parseMenuWithADXMenuBuilder_withNSString_withASIFragment_(menu, json, fragment);
}

+ (void)createMenuItemWithADXMenuBuilder:(ADXMenuBuilder *)menu
                         withASIFragment:(id<ASIFragment>)fragment
                                  withId:(id)payLoad {
  ADXMenuParser_createMenuItemWithADXMenuBuilder_withASIFragment_withId_(menu, fragment, payLoad);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(parseMenuWithADXMenuBuilder:withNSString:withASIFragment:);
  methods[2].selector = @selector(createMenuItemWithADXMenuBuilder:withASIFragment:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "parseMenu", "LADXMenuBuilder;LNSString;LASIFragment;", "createMenuItem", "LADXMenuBuilder;LASIFragment;LNSObject;" };
  static const J2ObjcClassInfo _ADXMenuParser = { "MenuParser", "androidx.appcompat.widget", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_ADXMenuParser;
}

@end

void ADXMenuParser_init(ADXMenuParser *self) {
  NSObject_init(self);
}

ADXMenuParser *new_ADXMenuParser_init() {
  J2OBJC_NEW_IMPL(ADXMenuParser, init)
}

ADXMenuParser *create_ADXMenuParser_init() {
  J2OBJC_CREATE_IMPL(ADXMenuParser, init)
}

void ADXMenuParser_parseMenuWithADXMenuBuilder_withNSString_withASIFragment_(ADXMenuBuilder *menu, NSString *json, id<ASIFragment> fragment) {
  ADXMenuParser_initialize();
  id<JavaUtilMap> jsonMap = ASPluginInvoker_unmarshalWithNSString_withIOSClass_(json, JavaUtilMap_class_());
  if ([((id<JavaUtilMap>) nil_chk(jsonMap)) containsKeyWithId:@"menu"]) {
    id<JavaUtilMap> menuMap = ASPluginInvoker_getMapWithId_([jsonMap getWithId:@"menu"]);
    if ([((id<JavaUtilMap>) nil_chk(menuMap)) containsKeyWithId:@"item"]) {
      id item = JreRetainedLocalValue([menuMap getWithId:@"item"]);
      id<JavaUtilList> itemList = ASPluginInvoker_getListWithId_(item);
      if (itemList != nil) {
        for (id __strong itemObj in itemList) {
          ADXMenuParser_createMenuItemWithADXMenuBuilder_withASIFragment_withId_(menu, fragment, itemObj);
        }
      }
      else {
        ADXMenuParser_createMenuItemWithADXMenuBuilder_withASIFragment_withId_(menu, fragment, item);
      }
    }
  }
}

void ADXMenuParser_createMenuItemWithADXMenuBuilder_withASIFragment_withId_(ADXMenuBuilder *menu, id<ASIFragment> fragment, id payLoad) {
  ADXMenuParser_initialize();
  id<JavaUtilMap> itemMap = ASPluginInvoker_getMapWithId_(payLoad);
  jint id_ = 0;
  jint groupId = 0;
  jint categoryOrder = 0;
  NSString *title = @"";
  ADDrawable *icon = nil;
  jint showAsAction = -1;
  if ([((id<JavaUtilMap>) nil_chk(itemMap)) containsKeyWithId:@"@android:id"]) {
    id_ = [((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(ASPluginInvoker_convertFromWithASIConverter_withJavaUtilMap_withId_withASIFragment_(ASPluginInvoker_getConverterWithNSString_(@"id"), nil, [itemMap getWithId:@"@android:id"], fragment), [JavaLangInteger class]))) intValue];
  }
  if ([itemMap containsKeyWithId:@"@android:title"]) {
    title = (NSString *) cast_chk(ASPluginInvoker_convertFromWithASIConverter_withJavaUtilMap_withId_withASIFragment_(ASPluginInvoker_getConverterWithNSString_(@"resourcestring"), nil, [itemMap getWithId:@"@android:title"], fragment), [NSString class]);
  }
  if ([itemMap containsKeyWithId:@"@android:icon"]) {
    icon = (ADDrawable *) cast_chk(ASPluginInvoker_convertFromWithASIConverter_withJavaUtilMap_withId_withASIFragment_(ASPluginInvoker_getConverterWithNSString_(@"drawable"), nil, [itemMap getWithId:@"@android:icon"], fragment), [ADDrawable class]);
  }
  if ([itemMap containsKeyWithId:@"@app:showAsAction"]) {
    showAsAction = [((JavaLangInteger *) nil_chk((JavaLangInteger *) cast_chk(ASPluginInvoker_convertFromWithASIConverter_withJavaUtilMap_withId_withASIFragment_(ASPluginInvoker_getConverterWithNSString_(@"androidx.appcompat.widget.ActionMenuView.showAsAction"), nil, [itemMap getWithId:@"@app:showAsAction"], fragment), [JavaLangInteger class]))) intValue];
  }
  id<ADMenuItem> menuItem = JreRetainedLocalValue([((ADXMenuBuilder *) nil_chk(menu)) addWithInt:groupId withInt:id_ withInt:categoryOrder withJavaLangCharSequence:title]);
  if (icon != nil) {
    [((id<ADMenuItem>) nil_chk(menuItem)) setIconWithADDrawable:icon];
  }
  if (showAsAction != -1) {
    [((id<ADMenuItem>) nil_chk(menuItem)) setShowAsActionWithInt:showAsAction];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXMenuParser)