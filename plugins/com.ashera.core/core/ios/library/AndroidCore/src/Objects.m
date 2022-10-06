//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\util\Objects.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "Objects.h"
#include "java/lang/NullPointerException.h"
#include "java/util/Arrays.h"
#include "java/util/Comparator.h"


@interface ADObjects ()

- (instancetype)init;

@end

__attribute__((unused)) static void ADObjects_init(ADObjects *self);

__attribute__((unused)) static ADObjects *new_ADObjects_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADObjects *create_ADObjects_init(void);

@implementation ADObjects

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADObjects_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)compareWithId:(id)a
               withId:(id)b
withJavaUtilComparator:(id<JavaUtilComparator>)c {
  return ADObjects_compareWithId_withId_withJavaUtilComparator_(a, b, c);
}

+ (jboolean)deepEqualsWithId:(id)a
                      withId:(id)b {
  return ADObjects_deepEqualsWithId_withId_(a, b);
}

+ (jboolean)equalsWithId:(id)a
                  withId:(id)b {
  return ADObjects_equalsWithId_withId_(a, b);
}

+ (jint)hash__WithNSObjectArray:(IOSObjectArray *)values {
  return ADObjects_hash__WithNSObjectArray_(values);
}

+ (jint)hashCodeWithId:(id)o {
  return ADObjects_hashCodeWithId_(o);
}

+ (id)requireNonNullWithId:(id)o {
  return ADObjects_requireNonNullWithId_(o);
}

+ (id)requireNonNullWithId:(id)o
              withNSString:(NSString *)message {
  return ADObjects_requireNonNullWithId_withNSString_(o, message);
}

+ (NSString *)toStringWithId:(id)o {
  return ADObjects_toStringWithId_(o);
}

+ (NSString *)toStringWithId:(id)o
                withNSString:(NSString *)nullString {
  return ADObjects_toStringWithId_withNSString_(o, nullString);
}

+ (jboolean)equalWithId:(id)a
                 withId:(id)b {
  return ADObjects_equalWithId_withId_(a, b);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "Z", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 5, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x89, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 8, 9, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 10, 9, -1, 11, -1, -1 },
    { NULL, "LNSObject;", 0x9, 10, 12, -1, 13, -1, -1 },
    { NULL, "LNSString;", 0x9, 14, 9, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 14, 12, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 15, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(compareWithId:withId:withJavaUtilComparator:);
  methods[2].selector = @selector(deepEqualsWithId:withId:);
  methods[3].selector = @selector(equalsWithId:withId:);
  methods[4].selector = @selector(hash__WithNSObjectArray:);
  methods[5].selector = @selector(hashCodeWithId:);
  methods[6].selector = @selector(requireNonNullWithId:);
  methods[7].selector = @selector(requireNonNullWithId:withNSString:);
  methods[8].selector = @selector(toStringWithId:);
  methods[9].selector = @selector(toStringWithId:withNSString:);
  methods[10].selector = @selector(equalWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "compare", "LNSObject;LNSObject;LJavaUtilComparator;", "<T:Ljava/lang/Object;>(TT;TT;Ljava/util/Comparator<-TT;>;)I", "deepEquals", "LNSObject;LNSObject;", "equals", "hash", "[LNSObject;", "hashCode", "LNSObject;", "requireNonNull", "<T:Ljava/lang/Object;>(TT;)TT;", "LNSObject;LNSString;", "<T:Ljava/lang/Object;>(TT;Ljava/lang/String;)TT;", "toString", "equal" };
  static const J2ObjcClassInfo _ADObjects = { "Objects", "r.android.util", ptrTable, methods, NULL, 7, 0x11, 11, 0, -1, -1, -1, -1, -1 };
  return &_ADObjects;
}

@end

void ADObjects_init(ADObjects *self) {
  NSObject_init(self);
}

ADObjects *new_ADObjects_init() {
  J2OBJC_NEW_IMPL(ADObjects, init)
}

ADObjects *create_ADObjects_init() {
  J2OBJC_CREATE_IMPL(ADObjects, init)
}

jint ADObjects_compareWithId_withId_withJavaUtilComparator_(id a, id b, id<JavaUtilComparator> c) {
  ADObjects_initialize();
  if (a == b) {
    return 0;
  }
  return [((id<JavaUtilComparator>) nil_chk(c)) compareWithId:a withId:b];
}

jboolean ADObjects_deepEqualsWithId_withId_(id a, id b) {
  ADObjects_initialize();
  if (a == nil || b == nil) {
    return a == b;
  }
  else if ([IOSClass_arrayType(NSObject_class_(), 1) isInstance:a] && [IOSClass_arrayType(NSObject_class_(), 1) isInstance:b]) {
    return JavaUtilArrays_deepEqualsWithNSObjectArray_withNSObjectArray_((IOSObjectArray *) cast_check(a, IOSClass_arrayType(NSObject_class_(), 1)), (IOSObjectArray *) cast_check(b, IOSClass_arrayType(NSObject_class_(), 1)));
  }
  else if ([a isKindOfClass:[IOSBooleanArray class]] && [b isKindOfClass:[IOSBooleanArray class]]) {
    return JavaUtilArrays_equalsWithBooleanArray_withBooleanArray_((IOSBooleanArray *) cast_chk(a, [IOSBooleanArray class]), (IOSBooleanArray *) cast_chk(b, [IOSBooleanArray class]));
  }
  else if ([a isKindOfClass:[IOSByteArray class]] && [b isKindOfClass:[IOSByteArray class]]) {
    return JavaUtilArrays_equalsWithByteArray_withByteArray_((IOSByteArray *) cast_chk(a, [IOSByteArray class]), (IOSByteArray *) cast_chk(b, [IOSByteArray class]));
  }
  else if ([a isKindOfClass:[IOSCharArray class]] && [b isKindOfClass:[IOSCharArray class]]) {
    return JavaUtilArrays_equalsWithCharArray_withCharArray_((IOSCharArray *) cast_chk(a, [IOSCharArray class]), (IOSCharArray *) cast_chk(b, [IOSCharArray class]));
  }
  else if ([a isKindOfClass:[IOSDoubleArray class]] && [b isKindOfClass:[IOSDoubleArray class]]) {
    return JavaUtilArrays_equalsWithDoubleArray_withDoubleArray_((IOSDoubleArray *) cast_chk(a, [IOSDoubleArray class]), (IOSDoubleArray *) cast_chk(b, [IOSDoubleArray class]));
  }
  else if ([a isKindOfClass:[IOSFloatArray class]] && [b isKindOfClass:[IOSFloatArray class]]) {
    return JavaUtilArrays_equalsWithFloatArray_withFloatArray_((IOSFloatArray *) cast_chk(a, [IOSFloatArray class]), (IOSFloatArray *) cast_chk(b, [IOSFloatArray class]));
  }
  else if ([a isKindOfClass:[IOSIntArray class]] && [b isKindOfClass:[IOSIntArray class]]) {
    return JavaUtilArrays_equalsWithIntArray_withIntArray_((IOSIntArray *) cast_chk(a, [IOSIntArray class]), (IOSIntArray *) cast_chk(b, [IOSIntArray class]));
  }
  else if ([a isKindOfClass:[IOSLongArray class]] && [b isKindOfClass:[IOSLongArray class]]) {
    return JavaUtilArrays_equalsWithLongArray_withLongArray_((IOSLongArray *) cast_chk(a, [IOSLongArray class]), (IOSLongArray *) cast_chk(b, [IOSLongArray class]));
  }
  else if ([a isKindOfClass:[IOSShortArray class]] && [b isKindOfClass:[IOSShortArray class]]) {
    return JavaUtilArrays_equalsWithShortArray_withShortArray_((IOSShortArray *) cast_chk(a, [IOSShortArray class]), (IOSShortArray *) cast_chk(b, [IOSShortArray class]));
  }
  return [a isEqual:b];
}

jboolean ADObjects_equalsWithId_withId_(id a, id b) {
  ADObjects_initialize();
  return (a == nil) ? (b == nil) : [nil_chk(a) isEqual:b];
}

jint ADObjects_hash__WithNSObjectArray_(IOSObjectArray *values) {
  ADObjects_initialize();
  return JavaUtilArrays_hashCodeWithNSObjectArray_(values);
}

jint ADObjects_hashCodeWithId_(id o) {
  ADObjects_initialize();
  return (o == nil) ? 0 : ((jint) [nil_chk(o) hash]);
}

id ADObjects_requireNonNullWithId_(id o) {
  ADObjects_initialize();
  if (o == nil) {
    @throw create_JavaLangNullPointerException_init();
  }
  return o;
}

id ADObjects_requireNonNullWithId_withNSString_(id o, NSString *message) {
  ADObjects_initialize();
  if (o == nil) {
    @throw create_JavaLangNullPointerException_initWithNSString_(message);
  }
  return o;
}

NSString *ADObjects_toStringWithId_(id o) {
  ADObjects_initialize();
  return (o == nil) ? @"null" : [nil_chk(o) description];
}

NSString *ADObjects_toStringWithId_withNSString_(id o, NSString *nullString) {
  ADObjects_initialize();
  return (o == nil) ? nullString : [nil_chk(o) description];
}

jboolean ADObjects_equalWithId_withId_(id a, id b) {
  ADObjects_initialize();
  return a == b || (a != nil && [a isEqual:b]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADObjects)
