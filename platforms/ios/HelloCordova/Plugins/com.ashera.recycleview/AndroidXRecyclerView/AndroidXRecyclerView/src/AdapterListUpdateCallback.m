//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXRecyclerView\src\main\java\androidx\recyclerview\widget\AdapterListUpdateCallback.java
//

#include "AdapterListUpdateCallback.h"
#include "J2ObjC_source.h"
#include "RecyclerView.h"


@interface ADXAdapterListUpdateCallback () {
 @public
  ADXRecyclerView_Adapter *mAdapter_;
}

@end

J2OBJC_FIELD_SETTER(ADXAdapterListUpdateCallback, mAdapter_, ADXRecyclerView_Adapter *)

@implementation ADXAdapterListUpdateCallback

- (instancetype)initWithADXRecyclerView_Adapter:(ADXRecyclerView_Adapter *)adapter {
  ADXAdapterListUpdateCallback_initWithADXRecyclerView_Adapter_(self, adapter);
  return self;
}

- (void)onInsertedWithInt:(jint)position
                  withInt:(jint)count {
  [((ADXRecyclerView_Adapter *) nil_chk(mAdapter_)) notifyItemRangeInsertedWithInt:position withInt:count];
}

- (void)onRemovedWithInt:(jint)position
                 withInt:(jint)count {
  [((ADXRecyclerView_Adapter *) nil_chk(mAdapter_)) notifyItemRangeRemovedWithInt:position withInt:count];
}

- (void)onMovedWithInt:(jint)fromPosition
               withInt:(jint)toPosition {
  [((ADXRecyclerView_Adapter *) nil_chk(mAdapter_)) notifyItemMovedWithInt:fromPosition withInt:toPosition];
}

- (void)onChangedWithInt:(jint)position
                 withInt:(jint)count
                  withId:(id)payload {
  [((ADXRecyclerView_Adapter *) nil_chk(mAdapter_)) notifyItemRangeChangedWithInt:position withInt:count withId:payload];
}

- (void)dealloc {
  RELEASE_(mAdapter_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADXRecyclerView_Adapter:);
  methods[1].selector = @selector(onInsertedWithInt:withInt:);
  methods[2].selector = @selector(onRemovedWithInt:withInt:);
  methods[3].selector = @selector(onMovedWithInt:withInt:);
  methods[4].selector = @selector(onChangedWithInt:withInt:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mAdapter_", "LADXRecyclerView_Adapter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADXRecyclerView_Adapter;", "onInserted", "II", "onRemoved", "onMoved", "onChanged", "IILNSObject;" };
  static const J2ObjcClassInfo _ADXAdapterListUpdateCallback = { "AdapterListUpdateCallback", "androidx.recyclerview.widget", ptrTable, methods, fields, 7, 0x11, 5, 1, -1, -1, -1, -1, -1 };
  return &_ADXAdapterListUpdateCallback;
}

@end

void ADXAdapterListUpdateCallback_initWithADXRecyclerView_Adapter_(ADXAdapterListUpdateCallback *self, ADXRecyclerView_Adapter *adapter) {
  NSObject_init(self);
  JreStrongAssign(&self->mAdapter_, adapter);
}

ADXAdapterListUpdateCallback *new_ADXAdapterListUpdateCallback_initWithADXRecyclerView_Adapter_(ADXRecyclerView_Adapter *adapter) {
  J2OBJC_NEW_IMPL(ADXAdapterListUpdateCallback, initWithADXRecyclerView_Adapter_, adapter)
}

ADXAdapterListUpdateCallback *create_ADXAdapterListUpdateCallback_initWithADXRecyclerView_Adapter_(ADXRecyclerView_Adapter *adapter) {
  J2OBJC_CREATE_IMPL(ADXAdapterListUpdateCallback, initWithADXRecyclerView_Adapter_, adapter)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXAdapterListUpdateCallback)
