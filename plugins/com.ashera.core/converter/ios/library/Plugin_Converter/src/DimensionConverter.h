//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\converter\DimensionConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_DimensionConverter")
#ifdef RESTRICT_DimensionConverter
#define INCLUDE_ALL_DimensionConverter 0
#else
#define INCLUDE_ALL_DimensionConverter 1
#endif
#undef RESTRICT_DimensionConverter

#if !defined (ASDimensionConverter_) && (INCLUDE_ALL_DimensionConverter || defined(INCLUDE_ASDimensionConverter))
#define ASDimensionConverter_

#define RESTRICT_IConverter 1
#define INCLUDE_ASIConverter 1
#include "IConverter.h"

@class JavaLangInteger;
@protocol ASIFragment;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface ASDimensionConverter : NSObject < ASIConverter >

#pragma mark Public

- (instancetype)init;

- (JavaLangInteger *)convertFromWithId:(NSString *)dimen
                       withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                       withASIFragment:(id<ASIFragment>)fragment;

- (NSString *)convertToWithId:(JavaLangInteger *)value
              withASIFragment:(id<ASIFragment>)fragment;

- (id<JavaUtilList>)getDependentAttributes;

@end

J2OBJC_EMPTY_STATIC_INIT(ASDimensionConverter)

FOUNDATION_EXPORT void ASDimensionConverter_init(ASDimensionConverter *self);

FOUNDATION_EXPORT ASDimensionConverter *new_ASDimensionConverter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASDimensionConverter *create_ASDimensionConverter_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASDimensionConverter)

@compatibility_alias ComAsheraConverterDimensionConverter ASDimensionConverter;

#endif

#pragma pop_macro("INCLUDE_ALL_DimensionConverter")