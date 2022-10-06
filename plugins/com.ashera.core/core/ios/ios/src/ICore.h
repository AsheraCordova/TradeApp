//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSCorePlugin\src\main\java\com\ashera\core\ICore.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ICore")
#ifdef RESTRICT_ICore
#define INCLUDE_ALL_ICore 0
#else
#define INCLUDE_ALL_ICore 1
#endif
#undef RESTRICT_ICore

#if !defined (ASICore_) && (INCLUDE_ALL_ICore || defined(INCLUDE_ASICore))
#define ASICore_

@class ASFontMetricsDescriptor;
@class JavaIoFile;
@class JavaIoInputStream;
@protocol ASAttributedString;
@protocol ASIFragment;
@protocol JavaLangRunnable;
@protocol JavaUtilList;

@protocol ASICore < JavaObject >

- (NSString *)getAssetModeWithASIFragment:(id<ASIFragment>)fragment;

- (NSString *)getDevServerIpWithASIFragment:(id<ASIFragment>)fragment;

- (NSString *)getOrientation;

- (jint)getScreenWidth;

- (jint)getScreenHeight;

- (jint)getScreenWidthDp;

- (jint)getScreenHeightDp;

- (NSString *)getOS;

- (NSString *)getFileAssetWithNSString:(NSString *)path
                       withASIFragment:(id<ASIFragment>)fragment;

- (NSString *)getDensityName;

- (jint)getDensity;

- (id)postDelayedWithJavaLangRunnable:(id<JavaLangRunnable>)mTickRunnable
                              withInt:(jint)delay;

- (void)removeCallbacksWithId:(id)handler
         withJavaLangRunnable:(id<JavaLangRunnable>)mTickRunnable;

- (void)putObjectToBundleWithId:(id)bundle
                   withNSString:(NSString *)key
                         withId:(id)data;

- (void)releaseNativeResourcesWithJavaUtilList:(id<JavaUtilList>)object;

- (ASFontMetricsDescriptor *)getFontMetricsWithId:(id)font;

- (id)createDrawableWithNSString:(NSString *)type;

- (id<ASAttributedString>)createAttributedStringWithASIFragment:(id<ASIFragment>)fragment
                                                   withNSString:(NSString *)text;

- (jfloat)getDisplayMetricDensity;

- (NSString *)getAttributedBulletHtml;

- (JavaIoFile *)getExternalFilesDirWithId:(id)context;

- (jint)getMaxMemoryWithId:(id)context;

- (id)decodeBitmapStreamWithJavaIoInputStream:(JavaIoInputStream *)stream
                                       withId:(id)options;

- (void)runOnMainThreadWithJavaLangRunnable:(id<JavaLangRunnable>)runnable;

@end

J2OBJC_EMPTY_STATIC_INIT(ASICore)

J2OBJC_TYPE_LITERAL_HEADER(ASICore)

#define ComAsheraCoreICore ASICore

#endif

#pragma pop_macro("INCLUDE_ALL_ICore")
