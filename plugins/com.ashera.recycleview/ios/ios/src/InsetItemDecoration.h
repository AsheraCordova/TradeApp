//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\IOSRecycleViewPlugin\src\main\java\com\ashera\recycleview\InsetItemDecoration.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_InsetItemDecoration")
#ifdef RESTRICT_InsetItemDecoration
#define INCLUDE_ALL_InsetItemDecoration 0
#else
#define INCLUDE_ALL_InsetItemDecoration 1
#endif
#undef RESTRICT_InsetItemDecoration

#if !defined (ASInsetItemDecoration_) && (INCLUDE_ALL_InsetItemDecoration || defined(INCLUDE_ASInsetItemDecoration))
#define ASInsetItemDecoration_

#define RESTRICT_RecyclerView 1
#define INCLUDE_ADXRecyclerView_ItemDecoration 1
#include "RecyclerView.h"

@class ADRect;
@class ADView;
@class ADXRecyclerView;
@class ADXRecyclerView_State;

/*!
 @brief An ItemDecoration which applies an even visual padding on the left and right edges of a grid and
  between each item, while also applying an even amount of inset to each item.This ensures that
  all items remain the same size.
 It assumes all items in a row have the same span size, and it assumes it's the only item
  decorator.
 */
@interface ASInsetItemDecoration : ADXRecyclerView_ItemDecoration

#pragma mark Public

- (instancetype)init;

- (void)getItemOffsetsWithADRect:(ADRect *)outRect
                      withADView:(ADView *)view
             withADXRecyclerView:(ADXRecyclerView *)parent
       withADXRecyclerView_State:(ADXRecyclerView_State *)state;

@end

J2OBJC_EMPTY_STATIC_INIT(ASInsetItemDecoration)

FOUNDATION_EXPORT void ASInsetItemDecoration_init(ASInsetItemDecoration *self);

FOUNDATION_EXPORT ASInsetItemDecoration *new_ASInsetItemDecoration_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASInsetItemDecoration *create_ASInsetItemDecoration_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASInsetItemDecoration)

@compatibility_alias ComAsheraRecycleviewInsetItemDecoration ASInsetItemDecoration;

#endif

#pragma pop_macro("INCLUDE_ALL_InsetItemDecoration")