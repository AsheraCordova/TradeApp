//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\com\google\android\collect\Lists.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "Lists.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"


@implementation ADLists

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADLists_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (JavaUtilArrayList *)newArrayList {
  return ADLists_newArrayList();
}

+ (JavaUtilArrayList *)newArrayListWithNSObjectArray:(IOSObjectArray *)elements {
  return ADLists_newArrayListWithNSObjectArray_(elements);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x9, -1, -1, -1, 0, -1, -1 },
    { NULL, "LJavaUtilArrayList;", 0x89, 1, 2, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(newArrayList);
  methods[2].selector = @selector(newArrayListWithNSObjectArray:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "<E:Ljava/lang/Object;>()Ljava/util/ArrayList<TE;>;", "newArrayList", "[LNSObject;", "<E:Ljava/lang/Object;>([TE;)Ljava/util/ArrayList<TE;>;" };
  static const J2ObjcClassInfo _ADLists = { "Lists", "r.com.google.android.collect", ptrTable, methods, NULL, 7, 0x1, 3, 0, -1, -1, -1, -1, -1 };
  return &_ADLists;
}

@end

void ADLists_init(ADLists *self) {
  NSObject_init(self);
}

ADLists *new_ADLists_init() {
  J2OBJC_NEW_IMPL(ADLists, init)
}

ADLists *create_ADLists_init() {
  J2OBJC_CREATE_IMPL(ADLists, init)
}

JavaUtilArrayList *ADLists_newArrayList() {
  ADLists_initialize();
  return create_JavaUtilArrayList_init();
}

JavaUtilArrayList *ADLists_newArrayListWithNSObjectArray_(IOSObjectArray *elements) {
  ADLists_initialize();
  jint capacity = JreIntDiv((((IOSObjectArray *) nil_chk(elements))->size_ * 110), 100) + 5;
  JavaUtilArrayList *list = create_JavaUtilArrayList_initWithInt_(capacity);
  JavaUtilCollections_addAllWithJavaUtilCollection_withNSObjectArray_(list, elements);
  return list;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADLists)