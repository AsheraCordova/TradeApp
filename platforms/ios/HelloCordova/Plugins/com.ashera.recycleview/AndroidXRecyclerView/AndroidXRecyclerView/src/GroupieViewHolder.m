//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXRecyclerView\src\main\java\com\xwray\groupie\GroupieViewHolder.java
//

#include "GroupieViewHolder.h"
#include "Item.h"
#include "J2ObjC_source.h"
#include "OnItemClickListener.h"
#include "OnItemLongClickListener.h"
#include "RecyclerView.h"
#include "View.h"
#include "java/util/Map.h"


@interface ADXGroupieViewHolder () {
 @public
  ADXItem *item_;
  id<ADXOnItemClickListener> onItemClickListener_;
  id<ADXOnItemLongClickListener> onItemLongClickListener_;
  id<ADView_OnClickListener> onClickListener_;
  id<ADView_OnLongClickListener> onLongClickListener_;
}

@end

J2OBJC_FIELD_SETTER(ADXGroupieViewHolder, item_, ADXItem *)
J2OBJC_FIELD_SETTER(ADXGroupieViewHolder, onItemClickListener_, id<ADXOnItemClickListener>)
J2OBJC_FIELD_SETTER(ADXGroupieViewHolder, onItemLongClickListener_, id<ADXOnItemLongClickListener>)
J2OBJC_FIELD_SETTER(ADXGroupieViewHolder, onClickListener_, id<ADView_OnClickListener>)
J2OBJC_FIELD_SETTER(ADXGroupieViewHolder, onLongClickListener_, id<ADView_OnLongClickListener>)

@interface ADXGroupieViewHolder_1 : NSObject < ADView_OnClickListener > {
 @public
  ADXGroupieViewHolder *this$0_;
}

- (instancetype)initWithADXGroupieViewHolder:(ADXGroupieViewHolder *)outer$;

- (void)onClickWithADView:(ADView *)v;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXGroupieViewHolder_1)

__attribute__((unused)) static void ADXGroupieViewHolder_1_initWithADXGroupieViewHolder_(ADXGroupieViewHolder_1 *self, ADXGroupieViewHolder *outer$);

__attribute__((unused)) static ADXGroupieViewHolder_1 *new_ADXGroupieViewHolder_1_initWithADXGroupieViewHolder_(ADXGroupieViewHolder *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADXGroupieViewHolder_1 *create_ADXGroupieViewHolder_1_initWithADXGroupieViewHolder_(ADXGroupieViewHolder *outer$);

@interface ADXGroupieViewHolder_2 : NSObject < ADView_OnLongClickListener > {
 @public
  ADXGroupieViewHolder *this$0_;
}

- (instancetype)initWithADXGroupieViewHolder:(ADXGroupieViewHolder *)outer$;

- (jboolean)onLongClickWithADView:(ADView *)v;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXGroupieViewHolder_2)

__attribute__((unused)) static void ADXGroupieViewHolder_2_initWithADXGroupieViewHolder_(ADXGroupieViewHolder_2 *self, ADXGroupieViewHolder *outer$);

__attribute__((unused)) static ADXGroupieViewHolder_2 *new_ADXGroupieViewHolder_2_initWithADXGroupieViewHolder_(ADXGroupieViewHolder *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADXGroupieViewHolder_2 *create_ADXGroupieViewHolder_2_initWithADXGroupieViewHolder_(ADXGroupieViewHolder *outer$);

@implementation ADXGroupieViewHolder

- (instancetype)initWithADView:(ADView *)rootView {
  ADXGroupieViewHolder_initWithADView_(self, rootView);
  return self;
}

- (void)bindWithADXItem:(ADXItem *)item
withADXOnItemClickListener:(id<ADXOnItemClickListener>)onItemClickListener
withADXOnItemLongClickListener:(id<ADXOnItemLongClickListener>)onItemLongClickListener {
  JreStrongAssign(&self->item_, item);
  if (onItemClickListener != nil && [((ADXItem *) nil_chk(item)) isClickable]) {
    JreStrongAssign(&self->onItemClickListener_, onItemClickListener);
  }
  if (onItemLongClickListener != nil && [((ADXItem *) nil_chk(item)) isLongClickable]) {
    JreStrongAssign(&self->onItemLongClickListener_, onItemLongClickListener);
  }
}

- (void)unbind {
  if (onItemClickListener_ != nil && [((ADXItem *) nil_chk(item_)) isClickable]) {
  }
  if (onItemLongClickListener_ != nil && [((ADXItem *) nil_chk(item_)) isLongClickable]) {
  }
  JreStrongAssign(&self->item_, nil);
  JreStrongAssign(&self->onItemClickListener_, nil);
  JreStrongAssign(&self->onItemLongClickListener_, nil);
}

- (id<JavaUtilMap>)getExtras {
  return [((ADXItem *) nil_chk(item_)) getExtras];
}

- (jint)getSwipeDirs {
  return [((ADXItem *) nil_chk(item_)) getSwipeDirs];
}

- (jint)getDragDirs {
  return [((ADXItem *) nil_chk(item_)) getDragDirs];
}

- (ADXItem *)getItem {
  return item_;
}

- (ADView *)getRoot {
  return itemView_;
}

- (void)dealloc {
  RELEASE_(item_);
  RELEASE_(onItemClickListener_);
  RELEASE_(onItemLongClickListener_);
  RELEASE_(onClickListener_);
  RELEASE_(onLongClickListener_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x1, -1, -1, -1, 3, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADXItem;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADView;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADView:);
  methods[1].selector = @selector(bindWithADXItem:withADXOnItemClickListener:withADXOnItemLongClickListener:);
  methods[2].selector = @selector(unbind);
  methods[3].selector = @selector(getExtras);
  methods[4].selector = @selector(getSwipeDirs);
  methods[5].selector = @selector(getDragDirs);
  methods[6].selector = @selector(getItem);
  methods[7].selector = @selector(getRoot);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "item_", "LADXItem;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "onItemClickListener_", "LADXOnItemClickListener;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "onItemLongClickListener_", "LADXOnItemLongClickListener;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "onClickListener_", "LADView_OnClickListener;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "onLongClickListener_", "LADView_OnLongClickListener;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADView;", "bind", "LADXItem;LADXOnItemClickListener;LADXOnItemLongClickListener;", "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;" };
  static const J2ObjcClassInfo _ADXGroupieViewHolder = { "GroupieViewHolder", "com.xwray.groupie", ptrTable, methods, fields, 7, 0x1, 8, 5, -1, -1, -1, -1, -1 };
  return &_ADXGroupieViewHolder;
}

@end

void ADXGroupieViewHolder_initWithADView_(ADXGroupieViewHolder *self, ADView *rootView) {
  ADXRecyclerView_ViewHolder_initWithADView_(self, rootView);
  JreStrongAssignAndConsume(&self->onClickListener_, new_ADXGroupieViewHolder_1_initWithADXGroupieViewHolder_(self));
  JreStrongAssignAndConsume(&self->onLongClickListener_, new_ADXGroupieViewHolder_2_initWithADXGroupieViewHolder_(self));
}

ADXGroupieViewHolder *new_ADXGroupieViewHolder_initWithADView_(ADView *rootView) {
  J2OBJC_NEW_IMPL(ADXGroupieViewHolder, initWithADView_, rootView)
}

ADXGroupieViewHolder *create_ADXGroupieViewHolder_initWithADView_(ADView *rootView) {
  J2OBJC_CREATE_IMPL(ADXGroupieViewHolder, initWithADView_, rootView)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXGroupieViewHolder)

@implementation ADXGroupieViewHolder_1

- (instancetype)initWithADXGroupieViewHolder:(ADXGroupieViewHolder *)outer$ {
  ADXGroupieViewHolder_1_initWithADXGroupieViewHolder_(self, outer$);
  return self;
}

- (void)onClickWithADView:(ADView *)v {
  if (this$0_->onItemClickListener_ != nil && [this$0_ getBindingAdapterPosition] != ADXRecyclerView_NO_POSITION) {
    [this$0_->onItemClickListener_ onItemClickWithADXItem:[this$0_ getItem] withADView:v];
  }
}

- (void)dealloc {
  RELEASE_(this$0_);
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
  methods[0].selector = @selector(initWithADXGroupieViewHolder:);
  methods[1].selector = @selector(onClickWithADView:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LADXGroupieViewHolder;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXGroupieViewHolder;", "onClick", "LADView;" };
  static const J2ObjcClassInfo _ADXGroupieViewHolder_1 = { "", "com.xwray.groupie", ptrTable, methods, fields, 7, 0x8010, 2, 1, 0, -1, -1, -1, -1 };
  return &_ADXGroupieViewHolder_1;
}

@end

void ADXGroupieViewHolder_1_initWithADXGroupieViewHolder_(ADXGroupieViewHolder_1 *self, ADXGroupieViewHolder *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

ADXGroupieViewHolder_1 *new_ADXGroupieViewHolder_1_initWithADXGroupieViewHolder_(ADXGroupieViewHolder *outer$) {
  J2OBJC_NEW_IMPL(ADXGroupieViewHolder_1, initWithADXGroupieViewHolder_, outer$)
}

ADXGroupieViewHolder_1 *create_ADXGroupieViewHolder_1_initWithADXGroupieViewHolder_(ADXGroupieViewHolder *outer$) {
  J2OBJC_CREATE_IMPL(ADXGroupieViewHolder_1, initWithADXGroupieViewHolder_, outer$)
}

@implementation ADXGroupieViewHolder_2

- (instancetype)initWithADXGroupieViewHolder:(ADXGroupieViewHolder *)outer$ {
  ADXGroupieViewHolder_2_initWithADXGroupieViewHolder_(self, outer$);
  return self;
}

- (jboolean)onLongClickWithADView:(ADView *)v {
  if (this$0_->onItemLongClickListener_ != nil && [this$0_ getBindingAdapterPosition] != ADXRecyclerView_NO_POSITION) {
    return [this$0_->onItemLongClickListener_ onItemLongClickWithADXItem:[this$0_ getItem] withADView:v];
  }
  return false;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXGroupieViewHolder:);
  methods[1].selector = @selector(onLongClickWithADView:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LADXGroupieViewHolder;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXGroupieViewHolder;", "onLongClick", "LADView;" };
  static const J2ObjcClassInfo _ADXGroupieViewHolder_2 = { "", "com.xwray.groupie", ptrTable, methods, fields, 7, 0x8010, 2, 1, 0, -1, -1, -1, -1 };
  return &_ADXGroupieViewHolder_2;
}

@end

void ADXGroupieViewHolder_2_initWithADXGroupieViewHolder_(ADXGroupieViewHolder_2 *self, ADXGroupieViewHolder *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
}

ADXGroupieViewHolder_2 *new_ADXGroupieViewHolder_2_initWithADXGroupieViewHolder_(ADXGroupieViewHolder *outer$) {
  J2OBJC_NEW_IMPL(ADXGroupieViewHolder_2, initWithADXGroupieViewHolder_, outer$)
}

ADXGroupieViewHolder_2 *create_ADXGroupieViewHolder_2_initWithADXGroupieViewHolder_(ADXGroupieViewHolder *outer$) {
  J2OBJC_CREATE_IMPL(ADXGroupieViewHolder_2, initWithADXGroupieViewHolder_, outer$)
}