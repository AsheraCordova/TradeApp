//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\annotation\NonNull.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "NonNull.h"


@implementation ADNonNull

- (IOSClass *)annotationType {
  return ADNonNull_class_();
}

- (NSString *)description {
  return @"@r.android.annotation.NonNull()";
}

- (jboolean)isEqual:(id)obj {
  return JreAnnotationEquals(self, obj);
}

- (NSUInteger)hash {
  return JreAnnotationHashCode(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcClassInfo _ADNonNull = { "NonNull", "r.android.annotation", NULL, NULL, NULL, 7, 0x2609, 0, 0, -1, -1, -1, -1, -1 };
  return &_ADNonNull;
}

@end

id<ADNonNull> create_ADNonNull() {
  ADNonNull *self = AUTORELEASE([[ADNonNull alloc] init]);
  return self;
}

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ADNonNull)