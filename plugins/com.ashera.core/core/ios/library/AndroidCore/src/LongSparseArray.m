//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\util\LongSparseArray.java
//

#include "ContainerHelpers.h"
#include "GrowingArrayUtils.h"
#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "LongSparseArray.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/StringBuilder.h"


@interface ADLongSparseArray () {
 @public
  jboolean mGarbage_;
  IOSLongArray *mKeys_;
  IOSObjectArray *mValues_;
  jint mSize_;
}

- (void)gc;

@end

J2OBJC_FIELD_SETTER(ADLongSparseArray, mKeys_, IOSLongArray *)
J2OBJC_FIELD_SETTER(ADLongSparseArray, mValues_, IOSObjectArray *)

inline id ADLongSparseArray_get_DELETED(void);
static id ADLongSparseArray_DELETED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADLongSparseArray, DELETED, id)

__attribute__((unused)) static void ADLongSparseArray_gc(ADLongSparseArray *self);

J2OBJC_INITIALIZED_DEFN(ADLongSparseArray)

@implementation ADLongSparseArray

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADLongSparseArray_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)initialCapacity {
  ADLongSparseArray_initWithInt_(self, initialCapacity);
  return self;
}

- (ADLongSparseArray *)java_clone {
  ADLongSparseArray *clone = nil;
  @try {
    clone = (ADLongSparseArray *) cast_chk([super java_clone], [ADLongSparseArray class]);
    JreStrongAssign(&((ADLongSparseArray *) nil_chk(clone))->mKeys_, [((IOSLongArray *) nil_chk(mKeys_)) java_clone]);
    JreStrongAssign(&clone->mValues_, [((IOSObjectArray *) nil_chk(mValues_)) java_clone]);
  }
  @catch (JavaLangCloneNotSupportedException *cnse) {
  }
  return clone;
}

- (id)getWithLong:(jlong)key {
  return [self getWithLong:key withId:nil];
}

- (id)getWithLong:(jlong)key
           withId:(id)valueIfKeyNotFound {
  jint i = ADContainerHelpers_binarySearchWithLongArray_withInt_withLong_(mKeys_, mSize_, key);
  if (i < 0 || IOSObjectArray_Get(nil_chk(mValues_), i) == ADLongSparseArray_DELETED) {
    return valueIfKeyNotFound;
  }
  else {
    return IOSObjectArray_Get(nil_chk(mValues_), i);
  }
}

- (void)delete__WithLong:(jlong)key {
  jint i = ADContainerHelpers_binarySearchWithLongArray_withInt_withLong_(mKeys_, mSize_, key);
  if (i >= 0) {
    if (IOSObjectArray_Get(nil_chk(mValues_), i) != ADLongSparseArray_DELETED) {
      IOSObjectArray_Set(mValues_, i, ADLongSparseArray_DELETED);
      mGarbage_ = true;
    }
  }
}

- (void)removeWithLong:(jlong)key {
  [self delete__WithLong:key];
}

- (void)removeAtWithInt:(jint)index {
  if (IOSObjectArray_Get(nil_chk(mValues_), index) != ADLongSparseArray_DELETED) {
    IOSObjectArray_Set(mValues_, index, ADLongSparseArray_DELETED);
    mGarbage_ = true;
  }
}

- (void)gc {
  ADLongSparseArray_gc(self);
}

- (void)putWithLong:(jlong)key
             withId:(id)value {
  jint i = ADContainerHelpers_binarySearchWithLongArray_withInt_withLong_(mKeys_, mSize_, key);
  if (i >= 0) {
    IOSObjectArray_Set(nil_chk(mValues_), i, value);
  }
  else {
    i = ~i;
    if (i < mSize_ && IOSObjectArray_Get(nil_chk(mValues_), i) == ADLongSparseArray_DELETED) {
      *IOSLongArray_GetRef(nil_chk(mKeys_), i) = key;
      IOSObjectArray_Set(nil_chk(mValues_), i, value);
      return;
    }
    if (mGarbage_ && mSize_ >= ((IOSLongArray *) nil_chk(mKeys_))->size_) {
      ADLongSparseArray_gc(self);
      i = ~ADContainerHelpers_binarySearchWithLongArray_withInt_withLong_(mKeys_, mSize_, key);
    }
    JreStrongAssign(&mKeys_, ADGrowingArrayUtils_insertWithLongArray_withInt_withInt_withLong_(mKeys_, mSize_, i, key));
    JreStrongAssign(&mValues_, ADGrowingArrayUtils_insertWithNSObjectArray_withInt_withInt_withId_(mValues_, mSize_, i, value));
    mSize_++;
  }
}

