//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSCorePlugin\src\main\java\com\ashera\core\ShapeDrawableImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ShapeDrawableImpl")
#ifdef RESTRICT_ShapeDrawableImpl
#define INCLUDE_ALL_ShapeDrawableImpl 0
#else
#define INCLUDE_ALL_ShapeDrawableImpl 1
#endif
#undef RESTRICT_ShapeDrawableImpl

#if !defined (ASShapeDrawableImpl_) && (INCLUDE_ALL_ShapeDrawableImpl || defined(INCLUDE_ASShapeDrawableImpl))
#define ASShapeDrawableImpl_

#define RESTRICT_ShapeDrawable 1
#define INCLUDE_ADShapeDrawable 1
#include "ShapeDrawable.h"

@class ADRect;

@interface ASShapeDrawableImpl : ADShapeDrawable

#pragma mark Public

- (instancetype)init;

- (id)getDrawable;

#pragma mark Protected

- (void)onBoundsChangeWithADRect:(ADRect *)bounds;

@end

J2OBJC_EMPTY_STATIC_INIT(ASShapeDrawableImpl)

FOUNDATION_EXPORT void ASShapeDrawableImpl_init(ASShapeDrawableImpl *self);

FOUNDATION_EXPORT ASShapeDrawableImpl *new_ASShapeDrawableImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASShapeDrawableImpl *create_ASShapeDrawableImpl_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASShapeDrawableImpl)

@compatibility_alias ComAsheraCoreShapeDrawableImpl ASShapeDrawableImpl;

#endif

#pragma pop_macro("INCLUDE_ALL_ShapeDrawableImpl")