//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXRecyclerView\src\main\java\com\xwray\groupie\UpdatingGroup.java
//

#include "DiffUtil.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "Item.h"
#include "J2ObjC_source.h"
#include "ListUpdateCallback.h"
#include "NestedGroup.h"
#include "RVGroup.h"
#include "UpdatingGroup.h"
#include "java/lang/Deprecated.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@protocol JavaUtilList;


@interface ADXUpdatingGroup () {
 @public
  id<ADXListUpdateCallback> listUpdateCallback_;
  id<JavaUtilList> items_;
}

@end

J2OBJC_FIELD_SETTER(ADXUpdatingGroup, listUpdateCallback_, id<ADXListUpdateCallback>)
J2OBJC_FIELD_SETTER(ADXUpdatingGroup, items_, id<JavaUtilList>)

__attribute__((unused)) static IOSObjectArray *ADXUpdatingGroup__Annotations$0(void);

@interface ADXUpdatingGroup_1 : NSObject < ADXListUpdateCallback > {
 @public
  ADXUpdatingGroup *this$0_;
}

- (instancetype)initWithADXUpdatingGroup:(ADXUpdatingGroup *)outer$;

- (void)onInsertedWithInt:(jint)position
                  withInt:(jint)count;

- (void)onRemovedWithInt:(jint)position
                 withInt:(jint)count;

- (void)onMovedWithInt:(jint)fromPosition
               withInt:(jint)toPosition;

- (void)onChangedWithInt:(jint)position
                 withInt:(jint)count
                  withId:(id)payload;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXUpdatingGroup_1)

__attribute__((unused)) static void ADXUpdatingGroup_1_initWithADXUpdatingGroup_(ADXUpdatingGroup_1 *self, ADXUpdatingGroup *outer$);

__attribute__((unused)) static ADXUpdatingGroup_1 *new_ADXUpdatingGroup_1_initWithADXUpdatingGroup_(ADXUpdatingGroup *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADXUpdatingGroup_1 *create_ADXUpdatingGroup_1_initWithADXUpdatingGroup_(ADXUpdatingGroup *outer$);

@interface ADXUpdatingGroup_UpdatingCallback : ADXDiffUtil_Callback {
 @public
  ADXUpdatingGroup *this$0_;
  id<JavaUtilList> newList_;
}

- (instancetype)initWithADXUpdatingGroup:(ADXUpdatingGroup *)outer$
                        withJavaUtilList:(id<JavaUtilList>)newList;

- (jint)getOldListSize;

- (jint)getNewListSize;

- (jboolean)areItemsTheSameWithInt:(jint)oldItemPosition
                           withInt:(jint)newItemPosition;

- (jboolean)areContentsTheSameWithInt:(jint)oldItemPosition
                              withInt:(jint)newItemPosition;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXUpdatingGroup_UpdatingCallback)

J2OBJC_FIELD_SETTER(ADXUpdatingGroup_UpdatingCallback, newList_, id<JavaUtilList>)

__attribute__((unused)) static void ADXUpdatingGroup_UpdatingCallback_initWithADXUpdatingGroup_withJavaUtilList_(ADXUpdatingGroup_UpdatingCallback *self, ADXUpdatingGroup *outer$, id<JavaUtilList> newList);

__attribute__((unused)) static ADXUpdatingGroup_UpdatingCallback *new_ADXUpdatingGroup_UpdatingCallback_initWithADXUpdatingGroup_withJavaUtilList_(ADXUpdatingGroup *outer$, id<JavaUtilList> newList) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADXUpdatingGroup_UpdatingCallback *create_ADXUpdatingGroup_UpdatingCallback_initWithADXUpdatingGroup_withJavaUtilList_(ADXUpdatingGroup *outer$, id<JavaUtilList> newList);

J2OBJC_TYPE_LITERAL_HEADER(ADXUpdatingGroup_UpdatingCallback)

@implementation ADXUpdatingGroup

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXUpdatingGroup_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)updateWithJavaUtilList:(id<JavaUtilList>)newItems {
  ADXDiffUtil_DiffResult *diffResult = ADXDiffUtil_calculateDiffWithADXDiffUtil_Callback_(create_ADXUpdatingGroup_UpdatingCallback_initWithADXUpdatingGroup_withJavaUtilList_(self, newItems));
  [super removeAllWithJavaUtilCollection:items_];
  [((id<JavaUtilList>) nil_chk(items_)) clear];
  [super addAllWithJavaUtilCollection:newItems];
  [((id<JavaUtilList>) nil_chk(items_)) addAllWithJavaUtilCollection:newItems];
  [((ADXDiffUtil_DiffResult *) nil_chk(diffResult)) dispatchUpdatesToWithADXListUpdateCallback:listUpdateCallback_];
}

- (id<ADXRVGroup>)getGroupWithInt:(jint)position {
  return [((id<JavaUtilList>) nil_chk(items_)) getWithInt:position];
}

- (jint)getGroupCount {
  return [((id<JavaUtilList>) nil_chk(items_)) size];
}

- (jint)getPositionWithADXRVGroup:(id<ADXRVGroup>)group {
  if ([group isKindOfClass:[ADXItem class]]) {
    return [((id<JavaUtilList>) nil_chk(items_)) indexOfWithId:group];
  }
  else {
    return -1;
  }
}

- (void)dealloc {
  RELEASE_(listUpdateCallback_);
  RELEASE_(items_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, 2, -1, -1 },
    { NULL, "LADXRVGroup;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(updateWithJavaUtilList:);
  methods[2].selector = @selector(getGroupWithInt:);
  methods[3].selector = @selector(getGroupCount);
  methods[4].selector = @selector(getPositionWithADXRVGroup:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "listUpdateCallback_", "LADXListUpdateCallback;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "items_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "update", "LJavaUtilList;", "(Ljava/util/List<+Lcom/xwray/groupie/Item;>;)V", "getGroup", "I", "getPosition", "LADXRVGroup;", "Ljava/util/List<Lcom/xwray/groupie/Item;>;", "LADXUpdatingGroup_UpdatingCallback;", (void *)&ADXUpdatingGroup__Annotations$0 };
  static const J2ObjcClassInfo _ADXUpdatingGroup = { "UpdatingGroup", "com.xwray.groupie", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, 8, -1, -1, 9 };
  return &_ADXUpdatingGroup;
}

@end

void ADXUpdatingGroup_init(ADXUpdatingGroup *self) {
  ADXNestedGroup_init(self);
  JreStrongAssignAndConsume(&self->listUpdateCallback_, new_ADXUpdatingGroup_1_initWithADXUpdatingGroup_(self));
  JreStrongAssignAndConsume(&self->items_, new_JavaUtilArrayList_init());
}

ADXUpdatingGroup *new_ADXUpdatingGroup_init() {
  J2OBJC_NEW_IMPL(ADXUpdatingGroup, init)
}

ADXUpdatingGroup *create_ADXUpdatingGroup_init() {
  J2OBJC_CREATE_IMPL(ADXUpdatingGroup, init)
}

IOSObjectArray *ADXUpdatingGroup__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXUpdatingGroup)

@implementation ADXUpdatingGroup_1

- (instancetype)initWithADXUpdatingGroup:(ADXUpdatingGroup *)outer$ {
  ADXUpdatingGroup_1_initWithADXUpdatingGroup_(self, outer$);
  return self;
}

- (void)onInsertedWithInt:(jint)position
                  withInt:(jint)count {
  [this$0_ notifyItemRangeInsertedWithInt:position withInt:count];
}

- (void)onRemovedWithInt:(jint)position
                 withInt:(jint)count {
  [this$0_ notifyItemRangeRemovedWithInt:position withInt:count];
}

- (void)onMovedWithInt:(jint)fromPosition
               withInt:(jint)toPosition {
  [this$0_ notifyItemMovedWithInt:fromPosition withInt:toPosition];
}

- (void)onChangedWithInt:(jint)position
                 withInt:(jint)count
                  withId:(id)payload {
  [this$0_ notifyItemRangeChangedWithInt:position withInt:count];
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXUpdatingGroup:);
  methods[1].selector = @selector(onInsertedWithInt:withInt:);
  methods[2].selector = @selector(onRemovedWithInt:withInt:);
  methods[3].selector = @selector(onMovedWithInt:withInt:);
  methods[4].selector = @selector(onChangedWithInt:withInt:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LADXUpdatingGroup;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXUpdatingGroup;", "onInserted", "II", "onRemoved", "onMoved", "onChanged", "IILNSObject;" };
  static const J2ObjcClassInfo _ADXUpdatingGroup_1 = { "", "com.xwray.groupie", ptrTable, methods, fields, 7, 0x8010, 5, 1, 0, -1, -1, -1, -1 };
  return &_ADXUpdatingGroup_1;
}

@end

void ADXUpdatingGroup_1_initWithADXUpdatingGroup_(ADXUpdatingGroup_1 *self, ADXUpdatingGroup *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

ADXUpdatingGroup_1 *new_ADXUpdatingGroup_1_initWithADXUpdatingGroup_(ADXUpdatingGroup *outer$) {
  J2OBJC_NEW_IMPL(ADXUpdatingGroup_1, initWithADXUpdatingGroup_, outer$)
}

ADXUpdatingGroup_1 *create_ADXUpdatingGroup_1_initWithADXUpdatingGroup_(ADXUpdatingGroup *outer$) {
  J2OBJC_CREATE_IMPL(ADXUpdatingGroup_1, initWithADXUpdatingGroup_, outer$)
}

@implementation ADXUpdatingGroup_UpdatingCallback

- (instancetype)initWithADXUpdatingGroup:(ADXUpdatingGroup *)outer$
                        withJavaUtilList:(id<JavaUtilList>)newList {
  ADXUpdatingGroup_UpdatingCallback_initWithADXUpdatingGroup_withJavaUtilList_(self, outer$, newList);
  return self;
}

- (jint)getOldListSize {
  return [((id<JavaUtilList>) nil_chk(this$0_->items_)) size];
}

- (jint)getNewListSize {
  return [((id<JavaUtilList>) nil_chk(newList_)) size];
}

- (jboolean)areItemsTheSameWithInt:(jint)oldItemPosition
                           withInt:(jint)newItemPosition {
  ADXItem *oldItem = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(this$0_->items_)) getWithInt:oldItemPosition]);
  ADXItem *newItem = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(newList_)) getWithInt:newItemPosition]);
  if ([((ADXItem *) nil_chk(oldItem)) getViewType] != [((ADXItem *) nil_chk(newItem)) getViewType]) {
    return false;
  }
  return [oldItem getId] == [newItem getId];
}

- (jboolean)areContentsTheSameWithInt:(jint)oldItemPosition
                              withInt:(jint)newItemPosition {
  ADXItem *oldItem = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(this$0_->items_)) getWithInt:oldItemPosition]);
  ADXItem *newItem = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(newList_)) getWithInt:newItemPosition]);
  return [((ADXItem *) nil_chk(oldItem)) hasSameContentAsWithADXItem:newItem];
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(newList_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXUpdatingGroup:withJavaUtilList:);
  methods[1].selector = @selector(getOldListSize);
  methods[2].selector = @selector(getNewListSize);
  methods[3].selector = @selector(areItemsTheSameWithInt:withInt:);
  methods[4].selector = @selector(areContentsTheSameWithInt:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LADXUpdatingGroup;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "newList_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "LADXUpdatingGroup;LJavaUtilList;", "(Ljava/util/List<+Lcom/xwray/groupie/Item;>;)V", "areItemsTheSame", "II", "areContentsTheSame", "Ljava/util/List<+Lcom/xwray/groupie/Item;>;", "LADXUpdatingGroup;" };
  static const J2ObjcClassInfo _ADXUpdatingGroup_UpdatingCallback = { "UpdatingCallback", "com.xwray.groupie", ptrTable, methods, fields, 7, 0x2, 5, 2, 6, -1, -1, -1, -1 };
  return &_ADXUpdatingGroup_UpdatingCallback;
}

@end

void ADXUpdatingGroup_UpdatingCallback_initWithADXUpdatingGroup_withJavaUtilList_(ADXUpdatingGroup_UpdatingCallback *self, ADXUpdatingGroup *outer$, id<JavaUtilList> newList) {
  JreStrongAssign(&self->this$0_, outer$);
  ADXDiffUtil_Callback_init(self);
  JreStrongAssign(&self->newList_, newList);
}

ADXUpdatingGroup_UpdatingCallback *new_ADXUpdatingGroup_UpdatingCallback_initWithADXUpdatingGroup_withJavaUtilList_(ADXUpdatingGroup *outer$, id<JavaUtilList> newList) {
  J2OBJC_NEW_IMPL(ADXUpdatingGroup_UpdatingCallback, initWithADXUpdatingGroup_withJavaUtilList_, outer$, newList)
}

ADXUpdatingGroup_UpdatingCallback *create_ADXUpdatingGroup_UpdatingCallback_initWithADXUpdatingGroup_withJavaUtilList_(ADXUpdatingGroup *outer$, id<JavaUtilList> newList) {
  J2OBJC_CREATE_IMPL(ADXUpdatingGroup_UpdatingCallback, initWithADXUpdatingGroup_withJavaUtilList_, outer$, newList)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXUpdatingGroup_UpdatingCallback)