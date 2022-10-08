//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\widget\BaseHasWidgets.java
//

#include "BaseHasWidgets.h"
#include "BaseWidget.h"
#include "Error.h"
#include "ExpressionMethodHandler.h"
#include "HasWidgets.h"
#include "IConverter.h"
#include "IFragment.h"
#include "ILifeCycleDecorator.h"
#include "IOSClass.h"
#include "IWidget.h"
#include "J2ObjC_source.h"
#include "LoopParam.h"
#include "ModelDataType.h"
#include "ModelExpressionParser.h"
#include "ModelScope.h"
#include "PluginInvoker.h"
#include "WidgetAttribute.h"
#include "WidgetAttributeMap.h"
#include "WidgetFactory.h"
#include "WidgetViewHolder.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/UUID.h"

@protocol JavaUtilList;


#pragma clang diagnostic ignored "-Wprotocol"

@interface ASBaseHasWidgets () {
 @public
  NSString *modelFor_;
}

- (void)setChildAttributesWithASIWidget:(id<ASIWidget>)w;

- (void)addModelByIndexWithId:(id)model
                      withInt:(jint)index;

- (id<JavaUtilList>)getListObjectInScopeWithASModelExpressionParser_ModelLoopHolder:(ASModelExpressionParser_ModelLoopHolder *)modelLoopHolder;

@end

J2OBJC_FIELD_SETTER(ASBaseHasWidgets, modelFor_, NSString *)

__attribute__((unused)) static void ASBaseHasWidgets_setChildAttributesWithASIWidget_(ASBaseHasWidgets *self, id<ASIWidget> w);

__attribute__((unused)) static void ASBaseHasWidgets_addModelByIndexWithId_withInt_(ASBaseHasWidgets *self, id model, jint index);

__attribute__((unused)) static id<JavaUtilList> ASBaseHasWidgets_getListObjectInScopeWithASModelExpressionParser_ModelLoopHolder_(ASBaseHasWidgets *self, ASModelExpressionParser_ModelLoopHolder *modelLoopHolder);

@interface ASBaseHasWidgets_LazyBaseWidget () {
 @public
  __unsafe_unretained ASBaseHasWidgets *this$0_;
}

@end

inline NSString *ASBaseHasWidgets_LazyBaseWidget_get_LOCAL_NAME(void);
static NSString *ASBaseHasWidgets_LazyBaseWidget_LOCAL_NAME = @"LazyBaseWidget";
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASBaseHasWidgets_LazyBaseWidget, LOCAL_NAME, NSString *)

@implementation ASBaseHasWidgets

- (instancetype)initWithNSString:(NSString *)groupName
                    withNSString:(NSString *)localName {
  ASBaseHasWidgets_initWithNSString_withNSString_(self, groupName, localName);
  return self;
}

- (void)addWithASIWidget:(id<ASIWidget>)w
                 withInt:(jint)index {
  if (index < 0) {
    [((id<JavaUtilList>) nil_chk(widgets_)) addWithId:w];
  }
  else {
    [((id<JavaUtilList>) nil_chk(widgets_)) addWithInt:index withId:w];
  }
  if ([((id<ASIWidget>) nil_chk(w)) isAfterParentInitRequired]) {
    if (afterInitWidgets_ == nil) {
      JreStrongAssignAndConsume(&afterInitWidgets_, new_JavaUtilArrayList_init());
    }
    [afterInitWidgets_ addWithId:w];
  }
  ASBaseHasWidgets_setChildAttributesWithASIWidget_(self, w);
}

- (void)setChildAttributesWithASIWidget:(id<ASIWidget>)w {
  ASBaseHasWidgets_setChildAttributesWithASIWidget_(self, w);
}

- (void)setChildAttributeWithASIWidget:(id<ASIWidget>)w
                 withASWidgetAttribute:(ASWidgetAttribute *)widgetAttribute {
  id<ASIConverter> converter = ASPluginInvoker_getConverterWithNSString_([((ASWidgetAttribute *) nil_chk(widgetAttribute)) getAttributeType]);
  NSString *strValue = JreRetainedLocalValue([((id<ASIWidget>) nil_chk(w)) getAttributeValueWithNSString:[widgetAttribute getAttributeName]]);
  if (strValue != nil) {
    id objValue = JreRetainedLocalValue(strValue);
    if (converter != nil) {
      objValue = ASPluginInvoker_convertFromWithASIConverter_withJavaUtilMap_withId_withASIFragment_(converter, [self getDependentAttributesMapWithASIConverter:converter], strValue, fragment_);
    }
    [self setChildAttributeWithASIWidget:w withASWidgetAttribute:widgetAttribute withNSString:strValue withId:objValue];
  }
}

- (void)setChildAttributeWithASIWidget:(id<ASIWidget>)widget
                 withASWidgetAttribute:(ASWidgetAttribute *)key
                          withNSString:(NSString *)strValue
                                withId:(id)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)clear {
  jint startIndex = 0;
  jint endIndex = [((id<JavaUtilList>) nil_chk([self getChildWidgets])) size];
  for (jint i = endIndex - 1; i >= startIndex; i--) {
    [self removeWithInt:i];
  }
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilList>) nil_chk(widgets_)) iterator];
}

- (jboolean)removeWithASIWidget:(id<ASIWidget>)w {
  return [((id<JavaUtilList>) nil_chk(widgets_)) removeWithId:w];
}

- (jboolean)removeWithInt:(jint)index {
  [self removeIdsAndDataWithInt:index];
  return [self removeWidgetWithInt:index];
}

- (jboolean)removeWidgetWithInt:(jint)index {
  jboolean success = false;
  if (index + 1 <= [((id<JavaUtilList>) nil_chk(widgets_)) size]) {
    id<ASIWidget> widget = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(widgets_)) getWithInt:index]);
    [((id<ASIWidget>) nil_chk(widget)) setParentWithASHasWidgets:nil];
    [self removeObjectListenersWithASIWidget:widget];
    [((id<JavaUtilList>) nil_chk(widgets_)) removeWithInt:index];
    success = true;
  }
  return success;
}

- (void)removeIdsAndDataWithInt:(jint)index {
  if (index + 1 <= [((id<JavaUtilList>) nil_chk(ids_)) size]) {
    [((id<JavaUtilList>) nil_chk(ids_)) removeWithInt:index];
    [((id<JavaUtilList>) nil_chk(dataList_)) removeWithInt:index];
  }
}

- (id<ASIWidget>)newLazyInstance {
  return create_ASBaseHasWidgets_LazyBaseWidget_initWithASBaseHasWidgets_(self);
}

- (id<ASIWidget>)findWidgetByIdWithNSString:(NSString *)id_ {
  id<ASIWidget> idWidget = [super findWidgetByIdWithNSString:id_];
  if (idWidget == nil) {
    for (id<JavaUtilIterator> iterator = JreRetainedLocalValue([self iterator]); [((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]; ) {
      id<ASIWidget> w = JreRetainedLocalValue([iterator next]);
      idWidget = [((id<ASIWidget>) nil_chk(w)) findWidgetByIdWithNSString:id_];
      if (idWidget != nil) {
        break;
      }
    }
  }
  return idWidget;
}

- (void)setModelForWithNSString:(NSString *)modelFor {
  JreStrongAssign(&self->modelFor_, modelFor);
}

- (NSString *)getModelFor {
  return self->modelFor_;
}

- (void)addTemplateWithId:(id)objValue {
  JreStrongAssign(&self->listItem_, ((id<ASIWidget>) cast_check(objValue, ASIWidget_class_())));
}

- (void)addAllModelWithId:(id)objValue {
  id<JavaUtilList> models = ASPluginInvoker_getListWithId_(objValue);
  for (id __strong model in nil_chk(models)) {
    [self addModelWithId:model];
  }
}

- (void)addModelWithASLoopParam:(ASLoopParam *)model
                   withNSString:(NSString *)currentLoopVar {
  [self addObjectWithASLoopParam:model withNSString:[self getModelIdPath] withInt:-1 withNSString:currentLoopVar];
}

- (void)addModelWithASLoopParam:(ASLoopParam *)model
                        withInt:(jint)index
                   withNSString:(NSString *)currentLoopVar {
  [self addObjectWithASLoopParam:model withNSString:[self getModelIdPath] withInt:index withNSString:currentLoopVar];
}

- (void)addObjectWithASLoopParam:(ASLoopParam *)childModel
                    withNSString:(NSString *)modelIdPath
                         withInt:(jint)index
                    withNSString:(NSString *)currentLoopVar {
  NSString *id_ = nil;
  if (modelIdPath != nil) {
    id_ = ASPluginInvoker_getStringWithId_([self getModelByPathWithNSString:modelIdPath withId:[((ASLoopParam *) nil_chk(childModel)) getWithId:currentLoopVar]]);
  }
  else {
    id_ = [((JavaUtilUUID *) nil_chk(JavaUtilUUID_randomUUID())) description];
  }
  if (![((id<JavaUtilList>) nil_chk(ids_)) containsWithId:id_]) {
    if (index == -1) {
      [((id<JavaUtilList>) nil_chk(ids_)) addWithId:id_];
      [((id<JavaUtilList>) nil_chk(dataList_)) addWithId:childModel];
    }
    else {
      [((id<JavaUtilList>) nil_chk(ids_)) addWithInt:index withId:id_];
      [((id<JavaUtilList>) nil_chk(dataList_)) addWithInt:index withId:childModel];
    }
    [self addItemToParentWithInt:index withNSString:id_ withASLoopParam:childModel];
  }
  else {
    [((id<JavaUtilList>) nil_chk(dataList_)) setWithInt:[((id<JavaUtilList>) nil_chk(ids_)) indexOfWithId:id_] withId:childModel];
    id<ASIWidget> widget;
    widget = [((id<JavaUtilList>) nil_chk([self getChildWidgets])) getWithInt:[((id<JavaUtilList>) nil_chk(ids_)) indexOfWithId:id_]];
    [self updateModelRecurseWithASIWidget:widget withASLoopParam:childModel];
  }
}

- (id<JavaUtilList>)getChildWidgets {
  return widgets_;
}

- (void)addItemToParentWithInt:(jint)index
                  withNSString:(NSString *)id_
               withASLoopParam:(ASLoopParam *)childModel {
  id<ASIWidget> widget = JreRetainedLocalValue([((id<ASIWidget>) nil_chk(listItem_)) loadLazyWidgetsWithASHasWidgets:self withInt:index withNSString:id_ withASLoopParam:childModel]);
  [self onChildAddedWithASIWidget:widget];
}

- (void)onChildAddedWithASIWidget:(id<ASIWidget>)widget {
}

- (void)updateModelRecurseWithASIWidget:(id<ASIWidget>)widget
                        withASLoopParam:(ASLoopParam *)childModel
          withASIWidget_CommandCallBack:(id<ASIWidget_CommandCallBack>)callBack {
  [((id<ASIWidget>) nil_chk(widget)) setLoopParamWithASLoopParam:childModel];
  [widget notifyDataSetChanged];
  if (callBack != nil) {
    [callBack onWidgetWithASIWidget:widget];
  }
  if ([ASHasWidgets_class_() isInstance:widget] && [((id<ASHasWidgets>) cast_check(widget, ASHasWidgets_class_())) getModelFor] == nil) {
    for (id<ASIWidget> __strong childWidget in nil_chk([((id<ASHasWidgets>) cast_check(widget, ASHasWidgets_class_())) getWidgets])) {
      [self updateModelRecurseWithASIWidget:childWidget withASLoopParam:childModel withASIWidget_CommandCallBack:callBack];
    }
  }
}

- (void)updateModelRecurseWithASIWidget:(id<ASIWidget>)widget
                        withASLoopParam:(ASLoopParam *)childModel {
  [self updateModelRecurseWithASIWidget:widget withASLoopParam:childModel withASIWidget_CommandCallBack:nil];
}

- (void)removeModelByIdWithNSString:(NSString *)id_ {
  jint index = [((id<JavaUtilList>) nil_chk(ids_)) indexOfWithId:id_];
  if (index != -1) {
    [self removeModelAtIndexWithInt:index];
  }
}

- (id<JavaUtilList>)getStableIds {
  return ids_;
}

- (id<ASIWidget>)getWithInt:(jint)index {
  return [((id<JavaUtilList>) nil_chk(widgets_)) getWithInt:index];
}

- (id<JavaUtilList>)getWidgets {
  return widgets_;
}

- (id<ASIWidget>)getListItem {
  return listItem_;
}

- (id<ASHasWidgets>)getCompositeLeaf {
  return self;
}

- (jboolean)areWidgetItemsRecycled {
  return false;
}

- (void)applyModelToWidget {
  [super applyModelToWidget];
  @try {
    if (modelFor_ != nil) {
      ASModelExpressionParser_ModelLoopHolder *modelLoopHolder = ASModelExpressionParser_parseModelLoopExpressionWithNSString_(self->modelFor_);
      NSString *varName = JreRetainedLocalValue(((ASModelExpressionParser_ModelLoopHolder *) nil_chk(modelLoopHolder))->varName_);
      NSString *varPath = JreRetainedLocalValue(modelLoopHolder->varPath_);
      NSString *key = JreRetainedLocalValue(modelLoopHolder->key_);
      ASModelScope *varSource = JreRetainedLocalValue(modelLoopHolder->varSource_);
      ASModelScope *varScope = JreRetainedLocalValue(modelLoopHolder->varScope_);
      ASModelDataType *dataType = JreRetainedLocalValue(modelLoopHolder->dataType_);
      id obj = JreRetainedLocalValue([self getModelFromScopeWithNSString:key withASModelScope:varSource]);
      obj = [self getModelByPathWithNSString:varPath withId:obj];
      if (obj != nil) {
        for (id __strong model in nil_chk(ASPluginInvoker_getListWithId_(obj))) {
          model = [self changeModelDataTypeWithASModelDataType:dataType withId:model];
          ASLoopParam *loopParam = create_ASLoopParam_init();
          if ([self getLoopParam] != nil) {
            [loopParam putAllWithJavaUtilMap:[self getLoopParam]];
          }
          [self storeModelToScopeWithNSString:varName withASModelScope:varScope withId:model withASLoopParam:loopParam];
          [self addModelWithASLoopParam:loopParam withNSString:varName];
        }
      }
    }
  }
  @catch (JavaLangException *e) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:[e getMessage]];
    [e printStackTrace];
    [((id<ASIFragment>) nil_chk(fragment_)) addErrorWithASError:create_ASError_initWithJavaUtilMap_withASBaseWidget_withJavaLangException_(nil, self, e)];
  }
}

- (void)addModelWithId:(id)model
               withInt:(jint)index {
  ASBaseHasWidgets_addModelByIndexWithId_withInt_(self, model, index);
}

- (void)addModelWithId:(id)model {
  [self addModelWithId:model withInt:-1];
}

