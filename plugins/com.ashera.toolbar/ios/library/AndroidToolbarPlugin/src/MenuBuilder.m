//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidToolBar\src\main\java\androidx\appcompat\view\menu\MenuBuilder.java
//

#include "Drawable.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "MenuBuilder.h"
#include "MenuItem.h"
#include "MenuItemImpl.h"
#include "MenuPresenter.h"
#include "Resources.h"
#include "View.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/ref/WeakReference.h"
#include "java/util/ArrayList.h"

@class JavaUtilArrayList;
@protocol JavaLangCharSequence;


@interface ADXMenuBuilder () {
 @public
  ADResources *mResources_;
  jboolean mQwertyMode_;
  jboolean mShortcutsVisible_;
  JavaUtilArrayList *mItems_;
  JavaUtilArrayList *mVisibleItems_;
  jboolean mIsVisibleItemsStale_;
  JavaUtilArrayList *mActionItems_;
  JavaUtilArrayList *mNonActionItems_;
  jboolean mIsActionItemsStale_;
  jint mDefaultShowAsAction_;
  jboolean mPreventDispatchingItemsChanged_;
  jboolean mItemsChangedWhileDispatchPrevented_;
  jboolean mStructureChangedWhileDispatchPrevented_;
  jboolean mOptionalIconsVisible_;
  jboolean mIsClosing_;
  ADXMenuBuilder_CopyOnWriteArrayList *mPresenters_;
  ADXMenuItemImpl *mExpandedItem_;
  jboolean mGroupDividerEnabled_;
  jboolean mOverrideVisibleItems_;
}

- (ADXMenuItemImpl *)createNewMenuItemWithInt:(jint)group
                                      withInt:(jint)id_
                                      withInt:(jint)categoryOrder
                                      withInt:(jint)ordering
                     withJavaLangCharSequence:(id<JavaLangCharSequence>)title
                                      withInt:(jint)defaultShowAsAction;

+ (jint)getOrderingWithInt:(jint)categoryOrder;

+ (jint)findInsertIndexWithJavaUtilArrayList:(JavaUtilArrayList *)items
                                     withInt:(jint)ordering;

- (void)collapseItemActionViewWithADMenuItem:(id<ADMenuItem>)mExpandedItem;

@end

J2OBJC_FIELD_SETTER(ADXMenuBuilder, mResources_, ADResources *)
J2OBJC_FIELD_SETTER(ADXMenuBuilder, mItems_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ADXMenuBuilder, mVisibleItems_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ADXMenuBuilder, mActionItems_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ADXMenuBuilder, mNonActionItems_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ADXMenuBuilder, mPresenters_, ADXMenuBuilder_CopyOnWriteArrayList *)
J2OBJC_FIELD_SETTER(ADXMenuBuilder, mExpandedItem_, ADXMenuItemImpl *)

inline IOSIntArray *ADXMenuBuilder_get_sCategoryToOrder(void);
static IOSIntArray *ADXMenuBuilder_sCategoryToOrder;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXMenuBuilder, sCategoryToOrder, IOSIntArray *)

__attribute__((unused)) static ADXMenuItemImpl *ADXMenuBuilder_createNewMenuItemWithInt_withInt_withInt_withInt_withJavaLangCharSequence_withInt_(ADXMenuBuilder *self, jint group, jint id_, jint categoryOrder, jint ordering, id<JavaLangCharSequence> title, jint defaultShowAsAction);

__attribute__((unused)) static jint ADXMenuBuilder_getOrderingWithInt_(jint categoryOrder);

__attribute__((unused)) static jint ADXMenuBuilder_findInsertIndexWithJavaUtilArrayList_withInt_(JavaUtilArrayList *items, jint ordering);

__attribute__((unused)) static void ADXMenuBuilder_collapseItemActionViewWithADMenuItem_(ADXMenuBuilder *self, id<ADMenuItem> mExpandedItem);

@interface ADXMenuBuilder_SupportMenuItem : NSObject

@end

J2OBJC_INITIALIZED_DEFN(ADXMenuBuilder)

@implementation ADXMenuBuilder

- (id<ADMenuItem>)addInternalWithInt:(jint)group
                             withInt:(jint)id_
                             withInt:(jint)categoryOrder
            withJavaLangCharSequence:(id<JavaLangCharSequence>)title {
  jint ordering = ADXMenuBuilder_getOrderingWithInt_(categoryOrder);
  ADXMenuItemImpl *item = ADXMenuBuilder_createNewMenuItemWithInt_withInt_withInt_withInt_withJavaLangCharSequence_withInt_(self, group, id_, categoryOrder, ordering, title, mDefaultShowAsAction_);
  [((JavaUtilArrayList *) nil_chk(mItems_)) addWithInt:ADXMenuBuilder_findInsertIndexWithJavaUtilArrayList_withInt_(mItems_, ordering) withId:item];
  [self onItemsChangedWithBoolean:true];
  return item;
}

- (ADXMenuItemImpl *)createNewMenuItemWithInt:(jint)group
                                      withInt:(jint)id_
                                      withInt:(jint)categoryOrder
                                      withInt:(jint)ordering
                     withJavaLangCharSequence:(id<JavaLangCharSequence>)title
                                      withInt:(jint)defaultShowAsAction {
  return ADXMenuBuilder_createNewMenuItemWithInt_withInt_withInt_withInt_withJavaLangCharSequence_withInt_(self, group, id_, categoryOrder, ordering, title, defaultShowAsAction);
}

- (id<ADMenuItem>)addWithJavaLangCharSequence:(id<JavaLangCharSequence>)title {
  return [self addInternalWithInt:0 withInt:0 withInt:0 withJavaLangCharSequence:title];
}

- (id<ADMenuItem>)addWithInt:(jint)titleRes {
  return [self addInternalWithInt:0 withInt:0 withInt:0 withJavaLangCharSequence:[((ADResources *) nil_chk(mResources_)) getStringWithInt:titleRes]];
}

- (id<ADMenuItem>)addWithInt:(jint)group
                     withInt:(jint)id_
                     withInt:(jint)categoryOrder
    withJavaLangCharSequence:(id<JavaLangCharSequence>)title {
  return [self addInternalWithInt:group withInt:id_ withInt:categoryOrder withJavaLangCharSequence:title];
}

- (id<ADMenuItem>)addWithInt:(jint)group
                     withInt:(jint)id_
                     withInt:(jint)categoryOrder
                     withInt:(jint)title {
  return [self addInternalWithInt:group withInt:id_ withInt:categoryOrder withJavaLangCharSequence:[((ADResources *) nil_chk(mResources_)) getStringWithInt:title]];
}

- (void)clearAll {
  mPreventDispatchingItemsChanged_ = true;
  [self clear];
  [self clearHeader];
  [((ADXMenuBuilder_CopyOnWriteArrayList *) nil_chk(mPresenters_)) clear];
  mPreventDispatchingItemsChanged_ = false;
  mItemsChangedWhileDispatchPrevented_ = false;
  mStructureChangedWhileDispatchPrevented_ = false;
  [self onItemsChangedWithBoolean:true];
}

- (void)clear {
  if (mExpandedItem_ != nil) {
    ADXMenuBuilder_collapseItemActionViewWithADMenuItem_(self, mExpandedItem_);
  }
  [((JavaUtilArrayList *) nil_chk(mItems_)) clear];
  [self onItemsChangedWithBoolean:true];
}

+ (jint)getOrderingWithInt:(jint)categoryOrder {
  return ADXMenuBuilder_getOrderingWithInt_(categoryOrder);
}

+ (jint)findInsertIndexWithJavaUtilArrayList:(JavaUtilArrayList *)items
                                     withInt:(jint)ordering {
  return ADXMenuBuilder_findInsertIndexWithJavaUtilArrayList_withInt_(items, ordering);
}

- (JavaUtilArrayList *)getVisibleItems {
  if (!mIsVisibleItemsStale_) return mVisibleItems_;
  [((JavaUtilArrayList *) nil_chk(mVisibleItems_)) clear];
  jint itemsSize = [((JavaUtilArrayList *) nil_chk(mItems_)) size];
  ADXMenuItemImpl *item;
  for (jint i = 0; i < itemsSize; i++) {
    item = [((JavaUtilArrayList *) nil_chk(mItems_)) getWithInt:i];
    if ([((ADXMenuItemImpl *) nil_chk(item)) isVisible]) [((JavaUtilArrayList *) nil_chk(mVisibleItems_)) addWithId:item];
  }
  mIsVisibleItemsStale_ = false;
  mIsActionItemsStale_ = true;
  return mVisibleItems_;
}

- (void)flagActionItems {
  JavaUtilArrayList *visibleItems = [self getVisibleItems];
  if (!mIsActionItemsStale_) {
    return;
  }
  jboolean flagged = false;
  for (JavaLangRefWeakReference * __strong ref in nil_chk(mPresenters_)) {
    id<ADXMenuPresenter> presenter = [((JavaLangRefWeakReference *) nil_chk(ref)) get];
    if (presenter == nil) {
      [((ADXMenuBuilder_CopyOnWriteArrayList *) nil_chk(mPresenters_)) removeWithId:ref];
    }
    else {
      flagged |= [presenter flagActionItems];
    }
  }
  if (flagged) {
    [((JavaUtilArrayList *) nil_chk(mActionItems_)) clear];
    [((JavaUtilArrayList *) nil_chk(mNonActionItems_)) clear];
    jint itemsSize = [((JavaUtilArrayList *) nil_chk(visibleItems)) size];
    for (jint i = 0; i < itemsSize; i++) {
      ADXMenuItemImpl *item = JreRetainedLocalValue([visibleItems getWithInt:i]);
      if ([((ADXMenuItemImpl *) nil_chk(item)) isActionButton]) {
        [((JavaUtilArrayList *) nil_chk(mActionItems_)) addWithId:item];
      }
      else {
        [((JavaUtilArrayList *) nil_chk(mNonActionItems_)) addWithId:item];
      }
    }
  }
  else {
    [((JavaUtilArrayList *) nil_chk(mActionItems_)) clear];
    [((JavaUtilArrayList *) nil_chk(mNonActionItems_)) clear];
    [((JavaUtilArrayList *) nil_chk(mNonActionItems_)) addAllWithJavaUtilCollection:[self getVisibleItems]];
  }
  mIsActionItemsStale_ = false;
}

- (JavaUtilArrayList *)getActionItems {
  [self flagActionItems];
  return mActionItems_;
}

- (JavaUtilArrayList *)getNonActionItems {
  [self flagActionItems];
  return mNonActionItems_;
}

- (void)clearHeader {
  JreStrongAssign(&mHeaderIcon_, nil);
  JreStrongAssign(&mHeaderTitle_, nil);
  JreStrongAssign(&mHeaderView_, nil);
  [self onItemsChangedWithBoolean:false];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXMenuBuilder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)collapseItemActionViewWithADMenuItem:(id<ADMenuItem>)mExpandedItem {
  ADXMenuBuilder_collapseItemActionViewWithADMenuItem_(self, mExpandedItem);
}

- (void)setActionMenuPresenterWithADXMenuPresenter:(id<ADXMenuPresenter>)mPresenter {
  [((ADXMenuBuilder_CopyOnWriteArrayList *) nil_chk(mPresenters_)) addWithId:create_JavaLangRefWeakReference_initWithId_(mPresenter)];
}

- (void)onItemActionRequestChangedWithADMenuItem:(id<ADMenuItem>)menuItem {
}

- (void)onItemsChangedWithBoolean:(jboolean)changed {
}

- (void)dealloc {
  RELEASE_(mResources_);
  RELEASE_(mItems_);
  RELEASE_(mVisibleItems_);
  RELEASE_(mActionItems_);
  RELEASE_(mNonActionItems_);
  RELEASE_(mHeaderTitle_);
  RELEASE_(mHeaderIcon_);
  RELEASE_(mHeaderView_);
  RELEASE_(mPresenters_);
  RELEASE_(mExpandedItem_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LADMenuItem;", 0x4, 0, 1, -1, -1, -1, -1 },
    { NULL, "LADXMenuItemImpl;", 0x2, 2, 3, -1, -1, -1, -1 },
    { NULL, "LADMenuItem;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LADMenuItem;", 0x1, 4, 6, -1, -1, -1, -1 },
    { NULL, "LADMenuItem;", 0x1, 4, 1, -1, -1, -1, -1 },
    { NULL, "LADMenuItem;", 0x1, 4, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 8, 6, -1, -1, -1, -1 },
    { NULL, "I", 0xa, 9, 10, -1, 11, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 12, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 12, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x1, -1, -1, -1, 12, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 13, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 16, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 17, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 19, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(addInternalWithInt:withInt:withInt:withJavaLangCharSequence:);
  methods[1].selector = @selector(createNewMenuItemWithInt:withInt:withInt:withInt:withJavaLangCharSequence:withInt:);
  methods[2].selector = @selector(addWithJavaLangCharSequence:);
  methods[3].selector = @selector(addWithInt:);
  methods[4].selector = @selector(addWithInt:withInt:withInt:withJavaLangCharSequence:);
  methods[5].selector = @selector(addWithInt:withInt:withInt:withInt:);
  methods[6].selector = @selector(clearAll);
  methods[7].selector = @selector(clear);
  methods[8].selector = @selector(getOrderingWithInt:);
  methods[9].selector = @selector(findInsertIndexWithJavaUtilArrayList:withInt:);
  methods[10].selector = @selector(getVisibleItems);
  methods[11].selector = @selector(flagActionItems);
  methods[12].selector = @selector(getActionItems);
  methods[13].selector = @selector(getNonActionItems);
  methods[14].selector = @selector(clearHeader);
  methods[15].selector = @selector(init);
  methods[16].selector = @selector(collapseItemActionViewWithADMenuItem:);
  methods[17].selector = @selector(setActionMenuPresenterWithADXMenuPresenter:);
  methods[18].selector = @selector(onItemActionRequestChangedWithADMenuItem:);
  methods[19].selector = @selector(onItemsChangedWithBoolean:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sCategoryToOrder", "[I", .constantValue.asLong = 0, 0x1a, -1, 20, -1, -1 },
    { "mResources_", "LADResources;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mQwertyMode_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mShortcutsVisible_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mItems_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 21, -1 },
    { "mVisibleItems_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 21, -1 },
    { "mIsVisibleItemsStale_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mActionItems_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 21, -1 },
    { "mNonActionItems_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 21, -1 },
    { "mIsActionItemsStale_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mDefaultShowAsAction_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mHeaderTitle_", "LJavaLangCharSequence;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mHeaderIcon_", "LADDrawable;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mHeaderView_", "LADView;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "mPreventDispatchingItemsChanged_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mItemsChangedWhileDispatchPrevented_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mStructureChangedWhileDispatchPrevented_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mOptionalIconsVisible_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mIsClosing_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mPresenters_", "LADXMenuBuilder_CopyOnWriteArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 22, -1 },
    { "mExpandedItem_", "LADXMenuItemImpl;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mGroupDividerEnabled_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mOverrideVisibleItems_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "USER_MASK", "I", .constantValue.asInt = ADXMenuBuilder_USER_MASK, 0x18, -1, -1, -1, -1 },
    { "USER_SHIFT", "I", .constantValue.asInt = ADXMenuBuilder_USER_SHIFT, 0x18, -1, -1, -1, -1 },
    { "CATEGORY_MASK", "I", .constantValue.asInt = ADXMenuBuilder_CATEGORY_MASK, 0x18, -1, -1, -1, -1 },
    { "CATEGORY_SHIFT", "I", .constantValue.asInt = ADXMenuBuilder_CATEGORY_SHIFT, 0x18, -1, -1, -1, -1 },
    { "SUPPORTED_MODIFIERS_MASK", "I", .constantValue.asInt = ADXMenuBuilder_SUPPORTED_MODIFIERS_MASK, 0x18, -1, -1, -1, -1 },
    { "FLAG_KEEP_OPEN_ON_SUBMENU_OPENED", "I", .constantValue.asInt = ADXMenuBuilder_FLAG_KEEP_OPEN_ON_SUBMENU_OPENED, 0x18, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addInternal", "IIILJavaLangCharSequence;", "createNewMenuItem", "IIIILJavaLangCharSequence;I", "add", "LJavaLangCharSequence;", "I", "IIII", "getOrdering", "findInsertIndex", "LJavaUtilArrayList;I", "(Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;I)I", "()Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;", "collapseItemActionView", "LADMenuItem;", "setActionMenuPresenter", "LADXMenuPresenter;", "onItemActionRequestChanged", "onItemsChanged", "Z", &ADXMenuBuilder_sCategoryToOrder, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;", "Landroidx/appcompat/view/menu/MenuBuilder$CopyOnWriteArrayList<Ljava/lang/ref/WeakReference<Landroidx/appcompat/view/menu/MenuPresenter;>;>;", "LADXMenuBuilder_SupportMenuItem;LADXMenuBuilder_ContextMenu;LADXMenuBuilder_CopyOnWriteArrayList;" };
  static const J2ObjcClassInfo _ADXMenuBuilder = { "MenuBuilder", "androidx.appcompat.view.menu", ptrTable, methods, fields, 7, 0x1, 20, 29, -1, 23, -1, -1, -1 };
  return &_ADXMenuBuilder;
}

+ (void)initialize {
  if (self == [ADXMenuBuilder class]) {
    JreStrongAssignAndConsume(&ADXMenuBuilder_sCategoryToOrder, [IOSIntArray newArrayWithInts:(jint[]){ 1, 4, 5, 3, 2, 0 } count:6]);
    J2OBJC_SET_INITIALIZED(ADXMenuBuilder)
  }
}

@end

ADXMenuItemImpl *ADXMenuBuilder_createNewMenuItemWithInt_withInt_withInt_withInt_withJavaLangCharSequence_withInt_(ADXMenuBuilder *self, jint group, jint id_, jint categoryOrder, jint ordering, id<JavaLangCharSequence> title, jint defaultShowAsAction) {
  return create_ADXMenuItemImpl_initWithADXMenuBuilder_withInt_withInt_withInt_withInt_withJavaLangCharSequence_withInt_(self, group, id_, categoryOrder, ordering, title, defaultShowAsAction);
}

jint ADXMenuBuilder_getOrderingWithInt_(jint categoryOrder) {
  ADXMenuBuilder_initialize();
  jint index = JreRShift32((categoryOrder & ADXMenuBuilder_CATEGORY_MASK), ADXMenuBuilder_CATEGORY_SHIFT);
  if (index < 0 || index >= ((IOSIntArray *) nil_chk(ADXMenuBuilder_sCategoryToOrder))->size_) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"order does not contain a valid category.");
  }
  return (JreLShift32(IOSIntArray_Get(nil_chk(ADXMenuBuilder_sCategoryToOrder), index), ADXMenuBuilder_CATEGORY_SHIFT)) | (categoryOrder & ADXMenuBuilder_USER_MASK);
}

jint ADXMenuBuilder_findInsertIndexWithJavaUtilArrayList_withInt_(JavaUtilArrayList *items, jint ordering) {
  ADXMenuBuilder_initialize();
  for (jint i = [((JavaUtilArrayList *) nil_chk(items)) size] - 1; i >= 0; i--) {
    ADXMenuItemImpl *item = JreRetainedLocalValue([items getWithInt:i]);
    if ([((ADXMenuItemImpl *) nil_chk(item)) getOrdering] <= ordering) {
      return i + 1;
    }
  }
  return 0;
}

void ADXMenuBuilder_init(ADXMenuBuilder *self) {
  NSObject_init(self);
  self->mDefaultShowAsAction_ = ADMenuItem_SHOW_AS_ACTION_NEVER;
  self->mPreventDispatchingItemsChanged_ = false;
  self->mItemsChangedWhileDispatchPrevented_ = false;
  self->mStructureChangedWhileDispatchPrevented_ = false;
  self->mOptionalIconsVisible_ = false;
  self->mIsClosing_ = false;
  JreStrongAssignAndConsume(&self->mPresenters_, new_ADXMenuBuilder_CopyOnWriteArrayList_initWithADXMenuBuilder_(self));
  self->mGroupDividerEnabled_ = false;
  JreStrongAssign(&self->mResources_, nil);
  JreStrongAssignAndConsume(&self->mItems_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mVisibleItems_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mActionItems_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->mNonActionItems_, new_JavaUtilArrayList_init());
  self->mIsVisibleItemsStale_ = true;
}

ADXMenuBuilder *new_ADXMenuBuilder_init() {
  J2OBJC_NEW_IMPL(ADXMenuBuilder, init)
}

ADXMenuBuilder *create_ADXMenuBuilder_init() {
  J2OBJC_CREATE_IMPL(ADXMenuBuilder, init)
}

void ADXMenuBuilder_collapseItemActionViewWithADMenuItem_(ADXMenuBuilder *self, id<ADMenuItem> mExpandedItem) {
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXMenuBuilder)

@implementation ADXMenuBuilder_SupportMenuItem

+ (const J2ObjcClassInfo *)__metadata {
  static const void *ptrTable[] = { "LADXMenuBuilder;" };
  static const J2ObjcClassInfo _ADXMenuBuilder_SupportMenuItem = { "SupportMenuItem", "androidx.appcompat.view.menu", ptrTable, NULL, NULL, 7, 0x608, 0, 0, 0, -1, -1, -1, -1 };
  return &_ADXMenuBuilder_SupportMenuItem;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ADXMenuBuilder_SupportMenuItem)

@implementation ADXMenuBuilder_ContextMenu

- (instancetype)initWithADXMenuBuilder:(ADXMenuBuilder *)outer$ {
  ADXMenuBuilder_ContextMenu_initWithADXMenuBuilder_(self, outer$);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXMenuBuilder:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LADXMenuBuilder;" };
  static const J2ObjcClassInfo _ADXMenuBuilder_ContextMenu = { "ContextMenu", "androidx.appcompat.view.menu", ptrTable, methods, NULL, 7, 0x0, 1, 0, 0, -1, -1, -1, -1 };
  return &_ADXMenuBuilder_ContextMenu;
}

@end

void ADXMenuBuilder_ContextMenu_initWithADXMenuBuilder_(ADXMenuBuilder_ContextMenu *self, ADXMenuBuilder *outer$) {
  NSObject_init(self);
}

ADXMenuBuilder_ContextMenu *new_ADXMenuBuilder_ContextMenu_initWithADXMenuBuilder_(ADXMenuBuilder *outer$) {
  J2OBJC_NEW_IMPL(ADXMenuBuilder_ContextMenu, initWithADXMenuBuilder_, outer$)
}

ADXMenuBuilder_ContextMenu *create_ADXMenuBuilder_ContextMenu_initWithADXMenuBuilder_(ADXMenuBuilder *outer$) {
  J2OBJC_CREATE_IMPL(ADXMenuBuilder_ContextMenu, initWithADXMenuBuilder_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXMenuBuilder_ContextMenu)

@implementation ADXMenuBuilder_CopyOnWriteArrayList

- (instancetype)initWithADXMenuBuilder:(ADXMenuBuilder *)outer$ {
  ADXMenuBuilder_CopyOnWriteArrayList_initWithADXMenuBuilder_(self, outer$);
  return self;
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXMenuBuilder:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LADXMenuBuilder;", "<T:Ljava/lang/Object;>Ljava/util/ArrayList<TT;>;" };
  static const J2ObjcClassInfo _ADXMenuBuilder_CopyOnWriteArrayList = { "CopyOnWriteArrayList", "androidx.appcompat.view.menu", ptrTable, methods, NULL, 7, 0x0, 1, 0, 0, -1, -1, 1, -1 };
  return &_ADXMenuBuilder_CopyOnWriteArrayList;
}

@end

void ADXMenuBuilder_CopyOnWriteArrayList_initWithADXMenuBuilder_(ADXMenuBuilder_CopyOnWriteArrayList *self, ADXMenuBuilder *outer$) {
  JavaUtilArrayList_init(self);
}

ADXMenuBuilder_CopyOnWriteArrayList *new_ADXMenuBuilder_CopyOnWriteArrayList_initWithADXMenuBuilder_(ADXMenuBuilder *outer$) {
  J2OBJC_NEW_IMPL(ADXMenuBuilder_CopyOnWriteArrayList, initWithADXMenuBuilder_, outer$)
}

ADXMenuBuilder_CopyOnWriteArrayList *create_ADXMenuBuilder_CopyOnWriteArrayList_initWithADXMenuBuilder_(ADXMenuBuilder *outer$) {
  J2OBJC_CREATE_IMPL(ADXMenuBuilder_CopyOnWriteArrayList, initWithADXMenuBuilder_, outer$)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXMenuBuilder_CopyOnWriteArrayList)