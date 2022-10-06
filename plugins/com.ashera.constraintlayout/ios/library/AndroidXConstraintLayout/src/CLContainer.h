//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\parser\CLContainer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CLContainer")
#ifdef RESTRICT_CLContainer
#define INCLUDE_ALL_CLContainer 0
#else
#define INCLUDE_ALL_CLContainer 1
#endif
#undef RESTRICT_CLContainer

#if !defined (ADXCLContainer_) && (INCLUDE_ALL_CLContainer || defined(INCLUDE_ADXCLContainer))
#define ADXCLContainer_

#define RESTRICT_CLElement 1
#define INCLUDE_ADXCLElement 1
#include "CLElement.h"

@class ADXCLArray;
@class ADXCLObject;
@class IOSCharArray;
@class JavaUtilArrayList;

@interface ADXCLContainer : ADXCLElement {
 @public
  JavaUtilArrayList *mElements_;
}

#pragma mark Public

- (instancetype)initWithCharArray:(IOSCharArray *)content;

- (void)addWithADXCLElement:(ADXCLElement *)element;

+ (ADXCLElement *)allocateWithCharArray:(IOSCharArray *)content OBJC_METHOD_FAMILY_NONE;

- (ADXCLElement *)getWithInt:(jint)index;

- (ADXCLElement *)getWithNSString:(NSString *)name;

- (ADXCLArray *)getArrayWithInt:(jint)index;

- (ADXCLArray *)getArrayWithNSString:(NSString *)name;

- (ADXCLArray *)getArrayOrNullWithNSString:(NSString *)name;

- (jboolean)getBooleanWithInt:(jint)index;

- (jboolean)getBooleanWithNSString:(NSString *)name;

- (jfloat)getFloatWithInt:(jint)index;

- (jfloat)getFloatWithNSString:(NSString *)name;

- (jfloat)getFloatOrNaNWithNSString:(NSString *)name;

- (jint)getIntWithInt:(jint)index;

- (jint)getIntWithNSString:(NSString *)name;

- (ADXCLObject *)getObjectWithInt:(jint)index;

- (ADXCLObject *)getObjectWithNSString:(NSString *)name;

- (ADXCLObject *)getObjectOrNullWithNSString:(NSString *)name;

- (ADXCLElement *)getOrNullWithInt:(jint)index;

- (ADXCLElement *)getOrNullWithNSString:(NSString *)name;

- (NSString *)getStringWithInt:(jint)index;

- (NSString *)getStringWithNSString:(NSString *)name;

- (NSString *)getStringOrNullWithInt:(jint)index;

- (NSString *)getStringOrNullWithNSString:(NSString *)name;

- (jboolean)hasWithNSString:(NSString *)name;

- (JavaUtilArrayList *)names;

- (void)putWithNSString:(NSString *)name
       withADXCLElement:(ADXCLElement *)value;

- (void)putNumberWithNSString:(NSString *)name
                    withFloat:(jfloat)value;

- (void)removeWithNSString:(NSString *)name;

- (jint)size;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXCLContainer)

J2OBJC_FIELD_SETTER(ADXCLContainer, mElements_, JavaUtilArrayList *)

FOUNDATION_EXPORT void ADXCLContainer_initWithCharArray_(ADXCLContainer *self, IOSCharArray *content);

FOUNDATION_EXPORT ADXCLContainer *new_ADXCLContainer_initWithCharArray_(IOSCharArray *content) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCLContainer *create_ADXCLContainer_initWithCharArray_(IOSCharArray *content);

FOUNDATION_EXPORT ADXCLElement *ADXCLContainer_allocateWithCharArray_(IOSCharArray *content);

J2OBJC_TYPE_LITERAL_HEADER(ADXCLContainer)

@compatibility_alias AndroidxConstraintlayoutCoreParserCLContainer ADXCLContainer;

#endif

#pragma pop_macro("INCLUDE_ALL_CLContainer")