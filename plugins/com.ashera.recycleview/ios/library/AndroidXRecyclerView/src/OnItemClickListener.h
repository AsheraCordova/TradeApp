//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXRecyclerView\src\main\java\com\xwray\groupie\OnItemClickListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OnItemClickListener")
#ifdef RESTRICT_OnItemClickListener
#define INCLUDE_ALL_OnItemClickListener 0
#else
#define INCLUDE_ALL_OnItemClickListener 1
#endif
#undef RESTRICT_OnItemClickListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (ADXOnItemClickListener_) && (INCLUDE_ALL_OnItemClickListener || defined(INCLUDE_ADXOnItemClickListener))
#define ADXOnItemClickListener_

@class ADView;
@class ADXItem;

@protocol ADXOnItemClickListener < JavaObject >

- (void)onItemClickWithADXItem:(ADXItem *)item
                    withADView:(ADView *)view;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXOnItemClickListener)

J2OBJC_TYPE_LITERAL_HEADER(ADXOnItemClickListener)

#define ComXwrayGroupieOnItemClickListener ADXOnItemClickListener

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OnItemClickListener")