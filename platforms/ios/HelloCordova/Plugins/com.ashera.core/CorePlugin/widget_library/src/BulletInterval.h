//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\attributedtext\BulletInterval.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_BulletInterval")
#ifdef RESTRICT_BulletInterval
#define INCLUDE_ALL_BulletInterval 0
#else
#define INCLUDE_ALL_BulletInterval 1
#endif
#undef RESTRICT_BulletInterval

#if !defined (ASBulletInterval_) && (INCLUDE_ALL_BulletInterval || defined(INCLUDE_ASBulletInterval))
#define ASBulletInterval_

#define RESTRICT_StyleInterval 1
#define INCLUDE_ASStyleInterval 1
#include "StyleInterval.h"

@class ASInterval;
@class ASWidgetAttributeMap;
@class IOSObjectArray;

@interface ASBulletInterval : ASStyleInterval

#pragma mark Public

- (instancetype)initWithInt:(jint)start
                    withInt:(jint)end
   withASWidgetAttributeMap:(ASWidgetAttributeMap *)style
                    withInt:(jint)indent
                    withInt:(jint)bulletSpacing;

- (IOSObjectArray *)getArgs;

- (jint)getBulletSpacing;

- (jint)getIndent;

- (ASInterval *)makeNodeWithInt:(jint)start
                        withInt:(jint)end
              withNSObjectArray:(IOSObjectArray *)arguments;

- (void)setBulletSpacingWithInt:(jint)bulletSpacing;

- (void)setIndentWithInt:(jint)indent;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithInt:(jint)arg0
                    withInt:(jint)arg1
   withASWidgetAttributeMap:(ASWidgetAttributeMap *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASBulletInterval)

FOUNDATION_EXPORT void ASBulletInterval_initWithInt_withInt_withASWidgetAttributeMap_withInt_withInt_(ASBulletInterval *self, jint start, jint end, ASWidgetAttributeMap *style, jint indent, jint bulletSpacing);

FOUNDATION_EXPORT ASBulletInterval *new_ASBulletInterval_initWithInt_withInt_withASWidgetAttributeMap_withInt_withInt_(jint start, jint end, ASWidgetAttributeMap *style, jint indent, jint bulletSpacing) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASBulletInterval *create_ASBulletInterval_initWithInt_withInt_withASWidgetAttributeMap_withInt_withInt_(jint start, jint end, ASWidgetAttributeMap *style, jint indent, jint bulletSpacing);

J2OBJC_TYPE_LITERAL_HEADER(ASBulletInterval)

@compatibility_alias ComAsheraAttributedtextBulletInterval ASBulletInterval;

#endif

#pragma pop_macro("INCLUDE_ALL_BulletInterval")