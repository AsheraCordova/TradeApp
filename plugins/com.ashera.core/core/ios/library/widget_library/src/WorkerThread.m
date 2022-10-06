//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\utils\WorkerThread.java
//

#include "FileUtils.h"
#include "J2ObjC_source.h"
#include "WorkerThread.h"
#include "java/util/Map.h"
#include "java/util/concurrent/CountDownLatch.h"

@class JavaUtilConcurrentCountDownLatch;
@protocol JavaUtilMap;


@interface ASWorkerThread () {
 @public
  JavaUtilConcurrentCountDownLatch *countDownLatch_;
  NSString *url_;
  NSString *key_;
  id<JavaUtilMap> resultMap_;
}

@end

J2OBJC_FIELD_SETTER(ASWorkerThread, countDownLatch_, JavaUtilConcurrentCountDownLatch *)
J2OBJC_FIELD_SETTER(ASWorkerThread, url_, NSString *)
J2OBJC_FIELD_SETTER(ASWorkerThread, key_, NSString *)
J2OBJC_FIELD_SETTER(ASWorkerThread, resultMap_, id<JavaUtilMap>)

@implementation ASWorkerThread

- (instancetype)initWithNSString:(NSString *)url
withJavaUtilConcurrentCountDownLatch:(JavaUtilConcurrentCountDownLatch *)countDownLatch
                    withNSString:(NSString *)key
                 withJavaUtilMap:(id<JavaUtilMap>)resultMap {
  ASWorkerThread_initWithNSString_withJavaUtilConcurrentCountDownLatch_withNSString_withJavaUtilMap_(self, url, countDownLatch, key, resultMap);
  return self;
}

- (void)run {
  NSString *data = ASFileUtils_readStringFromURLWithNSString_(url_);
  [((JavaUtilConcurrentCountDownLatch *) nil_chk(countDownLatch_)) countDown];
  [((id<JavaUtilMap>) nil_chk(resultMap_)) putWithId:key_ withId:data];
}

- (void)dealloc {
  RELEASE_(countDownLatch_);
  RELEASE_(url_);
  RELEASE_(key_);
  RELEASE_(resultMap_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withJavaUtilConcurrentCountDownLatch:withNSString:withJavaUtilMap:);
  methods[1].selector = @selector(run);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "countDownLatch_", "LJavaUtilConcurrentCountDownLatch;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "url_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "key_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "resultMap_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 2, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LJavaUtilConcurrentCountDownLatch;LNSString;LJavaUtilMap;", "(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V", "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;" };
  static const J2ObjcClassInfo _ASWorkerThread = { "WorkerThread", "com.ashera.utils", ptrTable, methods, fields, 7, 0x1, 2, 4, -1, -1, -1, -1, -1 };
  return &_ASWorkerThread;
}

@end

void ASWorkerThread_initWithNSString_withJavaUtilConcurrentCountDownLatch_withNSString_withJavaUtilMap_(ASWorkerThread *self, NSString *url, JavaUtilConcurrentCountDownLatch *countDownLatch, NSString *key, id<JavaUtilMap> resultMap) {
  NSObject_init(self);
  JreStrongAssign(&self->url_, url);
  JreStrongAssign(&self->countDownLatch_, countDownLatch);
  JreStrongAssign(&self->key_, key);
  JreStrongAssign(&self->resultMap_, resultMap);
}

ASWorkerThread *new_ASWorkerThread_initWithNSString_withJavaUtilConcurrentCountDownLatch_withNSString_withJavaUtilMap_(NSString *url, JavaUtilConcurrentCountDownLatch *countDownLatch, NSString *key, id<JavaUtilMap> resultMap) {
  J2OBJC_NEW_IMPL(ASWorkerThread, initWithNSString_withJavaUtilConcurrentCountDownLatch_withNSString_withJavaUtilMap_, url, countDownLatch, key, resultMap)
}

ASWorkerThread *create_ASWorkerThread_initWithNSString_withJavaUtilConcurrentCountDownLatch_withNSString_withJavaUtilMap_(NSString *url, JavaUtilConcurrentCountDownLatch *countDownLatch, NSString *key, id<JavaUtilMap> resultMap) {
  J2OBJC_CREATE_IMPL(ASWorkerThread, initWithNSString_withJavaUtilConcurrentCountDownLatch_withNSString_withJavaUtilMap_, url, countDownLatch, key, resultMap)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASWorkerThread)