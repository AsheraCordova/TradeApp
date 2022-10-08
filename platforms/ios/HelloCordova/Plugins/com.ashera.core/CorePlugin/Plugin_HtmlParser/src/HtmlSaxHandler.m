//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_HtmlParser\src\com\ashera\parser\html\HtmlSaxHandler.java
//

#include "BaseHasWidgets.h"
#include "CssDataHolder.h"
#include "CssResult.h"
#include "CssTree.h"
#include "HasWidgets.h"
#include "HtmlSaxHandler.h"
#include "ICompositeDecorator.h"
#include "IDecorator.h"
#include "IFragment.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "IWidget.h"
#include "J2ObjC_source.h"
#include "PluginInvoker.h"
#include "StyleSheet.h"
#include "WidgetAttribute.h"
#include "WidgetAttributeMap.h"
#include "WidgetAttributeValue.h"
#include "WidgetFactory.h"
#include "java/io/StringReader.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/util/Arrays.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Properties.h"
#include "java/util/Set.h"
#include "java/util/Stack.h"
#include "org/xml/sax/Attributes.h"
#include "org/xml/sax/Locator.h"

@class JavaUtilProperties;
@class JavaUtilStack;
@protocol JavaUtilMap;
@protocol OrgXmlSaxAttributes;


@interface ASHtmlSaxHandler () {
 @public
  CSSCssDataHolder *pageData_;
  id<ASIWidget> root_;
  id<ASIWidget> widget_;
  JavaUtilStack *hasWidgets_;
  JavaUtilStack *pushParent_;
  id<ASIFragment> fragment_;
  JavaUtilStack *widgetsStack_;
  jboolean isTemplate_;
  JavaUtilStack *templateStack_;
  jint depth_;
  jboolean isAndroid_;
}

- (id<JavaUtilMap>)getParamsWithOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts
                                       withNSString:(NSString *)localName;

- (NSString *)getAttrKeyWithoutNameSpaceWithNSString:(NSString *)attr;

- (NSString *)getValueWithNSString:(NSString *)key
           withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attributes;

- (void)populateAttributesWithASIWidget:(id<ASIWidget>)widget
                       withASHasWidgets:(id<ASHasWidgets>)parent
                           withNSString:(NSString *)tagName
                           withNSString:(NSString *)localName
                withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts;

@end

J2OBJC_FIELD_SETTER(ASHtmlSaxHandler, pageData_, CSSCssDataHolder *)
J2OBJC_FIELD_SETTER(ASHtmlSaxHandler, root_, id<ASIWidget>)
J2OBJC_FIELD_SETTER(ASHtmlSaxHandler, widget_, id<ASIWidget>)
J2OBJC_FIELD_SETTER(ASHtmlSaxHandler, hasWidgets_, JavaUtilStack *)
J2OBJC_FIELD_SETTER(ASHtmlSaxHandler, pushParent_, JavaUtilStack *)
J2OBJC_FIELD_SETTER(ASHtmlSaxHandler, fragment_, id<ASIFragment>)
J2OBJC_FIELD_SETTER(ASHtmlSaxHandler, widgetsStack_, JavaUtilStack *)
J2OBJC_FIELD_SETTER(ASHtmlSaxHandler, templateStack_, JavaUtilStack *)

inline JavaUtilProperties *ASHtmlSaxHandler_get_languageProperties(void);
inline JavaUtilProperties *ASHtmlSaxHandler_set_languageProperties(JavaUtilProperties *value);
static JavaUtilProperties *ASHtmlSaxHandler_languageProperties;
J2OBJC_STATIC_FIELD_OBJ(ASHtmlSaxHandler, languageProperties, JavaUtilProperties *)

__attribute__((unused)) static id<JavaUtilMap> ASHtmlSaxHandler_getParamsWithOrgXmlSaxAttributes_withNSString_(ASHtmlSaxHandler *self, id<OrgXmlSaxAttributes> atts, NSString *localName);

__attribute__((unused)) static NSString *ASHtmlSaxHandler_getAttrKeyWithoutNameSpaceWithNSString_(ASHtmlSaxHandler *self, NSString *attr);

__attribute__((unused)) static NSString *ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(ASHtmlSaxHandler *self, NSString *key, id<OrgXmlSaxAttributes> attributes);

__attribute__((unused)) static void ASHtmlSaxHandler_populateAttributesWithASIWidget_withASHasWidgets_withNSString_withNSString_withOrgXmlSaxAttributes_(ASHtmlSaxHandler *self, id<ASIWidget> widget, id<ASHasWidgets> parent, NSString *tagName, NSString *localName, id<OrgXmlSaxAttributes> atts);

@interface ASHtmlSaxHandler_1 : NSObject < CSSCssResult > {
 @public
  id<ASIWidget> val$widget_;
  id<ASHasWidgets> val$parent_;
  NSString *val$localName_;
}

- (instancetype)initWithASIWidget:(id<ASIWidget>)capture$0
                 withASHasWidgets:(id<ASHasWidgets>)capture$1
                     withNSString:(NSString *)capture$2;

- (void)putWithNSString:(NSString *)key
withCSSCssTree_Attribute:(CSSCssTree_Attribute *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ASHtmlSaxHandler_1)

__attribute__((unused)) static void ASHtmlSaxHandler_1_initWithASIWidget_withASHasWidgets_withNSString_(ASHtmlSaxHandler_1 *self, id<ASIWidget> capture$0, id<ASHasWidgets> capture$1, NSString *capture$2);

__attribute__((unused)) static ASHtmlSaxHandler_1 *new_ASHtmlSaxHandler_1_initWithASIWidget_withASHasWidgets_withNSString_(id<ASIWidget> capture$0, id<ASHasWidgets> capture$1, NSString *capture$2) NS_RETURNS_RETAINED;

__attribute__((unused)) static ASHtmlSaxHandler_1 *create_ASHtmlSaxHandler_1_initWithASIWidget_withASHasWidgets_withNSString_(id<ASIWidget> capture$0, id<ASHasWidgets> capture$1, NSString *capture$2);

@implementation ASHtmlSaxHandler

- (instancetype)initWithASIFragment:(id<ASIFragment>)fragment
                        withBoolean:(jboolean)template_ {
  ASHtmlSaxHandler_initWithASIFragment_withBoolean_(self, fragment, template_);
  return self;
}

- (void)endDocument {
}

- (void)endPrefixMappingWithNSString:(NSString *)prefix {
}

- (void)ignorableWhitespaceWithCharArray:(IOSCharArray *)ch
                                 withInt:(jint)start
                                 withInt:(jint)length {
}

- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data {
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator {
}

- (void)skippedEntityWithNSString:(NSString *)name {
}

- (void)startDocument {
}

- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri {
}

- (void)charactersWithCharArray:(IOSCharArray *)ch
                        withInt:(jint)start
                        withInt:(jint)length {
  if (depth_ > 0) {
    return;
  }
}

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts {
  NSString *operatingSystem = JreRetainedLocalValue([((id<OrgXmlSaxAttributes>) nil_chk(atts)) getValueWithNSString:@"os"]);
  if ((operatingSystem != nil && [((NSString *) nil_chk([operatingSystem lowercaseString])) java_indexOfString:[((NSString *) nil_chk(ASPluginInvoker_getOS())) lowercaseString]] == -1) || depth_ > 0) {
    depth_++;
    return;
  }
  if ([((NSString *) nil_chk(localName)) java_equalsIgnoreCase:@"template"]) {
    [((JavaUtilStack *) nil_chk(templateStack_)) pushWithId:JavaLangBoolean_valueOfWithBoolean_(true)];
    isTemplate_ = true;
  }
  if ([localName java_equalsIgnoreCase:@"include"]) {
    ASPluginInvoker_parseIncludeWithASHasWidgets_withNSString_withBoolean_withASIFragment_((ASBaseHasWidgets *) cast_chk([((JavaUtilStack *) nil_chk(hasWidgets_)) peek], [ASBaseHasWidgets class]), ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(self, @"layout", atts), isTemplate_, fragment_);
    return;
  }
  NSString *tagName = JreRetainedLocalValue(localName);
  NSString *widgetOverride = ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(self, @"widget-override", atts);
  if (widgetOverride == nil) {
    NSString *value = ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(self, @"type", atts);
    if (value != nil) {
      widgetOverride = JreStrcat("$C$", localName, '-', value);
    }
  }
  if (ASHtmlSaxHandler_languageProperties == nil) {
    @try {
      JreStrongAssignAndConsume(&ASHtmlSaxHandler_languageProperties, new_JavaUtilProperties_init());
      NSString *alternateNames = ASPluginInvoker_getFileAssetWithNSString_withASIFragment_(@"www/language.properties", fragment_);
      [((JavaUtilProperties *) nil_chk(ASHtmlSaxHandler_languageProperties)) load__WithJavaIoReader:create_JavaIoStringReader_initWithNSString_(alternateNames)];
    }
    @catch (JavaLangException *e) {
    }
  }
  if ([((JavaUtilProperties *) nil_chk(ASHtmlSaxHandler_languageProperties)) containsKeyWithId:localName]) {
    NSString *widgetOverrideName = JreRetainedLocalValue([((JavaUtilProperties *) nil_chk(ASHtmlSaxHandler_languageProperties)) getPropertyWithNSString:localName]);
    if (widgetOverrideName != nil && ![widgetOverrideName java_isEmpty]) {
      localName = widgetOverrideName;
    }
  }
  if (widgetOverride != nil) {
    localName = widgetOverride;
  }
  JreStrongAssign(&self->widget_, ASWidgetFactory_getWithNSString_withBoolean_(localName, isTemplate_));
  id<JavaUtilMap> params = ASHtmlSaxHandler_getParamsWithOrgXmlSaxAttributes_withNSString_(self, atts, localName);
  [self startCreateWidgetWithNSString:localName withASIWidget:widget_ withNSString:tagName withNSString:ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(self, @"android:id", atts) withInt:-1 withOrgXmlSaxAttributes:atts withASWidgetAttributeMap:nil withJavaUtilMap:params];
}

- (id<JavaUtilMap>)getParamsWithOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts
                                       withNSString:(NSString *)localName {
  return ASHtmlSaxHandler_getParamsWithOrgXmlSaxAttributes_withNSString_(self, atts, localName);
}

- (NSString *)getAttrKeyWithoutNameSpaceWithNSString:(NSString *)attr {
  return ASHtmlSaxHandler_getAttrKeyWithoutNameSpaceWithNSString_(self, attr);
}

- (id<ASIWidget>)startCreateWidgetWithNSString:(NSString *)localName
                                 withASIWidget:(id<ASIWidget>)widget
                                  withNSString:(NSString *)tagName
                                  withNSString:(NSString *)id_
                                       withInt:(jint)index
                       withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts
                      withASWidgetAttributeMap:(ASWidgetAttributeMap *)widgetAttributeMap
                               withJavaUtilMap:(id<JavaUtilMap>)params {
  JreStrongAssign(&self->widget_, widget);
  if (widget == nil) {
    widget = ASWidgetFactory_getWithNSString_withBoolean_(localName, isTemplate_);
    JreStrongAssign(&self->widget_, widget);
  }
  NSString *decorators = (NSString *) cast_chk([((id<JavaUtilMap>) nil_chk(params)) getWithId:@"decorator"], [NSString class]);
  if (decorators != nil && !isTemplate_) {
    id<ASICompositeDecorator> compositeDecorator = ASWidgetFactory_getCompositeDecorator();
    if (compositeDecorator != nil) {
      id<ASICompositeDecorator> compositeDecoratorProto = JreRetainedLocalValue([compositeDecorator newInstanceWithNSString:localName withASIWidget:self->widget_]);
      IOSObjectArray *decoratorArr = [decorators java_split:@"\\|"];
      {
        IOSObjectArray *a__ = decoratorArr;
        NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
        NSString * const *e__ = b__ + a__->size_;
        while (b__ < e__) {
          NSString *decorator = *b__++;
          IOSObjectArray *decoratorItems = [((NSString *) nil_chk(decorator)) java_split:@"\\:"];
          id<ASIDecorator> iDecorator = ASWidgetFactory_getDecoratorWithASICompositeDecorator_withASIWidget_withNSString_(compositeDecoratorProto, self->widget_, IOSObjectArray_Get(nil_chk(decoratorItems), 0));
          if (iDecorator != nil) {
            if (decoratorItems->size_ > 1) {
              [iDecorator setSupportedAttributesWithJavaUtilList:JavaUtilArrays_asListWithNSObjectArray_([((NSString *) nil_chk(IOSObjectArray_Get(decoratorItems, 1))) java_split:@","])];
            }
            JreStrongAssign(&self->widget_, compositeDecoratorProto);
            [((id<ASICompositeDecorator>) nil_chk(compositeDecoratorProto)) addDecoratorWithASIDecorator:iDecorator];
            localName = [compositeDecoratorProto getLocalName];
          }
        }
      }
    }
  }
  if (root_ == nil && widget != nil) {
    JreStrongAssign(&self->root_, self->widget_);
  }
  jboolean parentPushed = false;
  if (widget != nil) {
    id<ASHasWidgets> parent = nil;
    if (![((JavaUtilStack *) nil_chk(hasWidgets_)) isEmpty]) {
      parent = [((JavaUtilStack *) nil_chk(hasWidgets_)) peek];
    }
    if (parent != nil) {
      [widget setParentWithASHasWidgets:parent];
      if ([widget isKindOfClass:[ASBaseHasWidgets class]]) {
        id<JavaUtilSet> eventBubblers = JreRetainedLocalValue([parent getEventBubblers]);
        if (eventBubblers != nil) {
          [widget setEventBubblersWithJavaUtilCollection:eventBubblers];
        }
      }
    }
    [((id<ASIWidget>) nil_chk(self->widget_)) createWithASIFragment:fragment_ withJavaUtilMap:params];
    [widget setIdWithNSString:id_];
    if (widgetAttributeMap == nil) {
      ASHtmlSaxHandler_populateAttributesWithASIWidget_withASHasWidgets_withNSString_withNSString_withOrgXmlSaxAttributes_(self, widget, parent, tagName, localName, atts);
    }
    else {
      [((id<ASIWidget>) nil_chk(self->widget_)) updateWidgetMapWithASWidgetAttributeMap:widgetAttributeMap];
    }
    if (parent != nil) {
      if ([widget asWidget] != nil) {
        [parent addWithASIWidget:widget withInt:index];
      }
    }
    if ([ASHasWidgets_class_() isInstance:widget]) {
      parentPushed = true;
      id<ASHasWidgets> hasWidget = (id<ASHasWidgets>) cast_check(widget, ASHasWidgets_class_());
      [((JavaUtilStack *) nil_chk(hasWidgets_)) pushWithId:hasWidget];
    }
  }
  [((JavaUtilStack *) nil_chk(pushParent_)) addWithId:JavaLangBoolean_valueOfWithBoolean_(parentPushed)];
  [((JavaUtilStack *) nil_chk(widgetsStack_)) addWithId:widget];
  return widget;
}

- (NSString *)getValueWithNSString:(NSString *)key
           withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attributes {
  return ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(self, key, attributes);
}

- (void)populateAttributesWithASIWidget:(id<ASIWidget>)widget
                       withASHasWidgets:(id<ASHasWidgets>)parent
                           withNSString:(NSString *)tagName
                           withNSString:(NSString *)localName
                withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts {
  ASHtmlSaxHandler_populateAttributesWithASIWidget_withASHasWidgets_withNSString_withNSString_withOrgXmlSaxAttributes_(self, widget, parent, tagName, localName, atts);
}

- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName {
  if (depth_ > 0) {
    depth_--;
    return;
  }
  if ([((NSString *) nil_chk(localName)) java_equalsIgnoreCase:@"include"]) {
    return;
  }
  [self endCreateWidgetWithNSString:localName];
  if ([localName java_equalsIgnoreCase:@"template"]) {
    [((JavaUtilStack *) nil_chk(templateStack_)) pop];
    isTemplate_ = ![((JavaUtilStack *) nil_chk(templateStack_)) isEmpty];
  }
}

- (void)endCreateWidgetWithNSString:(NSString *)localName {
  if ([((JavaLangBoolean *) nil_chk([((JavaUtilStack *) nil_chk(pushParent_)) pop])) booleanValue]) {
    [((JavaUtilStack *) nil_chk(hasWidgets_)) pop];
  }
  JreStrongAssign(&self->widget_, [((JavaUtilStack *) nil_chk(widgetsStack_)) pop]);
  if (widget_ != nil) {
    [widget_ initialized];
  }
  if ([ASHasWidgets_class_() isInstance:self->widget_]) {
    id<ASHasWidgets> hasWidget = (id<ASHasWidgets>) cast_check(self->widget_, ASHasWidgets_class_());
  }
}

- (id<ASIWidget>)getRoot {
  return root_;
}

- (void)initRootWithASHasWidgets:(id<ASHasWidgets>)parent {
  JreStrongAssign(&root_, parent);
  [((JavaUtilStack *) nil_chk(hasWidgets_)) pushWithId:parent];
}

- (void)addToCurrentParentWithASIWidget:(id<ASIWidget>)widget {
  [((id<ASHasWidgets>) nil_chk([((JavaUtilStack *) nil_chk(hasWidgets_)) peek])) addWithASIWidget:widget withInt:-1];
}

- (void)dealloc {
  RELEASE_(pageData_);
  RELEASE_(root_);
  RELEASE_(widget_);
  RELEASE_(hasWidgets_);
  RELEASE_(pushParent_);
  RELEASE_(fragment_);
  RELEASE_(widgetsStack_);
  RELEASE_(templateStack_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 3, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 7, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 5, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, 1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x2, 15, 16, -1, 17, -1, -1 },
    { NULL, "LNSString;", 0x2, 18, 3, -1, -1, -1, -1 },
    { NULL, "LASIWidget;", 0x1, 19, 20, -1, 21, -1, -1 },
    { NULL, "LNSString;", 0x2, 22, 23, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 24, 25, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 26, 27, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 28, 3, -1, -1, -1, -1 },
    { NULL, "LASIWidget;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 29, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 32, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithASIFragment:withBoolean:);
  methods[1].selector = @selector(endDocument);
  methods[2].selector = @selector(endPrefixMappingWithNSString:);
  methods[3].selector = @selector(ignorableWhitespaceWithCharArray:withInt:withInt:);
  methods[4].selector = @selector(processingInstructionWithNSString:withNSString:);
  methods[5].selector = @selector(setDocumentLocatorWithOrgXmlSaxLocator:);
  methods[6].selector = @selector(skippedEntityWithNSString:);
  methods[7].selector = @selector(startDocument);
  methods[8].selector = @selector(startPrefixMappingWithNSString:withNSString:);
  methods[9].selector = @selector(charactersWithCharArray:withInt:withInt:);
  methods[10].selector = @selector(startElementWithNSString:withNSString:withNSString:withOrgXmlSaxAttributes:);
  methods[11].selector = @selector(getParamsWithOrgXmlSaxAttributes:withNSString:);
  methods[12].selector = @selector(getAttrKeyWithoutNameSpaceWithNSString:);
  methods[13].selector = @selector(startCreateWidgetWithNSString:withASIWidget:withNSString:withNSString:withInt:withOrgXmlSaxAttributes:withASWidgetAttributeMap:withJavaUtilMap:);
  methods[14].selector = @selector(getValueWithNSString:withOrgXmlSaxAttributes:);
  methods[15].selector = @selector(populateAttributesWithASIWidget:withASHasWidgets:withNSString:withNSString:withOrgXmlSaxAttributes:);
  methods[16].selector = @selector(endElementWithNSString:withNSString:withNSString:);
  methods[17].selector = @selector(endCreateWidgetWithNSString:);
  methods[18].selector = @selector(getRoot);
  methods[19].selector = @selector(initRootWithASHasWidgets:);
  methods[20].selector = @selector(addToCurrentParentWithASIWidget:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "pageData_", "LCSSCssDataHolder;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "root_", "LASIWidget;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "widget_", "LASIWidget;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "hasWidgets_", "LJavaUtilStack;", .constantValue.asLong = 0, 0x2, -1, -1, 33, -1 },
    { "pushParent_", "LJavaUtilStack;", .constantValue.asLong = 0, 0x2, -1, -1, 34, -1 },
    { "fragment_", "LASIFragment;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "widgetsStack_", "LJavaUtilStack;", .constantValue.asLong = 0, 0x2, -1, -1, 35, -1 },
    { "isTemplate_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "templateStack_", "LJavaUtilStack;", .constantValue.asLong = 0, 0x2, -1, -1, 34, -1 },
    { "depth_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "languageProperties", "LJavaUtilProperties;", .constantValue.asLong = 0, 0xa, -1, 36, -1, -1 },
    { "isAndroid_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LASIFragment;Z", "LOrgXmlSaxSAXException;", "endPrefixMapping", "LNSString;", "ignorableWhitespace", "[CII", "processingInstruction", "LNSString;LNSString;", "setDocumentLocator", "LOrgXmlSaxLocator;", "skippedEntity", "startPrefixMapping", "characters", "startElement", "LNSString;LNSString;LNSString;LOrgXmlSaxAttributes;", "getParams", "LOrgXmlSaxAttributes;LNSString;", "(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;", "getAttrKeyWithoutNameSpace", "startCreateWidget", "LNSString;LASIWidget;LNSString;LNSString;ILOrgXmlSaxAttributes;LASWidgetAttributeMap;LJavaUtilMap;", "(Ljava/lang/String;Lcom/ashera/widget/IWidget;Ljava/lang/String;Ljava/lang/String;ILorg/xml/sax/Attributes;Lcom/ashera/widget/WidgetAttributeMap;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Lcom/ashera/widget/IWidget;", "getValue", "LNSString;LOrgXmlSaxAttributes;", "populateAttributes", "LASIWidget;LASHasWidgets;LNSString;LNSString;LOrgXmlSaxAttributes;", "endElement", "LNSString;LNSString;LNSString;", "endCreateWidget", "initRoot", "LASHasWidgets;", "addToCurrentParent", "LASIWidget;", "Ljava/util/Stack<Lcom/ashera/widget/HasWidgets;>;", "Ljava/util/Stack<Ljava/lang/Boolean;>;", "Ljava/util/Stack<Lcom/ashera/widget/IWidget;>;", &ASHtmlSaxHandler_languageProperties };
  static const J2ObjcClassInfo _ASHtmlSaxHandler = { "HtmlSaxHandler", "com.ashera.parser.html", ptrTable, methods, fields, 7, 0x1, 21, 12, -1, -1, -1, -1, -1 };
  return &_ASHtmlSaxHandler;
}

@end

void ASHtmlSaxHandler_initWithASIFragment_withBoolean_(ASHtmlSaxHandler *self, id<ASIFragment> fragment, jboolean template_) {
  NSObject_init(self);
  JreStrongAssign(&self->pageData_, nil);
  JreStrongAssignAndConsume(&self->hasWidgets_, new_JavaUtilStack_init());
  JreStrongAssignAndConsume(&self->pushParent_, new_JavaUtilStack_init());
  JreStrongAssignAndConsume(&self->widgetsStack_, new_JavaUtilStack_init());
  self->isTemplate_ = false;
  JreStrongAssignAndConsume(&self->templateStack_, new_JavaUtilStack_init());
  self->depth_ = 0;
  self->isAndroid_ = [((NSString *) nil_chk(ASPluginInvoker_getOS())) java_equalsIgnoreCase:@"android"];
  self->isTemplate_ = template_;
  JreStrongAssign(&self->fragment_, fragment);
  if ([((id<ASIFragment>) nil_chk(fragment)) getStyleSheet] == nil) {
    JreStrongAssignAndConsume(&self->pageData_, new_CSSCssDataHolder_init());
    [fragment setStyleSheetWithCSSStyleSheet:self->pageData_];
    NSString *href = @"www/css/styles.css";
    [((CSSCssDataHolder *) nil_chk(self->pageData_)) addCssWithNSString:ASPluginInvoker_getFileAssetWithNSString_withASIFragment_(href, fragment)];
  }
  else {
    JreStrongAssign(&self->pageData_, (CSSCssDataHolder *) cast_chk([fragment getStyleSheet], [CSSCssDataHolder class]));
  }
}

ASHtmlSaxHandler *new_ASHtmlSaxHandler_initWithASIFragment_withBoolean_(id<ASIFragment> fragment, jboolean template_) {
  J2OBJC_NEW_IMPL(ASHtmlSaxHandler, initWithASIFragment_withBoolean_, fragment, template_)
}

ASHtmlSaxHandler *create_ASHtmlSaxHandler_initWithASIFragment_withBoolean_(id<ASIFragment> fragment, jboolean template_) {
  J2OBJC_CREATE_IMPL(ASHtmlSaxHandler, initWithASIFragment_withBoolean_, fragment, template_)
}

id<JavaUtilMap> ASHtmlSaxHandler_getParamsWithOrgXmlSaxAttributes_withNSString_(ASHtmlSaxHandler *self, id<OrgXmlSaxAttributes> atts, NSString *localName) {
  NSString *decorators = ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(self, @"decorator", atts);
  id<JavaUtilMap> params = create_JavaUtilHashMap_init();
  if (decorators != nil) {
    [params putWithId:@"decorator" withId:decorators];
  }
  if (!self->isAndroid_ && self->widget_ != nil) {
    [self->widget_ applyThemeConstructorArgsStyleWithNSString:[self->widget_ getGroupName] withJavaUtilMap:params];
  }
  NSString *createAttrCount = JreRetainedLocalValue([((id<OrgXmlSaxAttributes>) nil_chk(atts)) getValueWithNSString:@"create-attr-count"]);
  if (createAttrCount != nil) {
    params = create_JavaUtilHashMap_init();
    JavaLangInteger *count = JavaLangInteger_valueOfWithInt_(JavaLangInteger_parseIntWithNSString_(createAttrCount));
    for (jint i = 0; i < [count intValue]; i++) {
      NSString *attr = JreRetainedLocalValue([atts getValueWithNSString:JreStrcat("$I", @"create-attr-", i)]);
      [params putWithId:ASHtmlSaxHandler_getAttrKeyWithoutNameSpaceWithNSString_(self, attr) withId:ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(self, attr, atts)];
    }
  }
  id<JavaUtilSet> constructorAttributes = ASWidgetFactory_getConstructorAttributesWithNSString_(localName);
  if (constructorAttributes != nil) {
    for (NSString * __strong constructorAttribute in constructorAttributes) {
      NSString *value = ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(self, constructorAttribute, atts);
      if (value != nil) {
        [params putWithId:ASHtmlSaxHandler_getAttrKeyWithoutNameSpaceWithNSString_(self, constructorAttribute) withId:value];
      }
    }
  }
  return params;
}

NSString *ASHtmlSaxHandler_getAttrKeyWithoutNameSpaceWithNSString_(ASHtmlSaxHandler *self, NSString *attr) {
  if ([((NSString *) nil_chk(attr)) java_indexOfString:@":"] == -1) {
    return attr;
  }
  return [attr java_substring:[attr java_indexOfString:@":"] + 1];
}

NSString *ASHtmlSaxHandler_getValueWithNSString_withOrgXmlSaxAttributes_(ASHtmlSaxHandler *self, NSString *key, id<OrgXmlSaxAttributes> attributes) {
  NSString *os = [((NSString *) nil_chk(ASPluginInvoker_getOS())) lowercaseString];
  if ([((id<OrgXmlSaxAttributes>) nil_chk(attributes)) getValueWithNSString:JreStrcat("$C$", key, '-', os)] != nil) {
    return [attributes getValueWithNSString:JreStrcat("$C$", key, '-', os)];
  }
  return [attributes getValueWithNSString:key];
}

void ASHtmlSaxHandler_populateAttributesWithASIWidget_withASHasWidgets_withNSString_withNSString_withOrgXmlSaxAttributes_(ASHtmlSaxHandler *self, id<ASIWidget> widget, id<ASHasWidgets> parent, NSString *tagName, NSString *localName, id<OrgXmlSaxAttributes> atts) {
  if (!self->isAndroid_) {
    [((id<ASIWidget>) nil_chk(widget)) applyThemeStyleWithNSString:[widget getGroupName]];
  }
  NSString *style = JreRetainedLocalValue([((id<OrgXmlSaxAttributes>) nil_chk(atts)) getValueWithNSString:@"style"]);
  if (style != nil) {
    [((CSSCssDataHolder *) nil_chk(self->pageData_)) getCssWithNSString:tagName withNSString:[style java_replaceFirst:@"@style/" withReplacement:@""] withNSString:[atts getValueWithNSString:@"id"] withCSSCssResult:create_ASHtmlSaxHandler_1_initWithASIWidget_withASHasWidgets_withNSString_(widget, parent, localName)];
  }
  for (jint i = 0; i < [atts getLength]; i++) {
    NSString *key = JreRetainedLocalValue([atts getLocalNameWithInt:i]);
    ASWidgetAttribute *attribute = [((id<ASIWidget>) nil_chk(widget)) getAttributeWithASHasWidgets:parent withNSString:localName withNSString:key];
    if (attribute != nil) {
      ASWidgetAttributeValue *attributeValue = create_ASWidgetAttributeValue_initWithNSString_([atts getValueWithInt:i]);
      [widget updateWidgetMapWithASWidgetAttribute:attribute withASWidgetAttributeValue:attributeValue];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASHtmlSaxHandler)

@implementation ASHtmlSaxHandler_1

- (instancetype)initWithASIWidget:(id<ASIWidget>)capture$0
                 withASHasWidgets:(id<ASHasWidgets>)capture$1
                     withNSString:(NSString *)capture$2 {
  ASHtmlSaxHandler_1_initWithASIWidget_withASHasWidgets_withNSString_(self, capture$0, capture$1, capture$2);
  return self;
}

- (void)putWithNSString:(NSString *)key
withCSSCssTree_Attribute:(CSSCssTree_Attribute *)value {
  ASWidgetAttribute *attribute = JreRetainedLocalValue([((id<ASIWidget>) nil_chk(val$widget_)) getAttributeWithASHasWidgets:val$parent_ withNSString:val$localName_ withNSString:key]);
  if (attribute != nil) {
    ASWidgetAttributeValue *attributeValue = create_ASWidgetAttributeValue_initWithNSString_withNSString_withNSString_withNSString_withNSString_withNSString_(((CSSCssTree_Attribute *) nil_chk(value))->value_, value->orientation_, value->minWidth_, value->minHeight_, value->maxWidth_, value->maxHeight_);
    [val$widget_ updateWidgetMapWithASWidgetAttribute:attribute withASWidgetAttributeValue:attributeValue];
  }
}

- (void)dealloc {
  RELEASE_(val$widget_);
  RELEASE_(val$parent_);
  RELEASE_(val$localName_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithASIWidget:withASHasWidgets:withNSString:);
  methods[1].selector = @selector(putWithNSString:withCSSCssTree_Attribute:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$widget_", "LASIWidget;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$parent_", "LASHasWidgets;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$localName_", "LNSString;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LASIWidget;LASHasWidgets;LNSString;", "put", "LNSString;LCSSCssTree_Attribute;", "LASHtmlSaxHandler;", "populateAttributesWithASIWidget:withASHasWidgets:withNSString:withNSString:withOrgXmlSaxAttributes:" };
  static const J2ObjcClassInfo _ASHtmlSaxHandler_1 = { "", "com.ashera.parser.html", ptrTable, methods, fields, 7, 0x8010, 2, 3, 3, -1, 4, -1, -1 };
  return &_ASHtmlSaxHandler_1;
}

@end

void ASHtmlSaxHandler_1_initWithASIWidget_withASHasWidgets_withNSString_(ASHtmlSaxHandler_1 *self, id<ASIWidget> capture$0, id<ASHasWidgets> capture$1, NSString *capture$2) {
  JreStrongAssign(&self->val$widget_, capture$0);
  JreStrongAssign(&self->val$parent_, capture$1);
  JreStrongAssign(&self->val$localName_, capture$2);
  NSObject_init(self);
}

ASHtmlSaxHandler_1 *new_ASHtmlSaxHandler_1_initWithASIWidget_withASHasWidgets_withNSString_(id<ASIWidget> capture$0, id<ASHasWidgets> capture$1, NSString *capture$2) {
  J2OBJC_NEW_IMPL(ASHtmlSaxHandler_1, initWithASIWidget_withASHasWidgets_withNSString_, capture$0, capture$1, capture$2)
}

ASHtmlSaxHandler_1 *create_ASHtmlSaxHandler_1_initWithASIWidget_withASHasWidgets_withNSString_(id<ASIWidget> capture$0, id<ASHasWidgets> capture$1, NSString *capture$2) {
  J2OBJC_CREATE_IMPL(ASHtmlSaxHandler_1, initWithASIWidget_withASHasWidgets_withNSString_, capture$0, capture$1, capture$2)
}