- (jint)size {
  if (mGarbage_) {
    ADLongSparseArray_gc(self);
  }
  return mSize_;
}

- (jlong)keyAtWithInt:(jint)index {
  if (mGarbage_) {
    ADLongSparseArray_gc(self);
  }
  return IOSLongArray_Get(nil_chk(mKeys_), index);
}

- (id)valueAtWithInt:(jint)index {
  if (mGarbage_) {
    ADLongSparseArray_gc(self);
  }
  return IOSObjectArray_Get(nil_chk(mValues_), index);
}

- (void)setValueAtWithInt:(jint)index
                   withId:(id)value {
  if (mGarbage_) {
    ADLongSparseArray_gc(self);
  }
  IOSObjectArray_Set(nil_chk(mValues_), index, value);
}

- (jint)indexOfKeyWithLong:(jlong)key {
  if (mGarbage_) {
    ADLongSparseArray_gc(self);
  }
  return ADContainerHelpers_binarySearchWithLongArray_withInt_withLong_(mKeys_, mSize_, key);
}

- (jint)indexOfValueWithId:(id)value {
  if (mGarbage_) {
    ADLongSparseArray_gc(self);
  }
  for (jint i = 0; i < mSize_; i++) if (IOSObjectArray_Get(nil_chk(mValues_), i) == value) return i;
  return -1;
}

- (void)clear {
  jint n = mSize_;
  IOSObjectArray *values = mValues_;
  for (jint i = 0; i < n; i++) {
    IOSObjectArray_Set(nil_chk(values), i, nil);
  }
  mSize_ = 0;
  mGarbage_ = false;
}

- (void)appendWithLong:(jlong)key
                withId:(id)value {
  if (mSize_ != 0 && key <= IOSLongArray_Get(nil_chk(mKeys_), mSize_ - 1)) {
    [self putWithLong:key withId:value];
    return;
  }
  if (mGarbage_ && mSize_ >= ((IOSLongArray *) nil_chk(mKeys_))->size_) {
    ADLongSparseArray_gc(self);
  }
  JreStrongAssign(&mKeys_, ADGrowingArrayUtils_appendWithLongArray_withInt_withLong_(mKeys_, mSize_, key));
  JreStrongAssign(&mValues_, ADGrowingArrayUtils_appendWithNSObjectArray_withInt_withId_(mValues_, mSize_, value));
  mSize_++;
}

- (NSString *)description {
  if ([self size] <= 0) {
    return @"{}";
  }
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_initWithInt_(mSize_ * 28);
  [buffer appendWithChar:'{'];
  for (jint i = 0; i < mSize_; i++) {
    if (i > 0) {
      [buffer appendWithNSString:@", "];
    }
    jlong key = [self keyAtWithInt:i];
    [buffer appendWithLong:key];
    [buffer appendWithChar:'='];
    id value = JreRetainedLocalValue([self valueAtWithInt:i]);
    if (value != self) {
      [buffer appendWithId:value];
    }
    else {
      [buffer appendWithNSString:@"(this Map)"];
    }
  }
  [buffer appendWithChar:'}'];
  return [buffer description];
}

