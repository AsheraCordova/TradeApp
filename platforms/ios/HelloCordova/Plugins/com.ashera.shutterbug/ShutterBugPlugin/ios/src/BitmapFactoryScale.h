//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSShutterBugPlugin\src\main\java\com\applidium\shutterbug\utils\BitmapFactoryScale.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_BitmapFactoryScale")
#ifdef RESTRICT_BitmapFactoryScale
#define INCLUDE_ALL_BitmapFactoryScale 0
#else
#define INCLUDE_ALL_BitmapFactoryScale 1
#endif
#undef RESTRICT_BitmapFactoryScale

#if !defined (APBitmapFactoryScale_) && (INCLUDE_ALL_BitmapFactoryScale || defined(INCLUDE_APBitmapFactoryScale))
#define APBitmapFactoryScale_

@class APDownloadRequest;
@protocol ADBitmap;
@protocol APBitmapFactoryScale_InputStreamGenerator;

@interface APBitmapFactoryScale : NSObject

#pragma mark Public

- (instancetype)init;

+ (id<ADBitmap>)decodeSampledBitmapFromStreamWithAPBitmapFactoryScale_InputStreamGenerator:(id<APBitmapFactoryScale_InputStreamGenerator>)generator
                                                                     withAPDownloadRequest:(APDownloadRequest *)request;

@end

J2OBJC_EMPTY_STATIC_INIT(APBitmapFactoryScale)

FOUNDATION_EXPORT void APBitmapFactoryScale_init(APBitmapFactoryScale *self);

FOUNDATION_EXPORT APBitmapFactoryScale *new_APBitmapFactoryScale_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT APBitmapFactoryScale *create_APBitmapFactoryScale_init(void);

FOUNDATION_EXPORT id<ADBitmap> APBitmapFactoryScale_decodeSampledBitmapFromStreamWithAPBitmapFactoryScale_InputStreamGenerator_withAPDownloadRequest_(id<APBitmapFactoryScale_InputStreamGenerator> generator, APDownloadRequest *request);

J2OBJC_TYPE_LITERAL_HEADER(APBitmapFactoryScale)

@compatibility_alias ComApplidiumShutterbugUtilsBitmapFactoryScale APBitmapFactoryScale;

#endif

#if !defined (APBitmapFactoryScale_InputStreamGenerator_) && (INCLUDE_ALL_BitmapFactoryScale || defined(INCLUDE_APBitmapFactoryScale_InputStreamGenerator))
#define APBitmapFactoryScale_InputStreamGenerator_

@class JavaIoInputStream;

@protocol APBitmapFactoryScale_InputStreamGenerator < JavaObject >

- (JavaIoInputStream *)getStream;

@end

J2OBJC_EMPTY_STATIC_INIT(APBitmapFactoryScale_InputStreamGenerator)

J2OBJC_TYPE_LITERAL_HEADER(APBitmapFactoryScale_InputStreamGenerator)

#endif

#pragma pop_macro("INCLUDE_ALL_BitmapFactoryScale")
