//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\model\TestCase.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_TestCase")
#ifdef RESTRICT_TestCase
#define INCLUDE_ALL_TestCase 0
#else
#define INCLUDE_ALL_TestCase 1
#endif
#undef RESTRICT_TestCase

#if !defined (ASTestCase_) && (INCLUDE_ALL_TestCase || defined(INCLUDE_ASTestCase))
#define ASTestCase_

@class JavaUtilHashMap;

@interface ASTestCase : NSObject

#pragma mark Public

- (instancetype)init;

- (JavaUtilHashMap *)getTestCaseData;

- (void)setTestCaseDataWithJavaUtilHashMap:(JavaUtilHashMap *)testCaseData;

@end

J2OBJC_EMPTY_STATIC_INIT(ASTestCase)

FOUNDATION_EXPORT void ASTestCase_init(ASTestCase *self);

FOUNDATION_EXPORT ASTestCase *new_ASTestCase_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASTestCase *create_ASTestCase_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASTestCase)

@compatibility_alias ComAsheraModelTestCase ASTestCase;

#endif

#pragma pop_macro("INCLUDE_ALL_TestCase")
