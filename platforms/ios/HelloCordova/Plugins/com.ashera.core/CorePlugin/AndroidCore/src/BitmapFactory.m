//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\graphics\BitmapFactory.java
//

#include "Bitmap.h"
#include "BitmapFactory.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "PluginInvoker.h"
#include "java/io/InputStream.h"


@implementation ADBitmapFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADBitmapFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<ADBitmap>)decodeStreamWithJavaIoInputStream:(JavaIoInputStream *)stream
                                           withId:(id)object
                      withADBitmapFactory_Options:(ADBitmapFactory_Options *)options {
  return ADBitmapFactory_decodeStreamWithJavaIoInputStream_withId_withADBitmapFactory_Options_(stream, object, options);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LADBitmap;", 0x9, 0, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(decodeStreamWithJavaIoInputStream:withId:withADBitmapFactory_Options:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "decodeStream", "LJavaIoInputStream;LNSObject;LADBitmapFactory_Options;", "LADBitmapFactory_Options;" };
  static const J2ObjcClassInfo _ADBitmapFactory = { "BitmapFactory", "r.android.graphics", ptrTable, methods, NULL, 7, 0x1, 2, 0, -1, 2, -1, -1, -1 };
  return &_ADBitmapFactory;
}

@end

void ADBitmapFactory_init(ADBitmapFactory *self) {
  NSObject_init(self);
}

ADBitmapFactory *new_ADBitmapFactory_init() {
  J2OBJC_NEW_IMPL(ADBitmapFactory, init)
}

ADBitmapFactory *create_ADBitmapFactory_init() {
  J2OBJC_CREATE_IMPL(ADBitmapFactory, init)
}

id<ADBitmap> ADBitmapFactory_decodeStreamWithJavaIoInputStream_withId_withADBitmapFactory_Options_(JavaIoInputStream *stream, id object, ADBitmapFactory_Options *options) {
  ADBitmapFactory_initialize();
  return (id<ADBitmap>) cast_check(ASPluginInvoker_decodeBitmapStreamWithJavaIoInputStream_withId_(stream, options), ADBitmap_class_());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADBitmapFactory)

@implementation ADBitmapFactory_Options

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADBitmapFactory_Options_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "outHeight_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "outWidth_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "inJustDecodeBounds_", "Z", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "inSampleSize_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADBitmapFactory;" };
  static const J2ObjcClassInfo _ADBitmapFactory_Options = { "Options", "r.android.graphics", ptrTable, methods, fields, 7, 0x9, 1, 4, 0, -1, -1, -1, -1 };
  return &_ADBitmapFactory_Options;
}

@end

void ADBitmapFactory_Options_init(ADBitmapFactory_Options *self) {
  NSObject_init(self);
}

ADBitmapFactory_Options *new_ADBitmapFactory_Options_init() {
  J2OBJC_NEW_IMPL(ADBitmapFactory_Options, init)
}

ADBitmapFactory_Options *create_ADBitmapFactory_Options_init() {
  J2OBJC_CREATE_IMPL(ADBitmapFactory_Options, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADBitmapFactory_Options)