- (void)dealloc {
  RELEASE_(mKeys_);
  RELEASE_(mValues_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LADLongSparseArray;", 0x1, 1, -1, -1, 2, -1, -1 },
    { NULL, "LNSObject;", 0x1, 3, 4, -1, 5, -1, -1 },
    { NULL, "LNSObject;", 0x1, 3, 6, -1, 7, -1, -1 },
    { NULL, "V", 0x1, 8, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 6, -1, 12, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 13, 0, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 14, 0, -1, 15, -1, -1 },
    { NULL, "V", 0x1, 16, 17, -1, 18, -1, -1 },
    { NULL, "I", 0x1, 19, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 20, 21, -1, 22, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 6, -1, 12, -1, -1 },
    { NULL, "LNSString;", 0x1, 24, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(java_clone);
  methods[3].selector = @selector(getWithLong:);
  methods[4].selector = @selector(getWithLong:withId:);
  methods[5].selector = @selector(delete__WithLong:);
  methods[6].selector = @selector(removeWithLong:);
  methods[7].selector = @selector(removeAtWithInt:);
  methods[8].selector = @selector(gc);
  methods[9].selector = @selector(putWithLong:withId:);
  methods[10].selector = @selector(size);
  methods[11].selector = @selector(keyAtWithInt:);
  methods[12].selector = @selector(valueAtWithInt:);
  methods[13].selector = @selector(setValueAtWithInt:withId:);
  methods[14].selector = @selector(indexOfKeyWithLong:);
  methods[15].selector = @selector(indexOfValueWithId:);
  methods[16].selector = @selector(clear);
  methods[17].selector = @selector(appendWithLong:withId:);
  methods[18].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DELETED", "LNSObject;", .constantValue.asLong = 0, 0x1a, -1, 25, -1, -1 },
    { "mGarbage_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mKeys_", "[J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mValues_", "[LNSObject;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "clone", "()Lr/android/util/LongSparseArray<TE;>;", "get", "J", "(J)TE;", "JLNSObject;", "(JTE;)TE;", "delete", "remove", "removeAt", "put", "(JTE;)V", "keyAt", "valueAt", "(I)TE;", "setValueAt", "ILNSObject;", "(ITE;)V", "indexOfKey", "indexOfValue", "LNSObject;", "(TE;)I", "append", "toString", &ADLongSparseArray_DELETED, "<E:Ljava/lang/Object;>Ljava/lang/Object;Ljava/lang/Cloneable;" };
  static const J2ObjcClassInfo _ADLongSparseArray = { "LongSparseArray", "r.android.util", ptrTable, methods, fields, 7, 0x1, 19, 5, -1, -1, -1, 26, -1 };
  return &_ADLongSparseArray;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

+ (void)initialize {
  if (self == [ADLongSparseArray class]) {
    JreStrongAssignAndConsume(&ADLongSparseArray_DELETED, new_NSObject_init());
    J2OBJC_SET_INITIALIZED(ADLongSparseArray)
  }
}

@end

void ADLongSparseArray_init(ADLongSparseArray *self) {
  ADLongSparseArray_initWithInt_(self, 10);
}

ADLongSparseArray *new_ADLongSparseArray_init() {
  J2OBJC_NEW_IMPL(ADLongSparseArray, init)
}

ADLongSparseArray *create_ADLongSparseArray_init() {
  J2OBJC_CREATE_IMPL(ADLongSparseArray, init)
}

void ADLongSparseArray_initWithInt_(ADLongSparseArray *self, jint initialCapacity) {
  NSObject_init(self);
  self->mGarbage_ = false;
  if (initialCapacity == 0) {
    JreStrongAssignAndConsume(&self->mKeys_, [IOSLongArray newArrayWithLength:0]);
    JreStrongAssignAndConsume(&self->mValues_, [IOSObjectArray newArrayWithLength:0 type:NSObject_class_()]);
  }
  else {
    JreStrongAssignAndConsume(&self->mKeys_, [IOSLongArray newArrayWithLength:initialCapacity]);
    JreStrongAssignAndConsume(&self->mValues_, [IOSObjectArray newArrayWithLength:initialCapacity type:NSObject_class_()]);
  }
  self->mSize_ = 0;
}

ADLongSparseArray *new_ADLongSparseArray_initWithInt_(jint initialCapacity) {
  J2OBJC_NEW_IMPL(ADLongSparseArray, initWithInt_, initialCapacity)
}

ADLongSparseArray *create_ADLongSparseArray_initWithInt_(jint initialCapacity) {
  J2OBJC_CREATE_IMPL(ADLongSparseArray, initWithInt_, initialCapacity)
}

void ADLongSparseArray_gc(ADLongSparseArray *self) {
  jint n = self->mSize_;
  jint o = 0;
  IOSLongArray *keys = self->mKeys_;
  IOSObjectArray *values = self->mValues_;
  for (jint i = 0; i < n; i++) {
    id val = IOSObjectArray_Get(nil_chk(values), i);
    if (val != ADLongSparseArray_DELETED) {
      if (i != o) {
        *IOSLongArray_GetRef(nil_chk(keys), o) = IOSLongArray_Get(keys, i);
        IOSObjectArray_Set(values, o, val);
        IOSObjectArray_Set(values, i, nil);
      }
      o++;
    }
  }
  self->mGarbage_ = false;
  self->mSize_ = o;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADLongSparseArray)