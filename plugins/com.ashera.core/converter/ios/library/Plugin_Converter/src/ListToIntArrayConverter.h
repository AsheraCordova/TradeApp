//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\converter\ListToIntArrayConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ListToIntArrayConverter")
#ifdef RESTRICT_ListToIntArrayConverter
#define INCLUDE_ALL_ListToIntArrayConverter 0
#else
#define INCLUDE_ALL_ListToIntArrayConverter 1
#endif
#undef RESTRICT_ListToIntArrayConverter

#if !defined (ASListToIntArrayConverter_) && (INCLUDE_ALL_ListToIntArrayConverter || defined(INCLUDE_ASListToIntArrayConverter))
#define ASListToIntArrayConverter_

#define RESTRICT_IConverter 1
#define INCLUDE_ASIConverter 1
#include "IConverter.h"

@class IOSIntArray;
@protocol ASIFragment;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface ASListToIntArrayConverter : NSObject < ASIConverter >

#pragma mark Public

- (instancetype)init;

- (IOSIntArray *)convertFromWithId:(id<JavaUtilList>)list
                   withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                   withASIFragment:(id<ASIFragment>)fragment;

- (IOSIntArray *)convertIntegersWithJavaUtilList:(id<JavaUtilList>)integers;

- (id<JavaUtilList>)convertToWithId:(IOSIntArray *)value
                    withASIFragment:(id<ASIFragment>)fragment;

- (id<JavaUtilList>)getDependentAttributes;

@end

J2OBJC_EMPTY_STATIC_INIT(ASListToIntArrayConverter)

FOUNDATION_EXPORT void ASListToIntArrayConverter_init(ASListToIntArrayConverter *self);

FOUNDATION_EXPORT ASListToIntArrayConverter *new_ASListToIntArrayConverter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASListToIntArrayConverter *create_ASListToIntArrayConverter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASListToIntArrayConverter)

@compatibility_alias ComAsheraConverterListToIntArrayConverter ASListToIntArrayConverter;

#endif

#pragma pop_macro("INCLUDE_ALL_ListToIntArrayConverter")
