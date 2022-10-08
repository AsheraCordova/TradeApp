//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\converter\DimensionSpPxIntConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_DimensionSpPxIntConverter")
#ifdef RESTRICT_DimensionSpPxIntConverter
#define INCLUDE_ALL_DimensionSpPxIntConverter 0
#else
#define INCLUDE_ALL_DimensionSpPxIntConverter 1
#endif
#undef RESTRICT_DimensionSpPxIntConverter

#if !defined (ASDimensionSpPxIntConverter_) && (INCLUDE_ALL_DimensionSpPxIntConverter || defined(INCLUDE_ASDimensionSpPxIntConverter))
#define ASDimensionSpPxIntConverter_

#define RESTRICT_IConverter 1
#define INCLUDE_ASIConverter 1
#include "IConverter.h"

@class JavaLangInteger;
@protocol ASIFragment;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface ASDimensionSpPxIntConverter : NSObject < ASIConverter >

#pragma mark Public

- (instancetype)init;

- (JavaLangInteger *)convertFromWithId:(NSString *)dimen
                       withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                       withASIFragment:(id<ASIFragment>)fragment;

- (NSString *)convertToWithId:(JavaLangInteger *)value
              withASIFragment:(id<ASIFragment>)fragment;

- (id<JavaUtilList>)getDependentAttributes;

@end

J2OBJC_EMPTY_STATIC_INIT(ASDimensionSpPxIntConverter)

FOUNDATION_EXPORT void ASDimensionSpPxIntConverter_init(ASDimensionSpPxIntConverter *self);

FOUNDATION_EXPORT ASDimensionSpPxIntConverter *new_ASDimensionSpPxIntConverter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASDimensionSpPxIntConverter *create_ASDimensionSpPxIntConverter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASDimensionSpPxIntConverter)

@compatibility_alias ComAsheraConverterDimensionSpPxIntConverter ASDimensionSpPxIntConverter;

#endif

#pragma pop_macro("INCLUDE_ALL_DimensionSpPxIntConverter")