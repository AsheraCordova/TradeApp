//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSShutterBugPlugin\src\main\java\com\applidium\shutterbug\cache\ImageCache.java
//

#include "ActivityManager.h"
#include "AsyncTask.h"
#include "Bitmap.h"
#include "BitmapFactoryScale.h"
#include "Context.h"
#include "DiskLruCache.h"
#include "DownloadRequest.h"
#include "Environment.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "ImageCache.h"
#include "J2ObjC_source.h"
#include "LruCache.h"
#include "PackageManager.h"
#include "java/io/File.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/OutputStream.h"
#include "java/lang/Exception.h"
#include "java/lang/Void.h"

@class JavaIoInputStream;


#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface APImageCache () {
 @public
  ADContext *mContext_;
  APLruCache *mMemoryCache_;
  APDiskLruCache *mDiskCache_;
}

- (void)openDiskCache;

@end

J2OBJC_FIELD_SETTER(APImageCache, mContext_, ADContext *)
J2OBJC_FIELD_SETTER(APImageCache, mMemoryCache_, APLruCache *)
J2OBJC_FIELD_SETTER(APImageCache, mDiskCache_, APDiskLruCache *)

inline jint APImageCache_get_DISK_CACHE_VALUE_COUNT(void);
#define APImageCache_DISK_CACHE_VALUE_COUNT 1
J2OBJC_STATIC_FIELD_CONSTANT(APImageCache, DISK_CACHE_VALUE_COUNT, jint)

inline jint APImageCache_get_DISK_CACHE_MAX_SIZE(void);
#define APImageCache_DISK_CACHE_MAX_SIZE 104857600
J2OBJC_STATIC_FIELD_CONSTANT(APImageCache, DISK_CACHE_MAX_SIZE, jint)

inline APImageCache *APImageCache_get_sImageCache(void);
inline APImageCache *APImageCache_set_sImageCache(APImageCache *value);
static APImageCache *APImageCache_sImageCache;
J2OBJC_STATIC_FIELD_OBJ(APImageCache, sImageCache, APImageCache *)

__attribute__((unused)) static void APImageCache_openDiskCache(APImageCache *self);

@interface APImageCache_ImageCacheListener : NSObject

@end

@interface APImageCache_1 : APLruCache

- (instancetype)initWithInt:(jint)maxSize;

- (jint)sizeOfWithId:(NSString *)key
              withId:(id<ADBitmap>)bitmap;

- (id<ADBitmap>)getWithId:(NSString *)arg0;

- (id<ADBitmap>)createWithId:(NSString *)arg0;

- (id<ADBitmap>)removeWithId:(NSString *)arg0;

- (id<ADBitmap>)putWithId:(NSString *)arg0
                   withId:(id<ADBitmap>)arg1;

@end

J2OBJC_EMPTY_STATIC_INIT(APImageCache_1)

__attribute__((unused)) static void APImageCache_1_initWithInt_(APImageCache_1 *self, jint maxSize);

__attribute__((unused)) static APImageCache_1 *new_APImageCache_1_initWithInt_(jint maxSize) NS_RETURNS_RETAINED;

__attribute__((unused)) static APImageCache_1 *create_APImageCache_1_initWithInt_(jint maxSize);

@interface APImageCache_BitmapDecoderTask : ADAsyncTask {
 @public
  APImageCache *this$0_;
  NSString *mCacheKey_;
  id<APImageCache_ImageCacheListener> mListener_;
  APDownloadRequest *mDownloadRequest_;
}

- (instancetype)initWithAPImageCache:(APImageCache *)outer$
                        withNSString:(NSString *)cacheKey
 withAPImageCache_ImageCacheListener:(id<APImageCache_ImageCacheListener>)listener
               withAPDownloadRequest:(APDownloadRequest *)downloadRequest;

- (id<ADBitmap>)doInBackgroundWithNSObjectArray:(IOSObjectArray *)params;

- (void)onPostExecuteWithId:(id<ADBitmap>)result;

@end

J2OBJC_EMPTY_STATIC_INIT(APImageCache_BitmapDecoderTask)

