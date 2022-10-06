//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSCorePlugin\src\main\java\com\ashera\core\AttributedStringImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AttributedStringImpl")
#ifdef RESTRICT_AttributedStringImpl
#define INCLUDE_ALL_AttributedStringImpl 0
#else
#define INCLUDE_ALL_AttributedStringImpl 1
#endif
#undef RESTRICT_AttributedStringImpl

#if !defined (ASAttributedStringImpl_) && (INCLUDE_ALL_AttributedStringImpl || defined(INCLUDE_ASAttributedStringImpl))
#define ASAttributedStringImpl_

#define RESTRICT_AttributedString 1
#define INCLUDE_ASAttributedString 1
#include "AttributedString.h"

@protocol ASIFragment;

@interface ASAttributedStringImpl : NSObject < ASAttributedString >

#pragma mark Public

- (instancetype)initWithASIFragment:(id<ASIFragment>)fragment
                       withNSString:(NSString *)text;

- (void)applyBackgroundColorWithId:(id)color
                           withInt:(jint)start
                           withInt:(jint)end;

- (void)applyBulletWithInt:(jint)indent
                   withInt:(jint)spacing
                   withInt:(jint)start
                   withInt:(jint)end;

- (void)applyColorWithId:(id)color
                 withInt:(jint)start
                 withInt:(jint)end;

- (id)applyFontWithId:(id)font
            withFloat:(jfloat)textSize
          withBoolean:(jboolean)isBold
          withBoolean:(jboolean)isItalics
              withInt:(jint)start
              withInt:(jint)end;

- (void)applyFontWithId:(id)typeFace
              withFloat:(jfloat)textSize
                withInt:(jint)style
                withInt:(jint)start
                withInt:(jint)end;

- (void)applyImgWithId:(id)image
               withInt:(jint)start
               withInt:(jint)end;

- (void)applyLineHeightWithFloat:(jfloat)height
                         withInt:(jint)start
                         withInt:(jint)end;

- (void)applyStrikeThroughWithInt:(jint)start
                          withInt:(jint)end;

- (void)applySubscriptWithFloat:(jfloat)textSize
                        withInt:(jint)start
                        withInt:(jint)end;

- (void)applySuperscriptWithFloat:(jfloat)textSize
                          withInt:(jint)start
                          withInt:(jint)end;

- (void)applyTextAlignWithNSString:(NSString *)value
                           withInt:(jint)start
                           withInt:(jint)end;

- (void)applyTextAlignCenterWithInt:(jint)start
                            withInt:(jint)end;

- (void)applyTextAlignLeftWithInt:(jint)start
                          withInt:(jint)end;

- (void)applyTextAlignRightWithInt:(jint)start
                           withInt:(jint)end;

- (void)applyUnderLineWithInt:(jint)start
                      withInt:(jint)end;

- (void)applyUrlWithNSString:(NSString *)href
                      withId:(id)color
                     withInt:(jint)start
                     withInt:(jint)end;

- (void)applyVerticalAlignWithNSString:(NSString *)verticalAlign
                               withInt:(jint)start
                               withInt:(jint)end;

- (id)get;

- (id)getFontWithNSString:(NSString *)typeFace
                withFloat:(jfloat)textSize;

- (NSString *)getText;

- (void)init__WithInt:(jint)start
              withInt:(jint)end OBJC_METHOD_FAMILY_NONE;

- (void)init__WithNSString:(NSString *)text OBJC_METHOD_FAMILY_NONE;

- (void)nativeApplyImgWithId:(id)image
                     withInt:(jint)start
                     withInt:(jint)end;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASAttributedStringImpl)

FOUNDATION_EXPORT void ASAttributedStringImpl_initWithASIFragment_withNSString_(ASAttributedStringImpl *self, id<ASIFragment> fragment, NSString *text);

FOUNDATION_EXPORT ASAttributedStringImpl *new_ASAttributedStringImpl_initWithASIFragment_withNSString_(id<ASIFragment> fragment, NSString *text) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASAttributedStringImpl *create_ASAttributedStringImpl_initWithASIFragment_withNSString_(id<ASIFragment> fragment, NSString *text);

J2OBJC_TYPE_LITERAL_HEADER(ASAttributedStringImpl)

@compatibility_alias ComAsheraCoreAttributedStringImpl ASAttributedStringImpl;

#endif

#pragma pop_macro("INCLUDE_ALL_AttributedStringImpl")
