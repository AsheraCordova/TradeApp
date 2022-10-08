//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSShutterBugPlugin\src\main\java\com\applidium\shutterbug\cache\ImageCache.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ImageCache")
#ifdef RESTRICT_ImageCache
#define INCLUDE_ALL_ImageCache 0
#else
#define INCLUDE_ALL_ImageCache 1
#endif
#undef RESTRICT_ImageCache

#if !defined (APImageCache_) && (INCLUDE_ALL_ImageCache || defined(INCLUDE_APImageCache))
#define APImageCache_

@class ADContext;
@class APDiskLruCache_Snapshot;
@class APDownloadRequest;
@class JavaIoInputStream;
@protocol ADBitmap;
@protocol APImageCache_ImageCacheListener;

@interface APImageCache : NSObject

#pragma mark Public

- (void)clear;

+ (APImageCache *)getSharedImageCacheWithADContext:(ADContext *)context;

- (void)queryCacheWithNSString:(NSString *)cacheKey
withAPImageCache_ImageCacheListener:(id<APImageCache_ImageCacheListener>)listener
         withAPDownloadRequest:(APDownloadRequest *)downloadRequest;

- (APDiskLruCache_Snapshot *)queryDiskCacheWithNSString:(NSString *)cacheKey;

- (APDiskLruCache_Snapshot *)storeToDiskWithJavaIoInputStream:(JavaIoInputStream *)inputStream
                                                 withNSString:(NSString *)cacheKey;

- (void)storeToMemoryWithADBitmap:(id<ADBitmap>)bitmap
                     withNSString:(NSString *)cacheKey;

#pragma mark Package-Private

- (instancetype)initWithADContext:(ADContext *)context;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(APImageCache)

FOUNDATION_EXPORT void APImageCache_initWithADContext_(APImageCache *self, ADContext *context);

FOUNDATION_EXPORT APImageCache *new_APImageCache_initWithADContext_(ADContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT APImageCache *create_APImageCache_initWithADContext_(ADContext *context);

FOUNDATION_EXPORT APImageCache *APImageCache_getSharedImageCacheWithADContext_(ADContext *context);

J2OBJC_TYPE_LITERAL_HEADER(APImageCache)

@compatibility_alias ComApplidiumShutterbugCacheImageCache APImageCache;

#endif

#if !defined (APImageCache_ImageCacheListener_) && (INCLUDE_ALL_ImageCache || defined(INCLUDE_APImageCache_ImageCacheListener))
#define APImageCache_ImageCacheListener_

@class APDownloadRequest;
@class APImageCache;
@protocol ADBitmap;

@protocol APImageCache_ImageCacheListener < JavaObject >

- (void)onImageFoundWithAPImageCache:(APImageCache *)imageCache
                        withADBitmap:(id<ADBitmap>)bitmap
                        withNSString:(NSString *)key
               withAPDownloadRequest:(APDownloadRequest *)downloadRequest;

- (void)onImageNotFoundWithAPImageCache:(APImageCache *)imageCache
                           withNSString:(NSString *)key
                  withAPDownloadRequest:(APDownloadRequest *)downloadRequest;

@end

J2OBJC_EMPTY_STATIC_INIT(APImageCache_ImageCacheListener)

J2OBJC_TYPE_LITERAL_HEADER(APImageCache_ImageCacheListener)

#endif

#pragma pop_macro("INCLUDE_ALL_ImageCache")