J2OBJC_FIELD_SETTER(APImageCache_BitmapDecoderTask, mCacheKey_, NSString *)
J2OBJC_FIELD_SETTER(APImageCache_BitmapDecoderTask, mListener_, id<APImageCache_ImageCacheListener>)
J2OBJC_FIELD_SETTER(APImageCache_BitmapDecoderTask, mDownloadRequest_, APDownloadRequest *)

__attribute__((unused)) static void APImageCache_BitmapDecoderTask_initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_(APImageCache_BitmapDecoderTask *self, APImageCache *outer$, NSString *cacheKey, id<APImageCache_ImageCacheListener> listener, APDownloadRequest *downloadRequest);

__attribute__((unused)) static APImageCache_BitmapDecoderTask *new_APImageCache_BitmapDecoderTask_initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_(APImageCache *outer$, NSString *cacheKey, id<APImageCache_ImageCacheListener> listener, APDownloadRequest *downloadRequest) NS_RETURNS_RETAINED;

__attribute__((unused)) static APImageCache_BitmapDecoderTask *create_APImageCache_BitmapDecoderTask_initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_(APImageCache *outer$, NSString *cacheKey, id<APImageCache_ImageCacheListener> listener, APDownloadRequest *downloadRequest);

J2OBJC_TYPE_LITERAL_HEADER(APImageCache_BitmapDecoderTask)

@interface APImageCache_BitmapDecoderTask_1 : NSObject < APBitmapFactoryScale_InputStreamGenerator > {
 @public
  APImageCache_BitmapDecoderTask *this$0_;
}

- (instancetype)initWithAPImageCache_BitmapDecoderTask:(APImageCache_BitmapDecoderTask *)outer$;

- (JavaIoInputStream *)getStream;

@end

J2OBJC_EMPTY_STATIC_INIT(APImageCache_BitmapDecoderTask_1)

__attribute__((unused)) static void APImageCache_BitmapDecoderTask_1_initWithAPImageCache_BitmapDecoderTask_(APImageCache_BitmapDecoderTask_1 *self, APImageCache_BitmapDecoderTask *outer$);

__attribute__((unused)) static APImageCache_BitmapDecoderTask_1 *new_APImageCache_BitmapDecoderTask_1_initWithAPImageCache_BitmapDecoderTask_(APImageCache_BitmapDecoderTask *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static APImageCache_BitmapDecoderTask_1 *create_APImageCache_BitmapDecoderTask_1_initWithAPImageCache_BitmapDecoderTask_(APImageCache_BitmapDecoderTask *outer$);

@implementation APImageCache

- (instancetype)initWithADContext:(ADContext *)context {
  APImageCache_initWithADContext_(self, context);
  return self;
}

+ (APImageCache *)getSharedImageCacheWithADContext:(ADContext *)context {
  return APImageCache_getSharedImageCacheWithADContext_(context);
}

- (void)queryCacheWithNSString:(NSString *)cacheKey
withAPImageCache_ImageCacheListener:(id<APImageCache_ImageCacheListener>)listener
         withAPDownloadRequest:(APDownloadRequest *)downloadRequest {
  if (cacheKey == nil) {
    [((id<APImageCache_ImageCacheListener>) nil_chk(listener)) onImageNotFoundWithAPImageCache:self withNSString:cacheKey withAPDownloadRequest:downloadRequest];
    return;
  }
  id<ADBitmap> cachedBitmap = [((APLruCache *) nil_chk(mMemoryCache_)) getWithId:cacheKey];
  if (cachedBitmap != nil) {
    [((id<APImageCache_ImageCacheListener>) nil_chk(listener)) onImageFoundWithAPImageCache:self withADBitmap:cachedBitmap withNSString:cacheKey withAPDownloadRequest:downloadRequest];
    return;
  }
  if (mDiskCache_ != nil) {
    (void) [new_APImageCache_BitmapDecoderTask_initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_(self, cacheKey, listener, downloadRequest) executeWithNSObjectArray:[IOSObjectArray newArrayWithLength:0 type:JavaLangVoid_class_()]];
    return;
  }
  [((id<APImageCache_ImageCacheListener>) nil_chk(listener)) onImageNotFoundWithAPImageCache:self withNSString:cacheKey withAPDownloadRequest:downloadRequest];
}

- (APDiskLruCache_Snapshot *)storeToDiskWithJavaIoInputStream:(JavaIoInputStream *)inputStream
                                                 withNSString:(NSString *)cacheKey {
  @try {
    @synchronized([((NSString *) nil_chk(cacheKey)) java_intern]) {
      APDiskLruCache_Editor *editor = [((APDiskLruCache *) nil_chk(mDiskCache_)) editWithNSString:cacheKey];
      JavaIoOutputStream *outputStream = [((APDiskLruCache_Editor *) nil_chk(editor)) newOutputStreamWithInt:0];
      jint bufferSize = 1024;
      IOSByteArray *bytes = [IOSByteArray newArrayWithLength:bufferSize];
      for (; ; ) {
        jint count = [((JavaIoInputStream *) nil_chk(inputStream)) readWithByteArray:bytes withInt:0 withInt:bufferSize];
        if (count == -1) break;
        [((JavaIoOutputStream *) nil_chk(outputStream)) writeWithByteArray:bytes withInt:0 withInt:count];
      }
      [((JavaIoOutputStream *) nil_chk(outputStream)) close];
      [editor commit];
      return JreRetainedLocalValue([((APDiskLruCache *) nil_chk(mDiskCache_)) getWithNSString:cacheKey]);
    }
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
  }
  return nil;
}

- (APDiskLruCache_Snapshot *)queryDiskCacheWithNSString:(NSString *)cacheKey {
  @try {
    return [((APDiskLruCache *) nil_chk(mDiskCache_)) getWithNSString:cacheKey];
  }
  @catch (JavaIoIOException *e) {
    [e printStackTrace];
  }
  return nil;
}

- (void)storeToMemoryWithADBitmap:(id<ADBitmap>)bitmap
                     withNSString:(NSString *)cacheKey {
  (void) [((APLruCache *) nil_chk(mMemoryCache_)) putWithId:cacheKey withId:bitmap];
}

- (void)clear {
  @try {
    [((APDiskLruCache *) nil_chk(mDiskCache_)) delete__];
    APImageCache_openDiskCache(self);
  }
  @catch (JavaIoIOException *e) {
    [e printStackTrace];
  }
  [((APLruCache *) nil_chk(mMemoryCache_)) evictAll];
}

- (void)openDiskCache {
  APImageCache_openDiskCache(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LAPImageCache;", 0x9, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LAPDiskLruCache_Snapshot;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LAPDiskLruCache_Snapshot;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithADContext:);
  methods[1].selector = @selector(getSharedImageCacheWithADContext:);
  methods[2].selector = @selector(queryCacheWithNSString:withAPImageCache_ImageCacheListener:withAPDownloadRequest:);
  methods[3].selector = @selector(storeToDiskWithJavaIoInputStream:withNSString:);
  methods[4].selector = @selector(queryDiskCacheWithNSString:);
  methods[5].selector = @selector(storeToMemoryWithADBitmap:withNSString:);
  methods[6].selector = @selector(clear);
  methods[7].selector = @selector(openDiskCache);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DISK_CACHE_VALUE_COUNT", "I", .constantValue.asInt = APImageCache_DISK_CACHE_VALUE_COUNT, 0x1a, -1, -1, -1, -1 },
    { "DISK_CACHE_MAX_SIZE", "I", .constantValue.asInt = APImageCache_DISK_CACHE_MAX_SIZE, 0x1a, -1, -1, -1, -1 },
    { "sImageCache", "LAPImageCache;", .constantValue.asLong = 0, 0xa, -1, 10, -1, -1 },
    { "mContext_", "LADContext;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mMemoryCache_", "LAPLruCache;", .constantValue.asLong = 0, 0x2, -1, -1, 11, -1 },
    { "mDiskCache_", "LAPDiskLruCache;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LADContext;", "getSharedImageCache", "queryCache", "LNSString;LAPImageCache_ImageCacheListener;LAPDownloadRequest;", "storeToDisk", "LJavaIoInputStream;LNSString;", "queryDiskCache", "LNSString;", "storeToMemory", "LADBitmap;LNSString;", &APImageCache_sImageCache, "Lcom/applidium/shutterbug/cache/LruCache<Ljava/lang/String;Lr/android/graphics/Bitmap;>;", "LAPImageCache_ImageCacheListener;LAPImageCache_BitmapDecoderTask;" };
  static const J2ObjcClassInfo _APImageCache = { "ImageCache", "com.applidium.shutterbug.cache", ptrTable, methods, fields, 7, 0x1, 8, 6, -1, 12, -1, -1, -1 };
  return &_APImageCache;
}

@end

void APImageCache_initWithADContext_(APImageCache *self, ADContext *context) {
  NSObject_init(self);
  self->mContext_ = context;
  jint memClass = [((ADActivityManager *) nil_chk(((ADActivityManager *) cast_chk([((ADContext *) nil_chk(context)) getSystemServiceWithIOSClass:JreLoadStatic(ADContext, ACTIVITY_SERVICE)], [ADActivityManager class])))) getMemoryClass];
  jint cacheSize = 1024 * 1024 * (JreIntDiv(memClass, 8));
  self->mMemoryCache_ = new_APImageCache_1_initWithInt_(cacheSize);
  APImageCache_openDiskCache(self);
}

APImageCache *new_APImageCache_initWithADContext_(ADContext *context) {
  J2OBJC_NEW_IMPL(APImageCache, initWithADContext_, context)
}

APImageCache *create_APImageCache_initWithADContext_(ADContext *context) {
  J2OBJC_CREATE_IMPL(APImageCache, initWithADContext_, context)
}

APImageCache *APImageCache_getSharedImageCacheWithADContext_(ADContext *context) {
  APImageCache_initialize();
  if (APImageCache_sImageCache == nil) {
    APImageCache_sImageCache = new_APImageCache_initWithADContext_(context);
  }
  return APImageCache_sImageCache;
}

void APImageCache_openDiskCache(APImageCache *self) {
  JavaIoFile *directory = nil;
  if ([((NSString *) nil_chk(ADEnvironment_getExternalStorageState())) isEqual:ADEnvironment_MEDIA_MOUNTED]) {
    directory = new_JavaIoFile_initWithJavaIoFile_withNSString_([((ADContext *) nil_chk(self->mContext_)) getExternalFilesDirWithId:nil], @"Applidium Image Cache");
  }
  else {
    directory = [((ADContext *) nil_chk(self->mContext_)) getCacheDir];
  }
  jint versionCode;
  @try {
    versionCode = ((ADPackageManager_PackageInfo *) nil_chk([((ADPackageManager *) nil_chk([((ADContext *) nil_chk(self->mContext_)) getPackageManager])) getPackageInfoWithNSString:[((ADContext *) nil_chk(self->mContext_)) getPackageName] withInt:0]))->versionCode_;
  }
  @catch (ADPackageManager_NameNotFoundException *e) {
    versionCode = 0;
    [e printStackTrace];
  }
  @try {
    self->mDiskCache_ = APDiskLruCache_openWithJavaIoFile_withInt_withInt_withLong_(directory, versionCode, APImageCache_DISK_CACHE_VALUE_COUNT, APImageCache_DISK_CACHE_MAX_SIZE);
  }
  @catch (JavaIoIOException *e) {
    @try {
      self->mDiskCache_ = APDiskLruCache_openWithJavaIoFile_withInt_withInt_withLong_([((ADContext *) nil_chk(self->mContext_)) getCacheDir], versionCode, APImageCache_DISK_CACHE_VALUE_COUNT, APImageCache_DISK_CACHE_MAX_SIZE);
    }
    @catch (JavaIoIOException *e1) {
      [e1 printStackTrace];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APImageCache)

@implementation APImageCache_ImageCacheListener

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x401, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(onImageFoundWithAPImageCache:withADBitmap:withNSString:withAPDownloadRequest:);
  methods[1].selector = @selector(onImageNotFoundWithAPImageCache:withNSString:withAPDownloadRequest:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "onImageFound", "LAPImageCache;LADBitmap;LNSString;LAPDownloadRequest;", "onImageNotFound", "LAPImageCache;LNSString;LAPDownloadRequest;", "LAPImageCache;" };
  static const J2ObjcClassInfo _APImageCache_ImageCacheListener = { "ImageCacheListener", "com.applidium.shutterbug.cache", ptrTable, methods, NULL, 7, 0x609, 2, 0, 4, -1, -1, -1, -1 };
  return &_APImageCache_ImageCacheListener;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(APImageCache_ImageCacheListener)

@implementation APImageCache_1

- (instancetype)initWithInt:(jint)maxSize {
  APImageCache_1_initWithInt_(self, maxSize);
  return self;
}

- (jint)sizeOfWithId:(NSString *)key
              withId:(id<ADBitmap>)bitmap {
  return [((id<ADBitmap>) nil_chk(bitmap)) getRowBytes] * [bitmap getHeight];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(sizeOfWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "I", "sizeOf", "LNSString;LADBitmap;", "LAPImageCache;", "initWithADContext:", "Lcom/applidium/shutterbug/cache/LruCache<Ljava/lang/String;Lr/android/graphics/Bitmap;>;" };
  static const J2ObjcClassInfo _APImageCache_1 = { "", "com.applidium.shutterbug.cache", ptrTable, methods, NULL, 7, 0x8010, 2, 0, 3, -1, 4, 5, -1 };
  return &_APImageCache_1;
}

@end

void APImageCache_1_initWithInt_(APImageCache_1 *self, jint maxSize) {
  APLruCache_initWithInt_(self, maxSize);
}

APImageCache_1 *new_APImageCache_1_initWithInt_(jint maxSize) {
  J2OBJC_NEW_IMPL(APImageCache_1, initWithInt_, maxSize)
}

APImageCache_1 *create_APImageCache_1_initWithInt_(jint maxSize) {
  J2OBJC_CREATE_IMPL(APImageCache_1, initWithInt_, maxSize)
}

@implementation APImageCache_BitmapDecoderTask

- (instancetype)initWithAPImageCache:(APImageCache *)outer$
                        withNSString:(NSString *)cacheKey
 withAPImageCache_ImageCacheListener:(id<APImageCache_ImageCacheListener>)listener
               withAPDownloadRequest:(APDownloadRequest *)downloadRequest {
  APImageCache_BitmapDecoderTask_initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_(self, outer$, cacheKey, listener, downloadRequest);
  return self;
}

- (id<ADBitmap>)doInBackgroundWithNSObjectArray:(IOSObjectArray *)params {
  @try {
    APDiskLruCache_Snapshot *snapshot = [((APDiskLruCache *) nil_chk(this$0_->mDiskCache_)) getWithNSString:mCacheKey_];
    if (snapshot != nil) {
      return APBitmapFactoryScale_decodeSampledBitmapFromStreamWithAPBitmapFactoryScale_InputStreamGenerator_withAPDownloadRequest_(new_APImageCache_BitmapDecoderTask_1_initWithAPImageCache_BitmapDecoderTask_(self), mDownloadRequest_);
    }
    else {
      return nil;
    }
  }
  @catch (JavaIoIOException *e) {
    [e printStackTrace];
    return nil;
  }
}

- (void)onPostExecuteWithId:(id<ADBitmap>)result {
  if (result != nil) {
    [this$0_ storeToMemoryWithADBitmap:result withNSString:mCacheKey_];
    [((id<APImageCache_ImageCacheListener>) nil_chk(mListener_)) onImageFoundWithAPImageCache:this$0_ withADBitmap:result withNSString:mCacheKey_ withAPDownloadRequest:mDownloadRequest_];
  }
  else {
    [((id<APImageCache_ImageCacheListener>) nil_chk(mListener_)) onImageNotFoundWithAPImageCache:this$0_ withNSString:mCacheKey_ withAPDownloadRequest:mDownloadRequest_];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LADBitmap;", 0x84, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithAPImageCache:withNSString:withAPImageCache_ImageCacheListener:withAPDownloadRequest:);
  methods[1].selector = @selector(doInBackgroundWithNSObjectArray:);
  methods[2].selector = @selector(onPostExecuteWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LAPImageCache;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "mCacheKey_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mListener_", "LAPImageCache_ImageCacheListener;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mDownloadRequest_", "LAPDownloadRequest;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LAPImageCache;LNSString;LAPImageCache_ImageCacheListener;LAPDownloadRequest;", "doInBackground", "[LJavaLangVoid;", "onPostExecute", "LADBitmap;", "LAPImageCache;", "Lr/android/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lr/android/graphics/Bitmap;>;" };
  static const J2ObjcClassInfo _APImageCache_BitmapDecoderTask = { "BitmapDecoderTask", "com.applidium.shutterbug.cache", ptrTable, methods, fields, 7, 0x2, 3, 4, 5, -1, -1, 6, -1 };
  return &_APImageCache_BitmapDecoderTask;
}

@end

void APImageCache_BitmapDecoderTask_initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_(APImageCache_BitmapDecoderTask *self, APImageCache *outer$, NSString *cacheKey, id<APImageCache_ImageCacheListener> listener, APDownloadRequest *downloadRequest) {
  self->this$0_ = outer$;
  ADAsyncTask_init(self);
  self->mCacheKey_ = cacheKey;
  self->mListener_ = listener;
  self->mDownloadRequest_ = downloadRequest;
}

APImageCache_BitmapDecoderTask *new_APImageCache_BitmapDecoderTask_initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_(APImageCache *outer$, NSString *cacheKey, id<APImageCache_ImageCacheListener> listener, APDownloadRequest *downloadRequest) {
  J2OBJC_NEW_IMPL(APImageCache_BitmapDecoderTask, initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_, outer$, cacheKey, listener, downloadRequest)
}

APImageCache_BitmapDecoderTask *create_APImageCache_BitmapDecoderTask_initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_(APImageCache *outer$, NSString *cacheKey, id<APImageCache_ImageCacheListener> listener, APDownloadRequest *downloadRequest) {
  J2OBJC_CREATE_IMPL(APImageCache_BitmapDecoderTask, initWithAPImageCache_withNSString_withAPImageCache_ImageCacheListener_withAPDownloadRequest_, outer$, cacheKey, listener, downloadRequest)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APImageCache_BitmapDecoderTask)

@implementation APImageCache_BitmapDecoderTask_1

- (instancetype)initWithAPImageCache_BitmapDecoderTask:(APImageCache_BitmapDecoderTask *)outer$ {
  APImageCache_BitmapDecoderTask_1_initWithAPImageCache_BitmapDecoderTask_(self, outer$);
  return self;
}

- (JavaIoInputStream *)getStream {
  @try {
    return [((APDiskLruCache_Snapshot *) nil_chk([((APDiskLruCache *) nil_chk(this$0_->this$0_->mDiskCache_)) getWithNSString:this$0_->mCacheKey_])) getInputStreamWithInt:0];
  }
  @catch (JavaIoIOException *e) {
    [e printStackTrace];
    return nil;
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaIoInputStream;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithAPImageCache_BitmapDecoderTask:);
  methods[1].selector = @selector(getStream);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LAPImageCache_BitmapDecoderTask;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LAPImageCache_BitmapDecoderTask;", "doInBackgroundWithNSObjectArray:" };
  static const J2ObjcClassInfo _APImageCache_BitmapDecoderTask_1 = { "", "com.applidium.shutterbug.cache", ptrTable, methods, fields, 7, 0x8010, 2, 1, 0, -1, 1, -1, -1 };
  return &_APImageCache_BitmapDecoderTask_1;
}

@end

void APImageCache_BitmapDecoderTask_1_initWithAPImageCache_BitmapDecoderTask_(APImageCache_BitmapDecoderTask_1 *self, APImageCache_BitmapDecoderTask *outer$) {
  self->this$0_ = outer$;
  NSObject_init(self);
}

APImageCache_BitmapDecoderTask_1 *new_APImageCache_BitmapDecoderTask_1_initWithAPImageCache_BitmapDecoderTask_(APImageCache_BitmapDecoderTask *outer$) {
  J2OBJC_NEW_IMPL(APImageCache_BitmapDecoderTask_1, initWithAPImageCache_BitmapDecoderTask_, outer$)
}

APImageCache_BitmapDecoderTask_1 *create_APImageCache_BitmapDecoderTask_1_initWithAPImageCache_BitmapDecoderTask_(APImageCache_BitmapDecoderTask *outer$) {
  J2OBJC_CREATE_IMPL(APImageCache_BitmapDecoderTask_1, initWithAPImageCache_BitmapDecoderTask_, outer$)
}
