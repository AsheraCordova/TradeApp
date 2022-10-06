//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\css_parser\src\com\ashera\css\CssTree.java
//

#include "CssResult.h"
#include "CssTree.h"
#include "FontFace.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"

@class JavaUtilHashMap;
@protocol JavaUtilList;


@interface CSSCssTree () {
 @public
  JavaUtilHashMap *attributes_;
  id<JavaUtilList> fontFaces_;
  CSSFontFace *fontFace_;
}

- (void)updateAttributesWithNSString:(NSString *)selector
                    withCSSCssResult:(id<CSSCssResult>)cssResult;

@end

J2OBJC_FIELD_SETTER(CSSCssTree, attributes_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(CSSCssTree, fontFaces_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(CSSCssTree, fontFace_, CSSFontFace *)

__attribute__((unused)) static void CSSCssTree_updateAttributesWithNSString_withCSSCssResult_(CSSCssTree *self, NSString *selector, id<CSSCssResult> cssResult);

@implementation CSSCssTree

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  CSSCssTree_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)end {
  if (![((id<JavaUtilMap>) nil_chk([((CSSFontFace *) nil_chk(fontFace_)) getFontConfig])) isEmpty]) {
    JreStrongAssignAndConsume(&fontFace_, new_CSSFontFace_init());
  }
}

- (void)setAttributeWithNSString:(NSString *)gaurdKeys
                    withNSString:(NSString *)gaurdValues
                    withNSString:(NSString *)attributeName
                    withNSString:(NSString *)key
                    withNSString:(NSString *)value {
  value = [((NSString *) nil_chk(value)) java_replace:@"\"" withSequence:@""];
  if ([((NSString *) nil_chk(attributeName)) isEqual:@"@font-face"]) {
    [((id<JavaUtilMap>) nil_chk([((CSSFontFace *) nil_chk(fontFace_)) getFontConfig])) putWithId:key withId:value];
    if (![((id<JavaUtilList>) nil_chk(fontFaces_)) containsWithId:fontFace_]) {
      [((id<JavaUtilList>) nil_chk(fontFaces_)) addWithId:fontFace_];
    }
    return;
  }
  id<JavaUtilList> attributeLst = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(attributes_)) getWithId:attributeName]);
  if (attributeLst == nil) {
    attributeLst = create_JavaUtilArrayList_init();
    [((JavaUtilHashMap *) nil_chk(attributes_)) putWithId:attributeName withId:attributeLst];
  }
  CSSCssTree_Attribute *e = create_CSSCssTree_Attribute_initWithCSSCssTree_withNSString_withNSString_(self, key, value);
  [attributeLst addWithId:e];
  if (![((NSString *) nil_chk(gaurdKeys)) isEqual:@"default"]) {
    IOSObjectArray *keys = [gaurdKeys java_split:@","];
    IOSObjectArray *values = [((NSString *) nil_chk(gaurdValues)) java_split:@","];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(keys))->size_; i++) {
      NSString *gaurdKey = IOSObjectArray_Get(keys, i);
      switch (JreIndexOfStr(gaurdKey, (id[]){ @"orientation", @"min-width", @"max-width", @"min-height", @"max-height" }, 5)) {
        case 0:
        JreStrongAssign(&e->orientation_, IOSObjectArray_Get(nil_chk(values), i));
        break;
        case 1:
        JreStrongAssign(&e->minWidth_, IOSObjectArray_Get(nil_chk(values), i));
        break;
        case 2:
        JreStrongAssign(&e->maxWidth_, IOSObjectArray_Get(nil_chk(values), i));
        break;
        case 3:
        JreStrongAssign(&e->minHeight_, IOSObjectArray_Get(nil_chk(values), i));
        break;
        case 4:
        JreStrongAssign(&e->maxHeight_, IOSObjectArray_Get(nil_chk(values), i));
        break;
        default:
        break;
      }
    }
  }
}

- (id<JavaUtilList>)getStyleWithNSString:(NSString *)selector {
  return [((JavaUtilHashMap *) nil_chk(attributes_)) getWithId:selector];
}

- (void)getCssWithNSString:(NSString *)tag
              withNSString:(NSString *)classNames
              withNSString:(NSString *)id_
          withCSSCssResult:(id<CSSCssResult>)cssResult {
  CSSCssTree_updateAttributesWithNSString_withCSSCssResult_(self, tag, cssResult);
  if (classNames != nil) {
    IOSObjectArray *selectorArr = [classNames java_split:@"\\s"];
    {
      IOSObjectArray *a__ = selectorArr;
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *selector = *b__++;
        CSSCssTree_updateAttributesWithNSString_withCSSCssResult_(self, JreStrcat("C$", '.', selector), cssResult);
      }
    }
  }
  CSSCssTree_updateAttributesWithNSString_withCSSCssResult_(self, JreStrcat("C$", '#', id_), cssResult);
}

- (id<JavaUtilList>)getFontFaces {
  return fontFaces_;
}

- (void)updateAttributesWithNSString:(NSString *)selector
                    withCSSCssResult:(id<CSSCssResult>)cssResult {
  CSSCssTree_updateAttributesWithNSString_withCSSCssResult_(self, selector, cssResult);
}

- (void)dealloc {
  RELEASE_(attributes_);
  RELEASE_(fontFaces_);
  RELEASE_(fontFace_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, 2, 3, -1, 4, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 7, -1, -1 },
    { NULL, "V", 0x2, 8, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(end);
  methods[2].selector = @selector(setAttributeWithNSString:withNSString:withNSString:withNSString:withNSString:);
  methods[3].selector = @selector(getStyleWithNSString:);
  methods[4].selector = @selector(getCssWithNSString:withNSString:withNSString:withCSSCssResult:);
  methods[5].selector = @selector(getFontFaces);
  methods[6].selector = @selector(updateAttributesWithNSString:withCSSCssResult:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "attributes_", "LJavaUtilHashMap;", .constantValue.asLong = 0, 0x2, -1, -1, 10, -1 },
    { "fontFaces_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 11, -1 },
    { "fontFace_", "LCSSFontFace;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setAttribute", "LNSString;LNSString;LNSString;LNSString;LNSString;", "getStyle", "LNSString;", "(Ljava/lang/String;)Ljava/util/List<Lcom/ashera/css/CssTree$Attribute;>;", "getCss", "LNSString;LNSString;LNSString;LCSSCssResult;", "()Ljava/util/List<Lcom/ashera/parser/css/FontFace;>;", "updateAttributes", "LNSString;LCSSCssResult;", "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/ashera/css/CssTree$Attribute;>;>;", "Ljava/util/List<Lcom/ashera/parser/css/FontFace;>;", "LCSSCssTree_Attribute;" };
  static const J2ObjcClassInfo _CSSCssTree = { "CssTree", "com.ashera.css", ptrTable, methods, fields, 7, 0x1, 7, 3, -1, 12, -1, -1, -1 };
  return &_CSSCssTree;
}

@end

void CSSCssTree_init(CSSCssTree *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->attributes_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->fontFaces_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->fontFace_, new_CSSFontFace_init());
}

CSSCssTree *new_CSSCssTree_init() {
  J2OBJC_NEW_IMPL(CSSCssTree, init)
}

CSSCssTree *create_CSSCssTree_init() {
  J2OBJC_CREATE_IMPL(CSSCssTree, init)
}

void CSSCssTree_updateAttributesWithNSString_withCSSCssResult_(CSSCssTree *self, NSString *selector, id<CSSCssResult> cssResult) {
  id<JavaUtilList> attributeLst = JreRetainedLocalValue([((JavaUtilHashMap *) nil_chk(self->attributes_)) getWithId:selector]);
  if (attributeLst != nil) {
    for (CSSCssTree_Attribute * __strong attribute in attributeLst) {
      [((id<CSSCssResult>) nil_chk(cssResult)) putWithNSString:((CSSCssTree_Attribute *) nil_chk(attribute))->key_ withCSSCssTree_Attribute:attribute];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CSSCssTree)

@implementation CSSCssTree_Attribute

- (instancetype)initWithCSSCssTree:(CSSCssTree *)outer$
                      withNSString:(NSString *)key
                      withNSString:(NSString *)value {
  CSSCssTree_Attribute_initWithCSSCssTree_withNSString_withNSString_(self, outer$, key, value);
  return self;
}

- (void)dealloc {
  RELEASE_(key_);
  RELEASE_(value_);
  RELEASE_(orientation_);
  RELEASE_(minWidth_);
  RELEASE_(minHeight_);
  RELEASE_(maxWidth_);
  RELEASE_(maxHeight_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithCSSCssTree:withNSString:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "key_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "value_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "orientation_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "minWidth_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "minHeight_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "maxWidth_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "maxHeight_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LCSSCssTree;LNSString;LNSString;", "LCSSCssTree;" };
  static const J2ObjcClassInfo _CSSCssTree_Attribute = { "Attribute", "com.ashera.css", ptrTable, methods, fields, 7, 0x1, 1, 7, 1, -1, -1, -1, -1 };
  return &_CSSCssTree_Attribute;
}

@end

void CSSCssTree_Attribute_initWithCSSCssTree_withNSString_withNSString_(CSSCssTree_Attribute *self, CSSCssTree *outer$, NSString *key, NSString *value) {
  NSObject_init(self);
  JreStrongAssign(&self->orientation_, @"default");
  JreStrongAssign(&self->key_, key);
  JreStrongAssign(&self->value_, value);
}

CSSCssTree_Attribute *new_CSSCssTree_Attribute_initWithCSSCssTree_withNSString_withNSString_(CSSCssTree *outer$, NSString *key, NSString *value) {
  J2OBJC_NEW_IMPL(CSSCssTree_Attribute, initWithCSSCssTree_withNSString_withNSString_, outer$, key, value)
}

CSSCssTree_Attribute *create_CSSCssTree_Attribute_initWithCSSCssTree_withNSString_withNSString_(CSSCssTree *outer$, NSString *key, NSString *value) {
  J2OBJC_CREATE_IMPL(CSSCssTree_Attribute, initWithCSSCssTree_withNSString_withNSString_, outer$, key, value)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CSSCssTree_Attribute)