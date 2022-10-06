//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_Converter\src\com\ashera\converter\AbstractBitFlagConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AbstractBitFlagConverter")
#ifdef RESTRICT_AbstractBitFlagConverter
#define INCLUDE_ALL_AbstractBitFlagConverter 0
#else
#define INCLUDE_ALL_AbstractBitFlagConverter 1
#endif
#undef RESTRICT_AbstractBitFlagConverter

#if !defined (ASAbstractBitFlagConverter_) && (INCLUDE_ALL_AbstractBitFlagConverter || defined(INCLUDE_ASAbstractBitFlagConverter))
#define ASAbstractBitFlagConverter_

#define RESTRICT_IConverter 1
#define INCLUDE_ASIConverter 1
#include "IConverter.h"

@class JavaLangInteger;
@protocol ASIFragment;
@protocol JavaUtilCollection;
@protocol JavaUtilList;
@protocol JavaUtilMap;

@interface ASAbstractBitFlagConverter : NSObject < ASIConverter >

#pragma mark Public

- (instancetype)init;

- (JavaLangInteger *)convertFromWithId:(NSString *)value
                       withJavaUtilMap:(id<JavaUtilMap>)dependentAttributesMap
                       withASIFragment:(id<ASIFragment>)fragment;

- (NSString *)convertToWithId:(JavaLangInteger *)value
              withASIFragment:(id<ASIFragment>)fragment;

- (NSString *)getAllOption;

- (JavaLangInteger *)getDefault;

- (id<JavaUtilList>)getDependentAttributes;

- (id<JavaUtilMap>)getMapping;

- (id<JavaUtilCollection>)getReverseMappingFlags;

@end

J2OBJC_EMPTY_STATIC_INIT(ASAbstractBitFlagConverter)

FOUNDATION_EXPORT void ASAbstractBitFlagConverter_init(ASAbstractBitFlagConverter *self);

J2OBJC_TYPE_LITERAL_HEADER(ASAbstractBitFlagConverter)

@compatibility_alias ComAsheraConverterAbstractBitFlagConverter ASAbstractBitFlagConverter;

#endif

#pragma pop_macro("INCLUDE_ALL_AbstractBitFlagConverter")