//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\util\Pools.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "Pools.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"


@interface ADPools ()

- (instancetype)init;

@end

__attribute__((unused)) static void ADPools_init(ADPools *self);

__attribute__((unused)) static ADPools *new_ADPools_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ADPools *create_ADPools_init(void);

@interface ADPools_Pool : NSObject

@end

@interface ADPools_SimplePool () {
 @public
  IOSObjectArray *mPool_;
  jint mPoolSize_;
}

- (jboolean)isInPoolWithId:(id)instance;

@end

J2OBJC_FIELD_SETTER(ADPools_SimplePool, mPool_, IOSObjectArray *)

__attribute__((unused)) static id ADPools_SimplePool_acquire(ADPools_SimplePool *self);

__attribute__((unused)) static jboolean ADPools_SimplePool_release__WithId_(ADPools_SimplePool *self, id instance);

__attribute__((unused)) static jboolean ADPools_SimplePool_isInPoolWithId_(ADPools_SimplePool *self, id instance);

@interface ADPools_SynchronizedPool () {
 @public
  id mLock_;
}

@end

J2OBJC_FIELD_SETTER(ADPools_SynchronizedPool, mLock_, id)

@implementation ADPools

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADPools_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LADPools_Pool;LADPools_SimplePool;LADPools_SynchronizedPool;" };
  static const J2ObjcClassInfo _ADPools = { "Pools", "r.android.util", ptrTable, methods, NULL, 7, 0x11, 1, 0, -1, 0, -1, -1, -1 };
  return &_ADPools;
}

@end

void ADPools_init(ADPools *self) {
  NSObject_init(self);
}

ADPools *new_ADPools_init() {
  J2OBJC_NEW_IMPL(ADPools, init)
}

ADPools *create_ADPools_init() {
  J2OBJC_CREATE_IMPL(ADPools, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADPools)

@implementation ADPools_Pool

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, -1, -1, -1, 0, -1, -1 },
    { NULL, "Z", 0x401, 1, 2, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(acquire);
  methods[1].selector = @selector(release__WithId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "()TT;", "release", "LNSObject;", "(TT;)Z", "LADPools;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _ADPools_Pool = { "Pool", "r.android.util", ptrTable, methods, NULL, 7, 0x609, 2, 0, 4, -1, -1, 5, -1 };
  return &_ADPools_Pool;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ADPools_Pool)

@implementation ADPools_SimplePool

- (instancetype)initWithInt:(jint)maxPoolSize {
  ADPools_SimplePool_initWithInt_(self, maxPoolSize);
  return self;
}

- (id)acquire {
  return ADPools_SimplePool_acquire(self);
}

- (jboolean)release__WithId:(id)instance {
  return ADPools_SimplePool_release__WithId_(self, instance);
}

- (jboolean)isInPoolWithId:(id)instance {
  return ADPools_SimplePool_isInPoolWithId_(self, instance);
}

- (void)dealloc {
  RELEASE_(mPool_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "Z", 0x2, 5, 3, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(acquire);
  methods[2].selector = @selector(release__WithId:);
  methods[3].selector = @selector(isInPoolWithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mPool_", "[LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "mPoolSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "()TT;", "release", "LNSObject;", "(TT;)Z", "isInPool", "LADPools;", "<T:Ljava/lang/Object;>Ljava/lang/Object;Lr/android/util/Pools$Pool<TT;>;" };
  static const J2ObjcClassInfo _ADPools_SimplePool = { "SimplePool", "r.android.util", ptrTable, methods, fields, 7, 0x9, 4, 2, 6, -1, -1, 7, -1 };
  return &_ADPools_SimplePool;
}

@end

void ADPools_SimplePool_initWithInt_(ADPools_SimplePool *self, jint maxPoolSize) {
  NSObject_init(self);
  if (maxPoolSize <= 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"The max pool size must be > 0");
  }
  JreStrongAssignAndConsume(&self->mPool_, [IOSObjectArray newArrayWithLength:maxPoolSize type:NSObject_class_()]);
}

ADPools_SimplePool *new_ADPools_SimplePool_initWithInt_(jint maxPoolSize) {
  J2OBJC_NEW_IMPL(ADPools_SimplePool, initWithInt_, maxPoolSize)
}

ADPools_SimplePool *create_ADPools_SimplePool_initWithInt_(jint maxPoolSize) {
  J2OBJC_CREATE_IMPL(ADPools_SimplePool, initWithInt_, maxPoolSize)
}

id ADPools_SimplePool_acquire(ADPools_SimplePool *self) {
  if (self->mPoolSize_ > 0) {
    jint lastPooledIndex = self->mPoolSize_ - 1;
    id instance = IOSObjectArray_Get(nil_chk(self->mPool_), lastPooledIndex);
    IOSObjectArray_Set(self->mPool_, lastPooledIndex, nil);
    self->mPoolSize_--;
    return instance;
  }
  return nil;
}

jboolean ADPools_SimplePool_release__WithId_(ADPools_SimplePool *self, id instance) {
  if (ADPools_SimplePool_isInPoolWithId_(self, instance)) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"Already in the pool!");
  }
  if (self->mPoolSize_ < ((IOSObjectArray *) nil_chk(self->mPool_))->size_) {
    IOSObjectArray_Set(self->mPool_, self->mPoolSize_, instance);
    self->mPoolSize_++;
    return true;
  }
  return false;
}

jboolean ADPools_SimplePool_isInPoolWithId_(ADPools_SimplePool *self, id instance) {
  for (jint i = 0; i < self->mPoolSize_; i++) {
    if (IOSObjectArray_Get(nil_chk(self->mPool_), i) == instance) {
      return true;
    }
  }
  return false;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADPools_SimplePool)

@implementation ADPools_SynchronizedPool

- (instancetype)initWithInt:(jint)maxPoolSize {
  ADPools_SynchronizedPool_initWithInt_(self, maxPoolSize);
  return self;
}

- (id)acquire {
  @synchronized(mLock_) {
    return JreRetainedLocalValue(ADPools_SimplePool_acquire(self));
  }
}

- (jboolean)release__WithId:(id)element {
  @synchronized(mLock_) {
    return ADPools_SimplePool_release__WithId_(self, element);
  }
}

- (void)dealloc {
  RELEASE_(mLock_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, 1, -1, -1 },
    { NULL, "Z", 0x1, 2, 3, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:);
  methods[1].selector = @selector(acquire);
  methods[2].selector = @selector(release__WithId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "mLock_", "LNSObject;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "()TT;", "release", "LNSObject;", "(TT;)Z", "LADPools;", "<T:Ljava/lang/Object;>Lr/android/util/Pools$SimplePool<TT;>;" };
  static const J2ObjcClassInfo _ADPools_SynchronizedPool = { "SynchronizedPool", "r.android.util", ptrTable, methods, fields, 7, 0x9, 3, 1, 5, -1, -1, 6, -1 };
  return &_ADPools_SynchronizedPool;
}

@end

void ADPools_SynchronizedPool_initWithInt_(ADPools_SynchronizedPool *self, jint maxPoolSize) {
  ADPools_SimplePool_initWithInt_(self, maxPoolSize);
  JreStrongAssignAndConsume(&self->mLock_, new_NSObject_init());
}

ADPools_SynchronizedPool *new_ADPools_SynchronizedPool_initWithInt_(jint maxPoolSize) {
  J2OBJC_NEW_IMPL(ADPools_SynchronizedPool, initWithInt_, maxPoolSize)
}

ADPools_SynchronizedPool *create_ADPools_SynchronizedPool_initWithInt_(jint maxPoolSize) {
  J2OBJC_CREATE_IMPL(ADPools_SynchronizedPool, initWithInt_, maxPoolSize)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADPools_SynchronizedPool)
