//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\database\Cursor.java
//

#include "Cursor.h"
#include "J2ObjC_source.h"


@implementation ADCursor

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADCursor_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)getColumnIndexWithNSString:(NSString *)string {
  return 0;
}

- (jint)getCount {
  return 0;
}

- (void)moveToFirst {
}

- (NSString *)getStringWithInt:(jint)columnIndex {
  return nil;
}

- (void)close {
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getColumnIndexWithNSString:);
  methods[2].selector = @selector(getCount);
  methods[3].selector = @selector(moveToFirst);
  methods[4].selector = @selector(getStringWithInt:);
  methods[5].selector = @selector(close);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getColumnIndex", "LNSString;", "getString", "I" };
  static const J2ObjcClassInfo _ADCursor = { "Cursor", "r.android.database", ptrTable, methods, NULL, 7, 0x1, 6, 0, -1, -1, -1, -1, -1 };
  return &_ADCursor;
}

@end

void ADCursor_init(ADCursor *self) {
  NSObject_init(self);
}

ADCursor *new_ADCursor_init() {
  J2OBJC_NEW_IMPL(ADCursor, init)
}

ADCursor *create_ADCursor_init() {
  J2OBJC_CREATE_IMPL(ADCursor, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADCursor)