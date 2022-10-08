//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXRecyclerView\src\main\java\com\xwray\groupie\GroupDataObserver.java
//

#include "GroupDataObserver.h"
#include "J2ObjC_source.h"


@interface ADXGroupDataObserver : NSObject

@end

@implementation ADXGroupDataObserver

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 4, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 4, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 6, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 7, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 10, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 11, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 12, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(onChangedWithADXRVGroup:);
  methods[1].selector = @selector(onItemInsertedWithADXRVGroup:withInt:);
  methods[2].selector = @selector(onItemChangedWithADXRVGroup:withInt:);
  methods[3].selector = @selector(onItemChangedWithADXRVGroup:withInt:withId:);
  methods[4].selector = @selector(onItemRemovedWithADXRVGroup:withInt:);
  methods[5].selector = @selector(onItemRangeChangedWithADXRVGroup:withInt:withInt:);
  methods[6].selector = @selector(onItemRangeChangedWithADXRVGroup:withInt:withInt:withId:);
  methods[7].selector = @selector(onItemRangeInsertedWithADXRVGroup:withInt:withInt:);
  methods[8].selector = @selector(onItemRangeRemovedWithADXRVGroup:withInt:withInt:);
  methods[9].selector = @selector(onItemMovedWithADXRVGroup:withInt:withInt:);
  methods[10].selector = @selector(onDataSetInvalidated);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "onChanged", "LADXRVGroup;", "onItemInserted", "LADXRVGroup;I", "onItemChanged", "LADXRVGroup;ILNSObject;", "onItemRemoved", "onItemRangeChanged", "LADXRVGroup;II", "LADXRVGroup;IILNSObject;", "onItemRangeInserted", "onItemRangeRemoved", "onItemMoved" };
  static const J2ObjcClassInfo _ADXGroupDataObserver = { "GroupDataObserver", "com.xwray.groupie", ptrTable, methods, NULL, 7, 0x609, 11, 0, -1, -1, -1, -1, -1 };
  return &_ADXGroupDataObserver;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ADXGroupDataObserver)