- (void)removeModelAtIndexWithInt:(jint)index {
  if (index != -1) {
    NSString *modelFor = JreRetainedLocalValue([self getModelFor]);
    if (modelFor != nil) {
      ASModelExpressionParser_ModelLoopHolder *modelLoopHolder = ASModelExpressionParser_parseModelLoopExpressionWithNSString_(modelFor);
      id<JavaUtilList> listObj = ASBaseHasWidgets_getListObjectInScopeWithASModelExpressionParser_ModelLoopHolder_(self, modelLoopHolder);
      [((id<JavaUtilList>) nil_chk(listObj)) removeWithInt:index];
      [self removeWithInt:index];
    }
  }
}

- (void)addModelByIndexWithId:(id)model
                      withInt:(jint)index {
  ASBaseHasWidgets_addModelByIndexWithId_withInt_(self, model, index);
}

- (id<JavaUtilList>)getListObjectInScopeWithASModelExpressionParser_ModelLoopHolder:(ASModelExpressionParser_ModelLoopHolder *)modelLoopHolder {
  return ASBaseHasWidgets_getListObjectInScopeWithASModelExpressionParser_ModelLoopHolder_(self, modelLoopHolder);
}

- (void)notifyDataSetChanged {
  [self clearModel];
  [super notifyDataSetChanged];
}

- (void)clearModel {
  if (listItem_ != nil) {
    [((id<JavaUtilList>) nil_chk(ids_)) clear];
    [((id<JavaUtilList>) nil_chk(dataList_)) clear];
    [self clear];
  }
}

- (void)initialized {
  [super initialized];
  if (afterInitWidgets_ != nil) {
    for (id<ASIWidget> __strong w in afterInitWidgets_) {
      [((id<ASIWidget>) nil_chk(w)) afterParentInit];
    }
  }
}

- (ASWidgetViewHolder *)createWidgetViewHolderWithJavaUtilList:(id<JavaUtilList>)viewHolderIds
                                                 withASIWidget:(id<ASIWidget>)widget {
  ASWidgetViewHolder *holder = create_ASWidgetViewHolder_init();
  JreStrongAssign(&holder->widget_, widget);
  if (viewHolderIds != nil) {
    for (NSString * __strong viewHolderId in viewHolderIds) {
      if (![((NSString *) nil_chk(viewHolderId)) java_hasPrefix:@"@+id/"]) {
        viewHolderId = JreStrcat("$$", @"@+id/", viewHolderId);
      }
      id<ASIWidget> childWidget = JreRetainedLocalValue([((id<ASIWidget>) nil_chk(widget)) findWidgetByIdWithNSString:viewHolderId]);
      if (childWidget != nil && [childWidget getModelPojoToUi] != nil) {
        id<JavaUtilList> modelPojoToUiHolders = ASModelExpressionParser_parsePojoToUiExpressionWithNSString_([childWidget getModelPojoToUi]);
        for (ASModelExpressionParser_ModelPojoToUiHolder * __strong modelPojoToUiHolder in nil_chk(modelPojoToUiHolders)) {
          ASWidgetViewHolder_AttributeViewHolder *attrHolder = create_ASWidgetViewHolder_AttributeViewHolder_init();
          NSString *modelAttribute = JreRetainedLocalValue(((ASModelExpressionParser_ModelPojoToUiHolder *) nil_chk(modelPojoToUiHolder))->modelAttribute_);
          ASWidgetAttribute *widgetAttribute = JreRetainedLocalValue([self getAttributeWithASHasWidgets:[childWidget getParent] withNSString:[childWidget getLocalName] withNSString:modelAttribute]);
          JreStrongAssign(&attrHolder->widgetAttribute_, widgetAttribute);
          JreStrongAssign(&attrHolder->childWidget_, childWidget);
          JreStrongAssign(&attrHolder->modelPojoToUiHolder_, modelPojoToUiHolder);
          [((id<JavaUtilList>) nil_chk(holder->attributes_)) addWithId:attrHolder];
        }
      }
      else {
        ASWidgetViewHolder_AttributeViewHolder *attrHolder = create_ASWidgetViewHolder_AttributeViewHolder_init();
        JreStrongAssign(&attrHolder->childWidget_, childWidget);
        [((id<JavaUtilList>) nil_chk(holder->attributes_)) addWithId:attrHolder];
      }
    }
  }
  return holder;
}

- (void)setAttributeOnViewHolderWithASWidgetViewHolder:(ASWidgetViewHolder *)widgetViewHolder
                                               withInt:(jint)position {
  if (widgetViewHolder != nil) {
    ASLoopParam *model = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(dataList_)) getWithInt:position]);
    [self setAttributeOnViewHolderWithASWidgetViewHolder:widgetViewHolder withASLoopParam:model withBoolean:false];
  }
}

- (void)setAttributeOnViewHolderWithASWidgetViewHolder:(ASWidgetViewHolder *)widgetViewHolder
                                       withASLoopParam:(ASLoopParam *)model {
  [self setAttributeOnViewHolderWithASWidgetViewHolder:widgetViewHolder withASLoopParam:model withBoolean:false];
}

- (void)setAttributeOnViewHolderWithASWidgetViewHolder:(ASWidgetViewHolder *)widgetViewHolder
                                       withASLoopParam:(ASLoopParam *)model
                                           withBoolean:(jboolean)invalidateChild {
  if (widgetViewHolder != nil) {
    @try {
      [((id<ASIFragment>) nil_chk(fragment_)) disableRemeasure];
      for (ASWidgetViewHolder_AttributeViewHolder * __strong attrHolder in nil_chk(widgetViewHolder->attributes_)) {
        id<ASIWidget> childWidget = JreRetainedLocalValue(((ASWidgetViewHolder_AttributeViewHolder *) nil_chk(attrHolder))->childWidget_);
        [((id<ASIWidget>) nil_chk(childWidget)) setLoopParamWithASLoopParam:model];
        if (invalidateChild) {
          [self invalidateChildIfRequiredWithASIWidget:childWidget];
        }
        ASModelExpressionParser_ModelPojoToUiHolder *modelPojoToUiHolder = JreRetainedLocalValue(attrHolder->modelPojoToUiHolder_);
        if (modelPojoToUiHolder != nil) {
          id obj = JreRetainedLocalValue([childWidget getModelFromScopeWithNSString:modelPojoToUiHolder->key_ withASModelScope:modelPojoToUiHolder->varScope_]);
          obj = [self getModelByPathWithNSString:modelPojoToUiHolder->varPath_ withId:obj];
          NSString *methodName = JreRetainedLocalValue(modelPojoToUiHolder->methodName_);
          if (methodName != nil) {
            obj = ASExpressionMethodHandler_getValueWithNSString_withId_withASIWidget_(methodName, obj, childWidget);
          }
          [((ASBaseWidget *) cast_chk(childWidget, [ASBaseWidget class])) applyStyleToWidgetWithASWidgetAttribute:attrHolder->widgetAttribute_ withId:obj];
          jint updateUiFlag = [((ASWidgetAttribute *) nil_chk(attrHolder->widgetAttribute_)) getUpdateUiFlag];
          if ((updateUiFlag & ASIWidget_UPDATE_UI_REQUEST_LAYOUT) != 0) {
            [childWidget requestLayout];
          }
          if ((updateUiFlag & ASIWidget_UPDATE_UI_INVALIDATE) != 0) {
            [childWidget invalidate];
          }
        }
      }
    }
    @finally {
      [((id<ASIFragment>) nil_chk(fragment_)) enableRemeasure];
    }
  }
}

- (void)invalidateChildIfRequiredWithASIWidget:(id<ASIWidget>)childWidget {
}

- (void)dealloc {
  RELEASE_(widgets_);
  RELEASE_(afterInitWidgets_);
  RELEASE_(listItem_);
  RELEASE_(dataList_);
  RELEASE_(ids_);
  RELEASE_(modelFor_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 5, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x1, -1, -1, -1, 8, -1, -1 },
    { NULL, "Z", 0x1, 9, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 11, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 10, -1, -1, -1, -1 },
    { NULL, "LASIWidget;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LASIWidget;", 0x1, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 14, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 21, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 22, 23, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x4, -1, -1, -1, 24, -1, -1 },
    { NULL, "V", 0x4, 25, 26, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 27, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 28, 29, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 28, 30, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 31, 14, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 32, -1, -1 },
    { NULL, "LASIWidget;", 0x1, 33, 10, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 24, -1, -1 },
    { NULL, "LASIWidget;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LASHasWidgets;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 34, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 19, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 35, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 36, 34, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x2, 37, 38, -1, 39, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LASWidgetViewHolder;", 0x1, 40, 41, -1, 42, -1, -1 },
    { NULL, "V", 0x1, 43, 44, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 43, 45, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 43, 46, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 47, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:);
  methods[1].selector = @selector(addWithASIWidget:withInt:);
  methods[2].selector = @selector(setChildAttributesWithASIWidget:);
  methods[3].selector = @selector(setChildAttributeWithASIWidget:withASWidgetAttribute:);
  methods[4].selector = @selector(setChildAttributeWithASIWidget:withASWidgetAttribute:withNSString:withId:);
  methods[5].selector = @selector(clear);
  methods[6].selector = @selector(iterator);
  methods[7].selector = @selector(removeWithASIWidget:);
  methods[8].selector = @selector(removeWithInt:);
  methods[9].selector = @selector(removeWidgetWithInt:);
  methods[10].selector = @selector(removeIdsAndDataWithInt:);
  methods[11].selector = @selector(newLazyInstance);
  methods[12].selector = @selector(findWidgetByIdWithNSString:);
  methods[13].selector = @selector(setModelForWithNSString:);
  methods[14].selector = @selector(getModelFor);
  methods[15].selector = @selector(addTemplateWithId:);
  methods[16].selector = @selector(addAllModelWithId:);
  methods[17].selector = @selector(addModelWithASLoopParam:withNSString:);
  methods[18].selector = @selector(addModelWithASLoopParam:withInt:withNSString:);
  methods[19].selector = @selector(addObjectWithASLoopParam:withNSString:withInt:withNSString:);
  methods[20].selector = @selector(getChildWidgets);
  methods[21].selector = @selector(addItemToParentWithInt:withNSString:withASLoopParam:);
  methods[22].selector = @selector(onChildAddedWithASIWidget:);
  methods[23].selector = @selector(updateModelRecurseWithASIWidget:withASLoopParam:withASIWidget_CommandCallBack:);
  methods[24].selector = @selector(updateModelRecurseWithASIWidget:withASLoopParam:);
  methods[25].selector = @selector(removeModelByIdWithNSString:);
  methods[26].selector = @selector(getStableIds);
  methods[27].selector = @selector(getWithInt:);
  methods[28].selector = @selector(getWidgets);
  methods[29].selector = @selector(getListItem);
  methods[30].selector = @selector(getCompositeLeaf);
  methods[31].selector = @selector(areWidgetItemsRecycled);
  methods[32].selector = @selector(applyModelToWidget);
  methods[33].selector = @selector(addModelWithId:withInt:);
  methods[34].selector = @selector(addModelWithId:);
  methods[35].selector = @selector(removeModelAtIndexWithInt:);
  methods[36].selector = @selector(addModelByIndexWithId:withInt:);
  methods[37].selector = @selector(getListObjectInScopeWithASModelExpressionParser_ModelLoopHolder:);
  methods[38].selector = @selector(notifyDataSetChanged);
  methods[39].selector = @selector(clearModel);
  methods[40].selector = @selector(initialized);
  methods[41].selector = @selector(createWidgetViewHolderWithJavaUtilList:withASIWidget:);
  methods[42].selector = @selector(setAttributeOnViewHolderWithASWidgetViewHolder:withInt:);
  methods[43].selector = @selector(setAttributeOnViewHolderWithASWidgetViewHolder:withASLoopParam:);
  methods[44].selector = @selector(setAttributeOnViewHolderWithASWidgetViewHolder:withASLoopParam:withBoolean:);
  methods[45].selector = @selector(invalidateChildIfRequiredWithASIWidget:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "widgets_", "LJavaUtilList;", .constantValue.asLong = 0, 0x4, -1, -1, 48, -1 },
    { "afterInitWidgets_", "LJavaUtilList;", .constantValue.asLong = 0, 0x4, -1, -1, 48, -1 },
    { "listItem_", "LASIWidget;", .constantValue.asLong = 0, 0x4, -1, -1, -1, -1 },
    { "dataList_", "LJavaUtilList;", .constantValue.asLong = 0, 0x4, -1, -1, 49, -1 },
    { "ids_", "LJavaUtilList;", .constantValue.asLong = 0, 0x4, -1, -1, 50, -1 },
    { "modelFor_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;", "add", "LASIWidget;I", "setChildAttributes", "LASIWidget;", "setChildAttribute", "LASIWidget;LASWidgetAttribute;", "LASIWidget;LASWidgetAttribute;LNSString;LNSObject;", "()Ljava/util/Iterator<Lcom/ashera/widget/IWidget;>;", "remove", "I", "removeWidget", "removeIdsAndData", "findWidgetById", "LNSString;", "setModelFor", "addTemplate", "LNSObject;", "addAllModel", "addModel", "LASLoopParam;LNSString;", "LASLoopParam;ILNSString;", "addObject", "LASLoopParam;LNSString;ILNSString;", "()Ljava/util/List<Lcom/ashera/widget/IWidget;>;", "addItemToParent", "ILNSString;LASLoopParam;", "onChildAdded", "updateModelRecurse", "LASIWidget;LASLoopParam;LASIWidget_CommandCallBack;", "LASIWidget;LASLoopParam;", "removeModelById", "()Ljava/util/List<Ljava/lang/String;>;", "get", "LNSObject;I", "removeModelAtIndex", "addModelByIndex", "getListObjectInScope", "LASModelExpressionParser_ModelLoopHolder;", "(Lcom/ashera/model/ModelExpressionParser$ModelLoopHolder;)Ljava/util/List<Ljava/lang/Object;>;", "createWidgetViewHolder", "LJavaUtilList;LASIWidget;", "(Ljava/util/List<Ljava/lang/String;>;Lcom/ashera/widget/IWidget;)Lcom/ashera/widget/WidgetViewHolder;", "setAttributeOnViewHolder", "LASWidgetViewHolder;I", "LASWidgetViewHolder;LASLoopParam;", "LASWidgetViewHolder;LASLoopParam;Z", "invalidateChildIfRequired", "Ljava/util/List<Lcom/ashera/widget/IWidget;>;", "Ljava/util/List<Lcom/ashera/model/LoopParam;>;", "Ljava/util/List<Ljava/lang/String;>;", "LASBaseHasWidgets_LazyBaseWidget;" };
  static const J2ObjcClassInfo _ASBaseHasWidgets = { "BaseHasWidgets", "com.ashera.widget", ptrTable, methods, fields, 7, 0x401, 46, 6, -1, 51, -1, -1, -1 };
  return &_ASBaseHasWidgets;
}

@end

void ASBaseHasWidgets_initWithNSString_withNSString_(ASBaseHasWidgets *self, NSString *groupName, NSString *localName) {
  ASBaseWidget_initWithNSString_withNSString_(self, groupName, localName);
  JreStrongAssignAndConsume(&self->widgets_, new_JavaUtilArrayList_init());
  JreStrongAssign(&self->listItem_, nil);
  JreStrongAssignAndConsume(&self->dataList_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->ids_, new_JavaUtilArrayList_init());
}

void ASBaseHasWidgets_setChildAttributesWithASIWidget_(ASBaseHasWidgets *self, id<ASIWidget> w) {
  id<JavaUtilSet> widgetAttributes = JreRetainedLocalValue([((ASWidgetAttributeMap *) nil_chk([((id<ASIWidget>) nil_chk(w)) getAttributes])) keySet]);
  for (ASWidgetAttribute * __strong widgetAttribute in nil_chk(widgetAttributes)) {
    @try {
      if ([((ASWidgetAttribute *) nil_chk(widgetAttribute)) isForChild]) {
        [self setChildAttributeWithASIWidget:w withASWidgetAttribute:widgetAttribute];
      }
    }
    @catch (JavaLangException *e) {
      [e printStackTrace];
      [((id<ASIFragment>) nil_chk(self->fragment_)) addErrorWithASError:create_ASError_initWithASWidgetAttribute_withASIWidget_withJavaLangException_(widgetAttribute, self, e)];
    }
  }
}

void ASBaseHasWidgets_addModelByIndexWithId_withInt_(ASBaseHasWidgets *self, id model, jint index) {
  NSString *modelFor = JreRetainedLocalValue([self getModelFor]);
  if (modelFor != nil) {
    ASModelExpressionParser_ModelLoopHolder *modelLoopHolder = ASModelExpressionParser_parseModelLoopExpressionWithNSString_(modelFor);
    NSString *varName = JreRetainedLocalValue(((ASModelExpressionParser_ModelLoopHolder *) nil_chk(modelLoopHolder))->varName_);
    ASModelScope *varScope = JreRetainedLocalValue(modelLoopHolder->varScope_);
    ASModelDataType *dataType = JreRetainedLocalValue(modelLoopHolder->dataType_);
    id<JavaUtilList> listObj = ASBaseHasWidgets_getListObjectInScopeWithASModelExpressionParser_ModelLoopHolder_(self, modelLoopHolder);
    jint existingIndex = -1;
    if ([self getModelIdPath] != nil) {
      NSString *id_ = ASPluginInvoker_getStringWithId_([self getModelByPathWithNSString:[self getModelIdPath] withId:model]);
      existingIndex = [((id<JavaUtilList>) nil_chk(self->ids_)) indexOfWithId:id_];
    }
    if (existingIndex != -1) {
      [((id<JavaUtilList>) nil_chk(listObj)) setWithInt:existingIndex withId:model];
    }
    else {
      if (index == -1) {
        [((id<JavaUtilList>) nil_chk(listObj)) addWithId:model];
      }
      else {
        [((id<JavaUtilList>) nil_chk(listObj)) addWithInt:index withId:model];
      }
    }
    model = [self changeModelDataTypeWithASModelDataType:dataType withId:model];
    ASLoopParam *loopParam = create_ASLoopParam_init();
    [self storeModelToScopeWithNSString:varName withASModelScope:varScope withId:model withASLoopParam:loopParam];
    [self addModelWithASLoopParam:loopParam withInt:index withNSString:varName];
  }
}

id<JavaUtilList> ASBaseHasWidgets_getListObjectInScopeWithASModelExpressionParser_ModelLoopHolder_(ASBaseHasWidgets *self, ASModelExpressionParser_ModelLoopHolder *modelLoopHolder) {
  NSString *varPath = JreRetainedLocalValue(((ASModelExpressionParser_ModelLoopHolder *) nil_chk(modelLoopHolder))->varPath_);
  NSString *key = JreRetainedLocalValue(modelLoopHolder->key_);
  ASModelScope *varSource = JreRetainedLocalValue(modelLoopHolder->varSource_);
  id obj = JreRetainedLocalValue([self getModelFromScopeWithNSString:key withASModelScope:varSource]);
  id<JavaUtilList> listObj = ASPluginInvoker_getListWithId_([self getModelByPathWithNSString:varPath withId:obj]);
  return listObj;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASBaseHasWidgets)

@implementation ASBaseHasWidgets_LazyBaseWidget

- (instancetype)initWithASBaseHasWidgets:(ASBaseHasWidgets *)outer$ {
  ASBaseHasWidgets_LazyBaseWidget_initWithASBaseHasWidgets_(self, outer$);
  return self;
}

- (id<ASIWidget>)newInstance {
  return ASWidgetFactory_getWithNSString_withBoolean_([this$0_ getLocalName], false);
}

- (id)asWidget {
  return this$0_;
}

- (id)asNativeWidget {
  return nil;
}

- (void)createWithASIFragment:(id<ASIFragment>)fragment
              withJavaUtilMap:(id<JavaUtilMap>)params {
  [super createWithASIFragment:fragment withJavaUtilMap:params];
}

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue
                withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator {
}

- (void)setChildAttributeWithASIWidget:(id<ASIWidget>)widget
                 withASWidgetAttribute:(ASWidgetAttribute *)key
                          withNSString:(NSString *)strValue
                                withId:(id)value {
}

- (void)initialized {
}

- (NSString *)getLocalName {
  return [this$0_ getLocalName];
}

- (NSString *)getGroupName {
  return [this$0_ getGroupName];
}

- (void)restoreToDefaultState {
}

- (void)loadAttributesWithNSString:(NSString *)localName {
}

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
              withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator {
  return nil;
}

- (void)addTemplateWithId:(id)objValue {
}

- (void)addModelWithASLoopParam:(ASLoopParam *)model
                   withNSString:(NSString *)currentLoopParam {
}

- (void)addModelWithASLoopParam:(ASLoopParam *)model
                        withInt:(jint)index
                   withNSString:(NSString *)currentLoopParam {
}

- (void)removeModelByIdWithNSString:(NSString *)id_ {
}

- (id<JavaUtilList>)getStableIds {
  return nil;
}

- (id)getChildAttributeWithASIWidget:(id<ASIWidget>)w
               withASWidgetAttribute:(ASWidgetAttribute *)key {
  return nil;
}

- (void)__javaClone:(ASBaseHasWidgets_LazyBaseWidget *)original {
  [super __javaClone:original];
  [this$0_ release];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LASIWidget;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, 3, -1, -1 },
    { NULL, "V", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 9, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 18, -1, -1 },
    { NULL, "LNSObject;", 0x1, 19, 20, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithASBaseHasWidgets:);
  methods[1].selector = @selector(newInstance);
  methods[2].selector = @selector(asWidget);
  methods[3].selector = @selector(asNativeWidget);
  methods[4].selector = @selector(createWithASIFragment:withJavaUtilMap:);
  methods[5].selector = @selector(setAttributeWithASWidgetAttribute:withNSString:withId:withASILifeCycleDecorator:);
  methods[6].selector = @selector(setChildAttributeWithASIWidget:withASWidgetAttribute:withNSString:withId:);
  methods[7].selector = @selector(initialized);
  methods[8].selector = @selector(getLocalName);
  methods[9].selector = @selector(getGroupName);
  methods[10].selector = @selector(restoreToDefaultState);
  methods[11].selector = @selector(loadAttributesWithNSString:);
  methods[12].selector = @selector(getAttributeWithASWidgetAttribute:withASILifeCycleDecorator:);
  methods[13].selector = @selector(addTemplateWithId:);
  methods[14].selector = @selector(addModelWithASLoopParam:withNSString:);
  methods[15].selector = @selector(addModelWithASLoopParam:withInt:withNSString:);
  methods[16].selector = @selector(removeModelByIdWithNSString:);
  methods[17].selector = @selector(getStableIds);
  methods[18].selector = @selector(getChildAttributeWithASIWidget:withASWidgetAttribute:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LASBaseHasWidgets;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "LOCAL_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 21, -1, -1 },
  };
  static const void *ptrTable[] = { "LASBaseHasWidgets;", "create", "LASIFragment;LJavaUtilMap;", "(Lcom/ashera/core/IFragment;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)V", "setAttribute", "LASWidgetAttribute;LNSString;LNSObject;LASILifeCycleDecorator;", "setChildAttribute", "LASIWidget;LASWidgetAttribute;LNSString;LNSObject;", "loadAttributes", "LNSString;", "getAttribute", "LASWidgetAttribute;LASILifeCycleDecorator;", "addTemplate", "LNSObject;", "addModel", "LASLoopParam;LNSString;", "LASLoopParam;ILNSString;", "removeModelById", "()Ljava/util/List<Ljava/lang/String;>;", "getChildAttribute", "LASIWidget;LASWidgetAttribute;", &ASBaseHasWidgets_LazyBaseWidget_LOCAL_NAME };
  static const J2ObjcClassInfo _ASBaseHasWidgets_LazyBaseWidget = { "LazyBaseWidget", "com.ashera.widget", ptrTable, methods, fields, 7, 0x1, 19, 2, 0, -1, -1, -1, -1 };
  return &_ASBaseHasWidgets_LazyBaseWidget;
}

@end

void ASBaseHasWidgets_LazyBaseWidget_initWithASBaseHasWidgets_(ASBaseHasWidgets_LazyBaseWidget *self, ASBaseHasWidgets *outer$) {
  self->this$0_ = outer$;
  ASBaseHasWidgets_initWithNSString_withNSString_(self, ASBaseHasWidgets_LazyBaseWidget_LOCAL_NAME, ASBaseHasWidgets_LazyBaseWidget_LOCAL_NAME);
}

ASBaseHasWidgets_LazyBaseWidget *new_ASBaseHasWidgets_LazyBaseWidget_initWithASBaseHasWidgets_(ASBaseHasWidgets *outer$) {
  J2OBJC_NEW_IMPL(ASBaseHasWidgets_LazyBaseWidget, initWithASBaseHasWidgets_, outer$)
}

ASBaseHasWidgets_LazyBaseWidget *create_ASBaseHasWidgets_LazyBaseWidget_initWithASBaseHasWidgets_(ASBaseHasWidgets *outer$) {
  J2OBJC_CREATE_IMPL(ASBaseHasWidgets_LazyBaseWidget, initWithASBaseHasWidgets_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASBaseHasWidgets_LazyBaseWidget)
