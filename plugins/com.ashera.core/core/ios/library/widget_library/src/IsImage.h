//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\widget\IsImage.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_IsImage")
#ifdef RESTRICT_IsImage
#define INCLUDE_ALL_IsImage 0
#else
#define INCLUDE_ALL_IsImage 1
#endif
#undef RESTRICT_IsImage

#if !defined (ASIsImage_) && (INCLUDE_ALL_IsImage || defined(INCLUDE_ASIsImage))
#define ASIsImage_

#define RESTRICT_IWidget 1
#define INCLUDE_ASIWidget 1
#include "IWidget.h"

@class IOSIntArray;

@protocol ASIsImage < ASIWidget, JavaObject >

- (id)getImage;

- (IOSIntArray *)getImageDimension;

@end

J2OBJC_EMPTY_STATIC_INIT(ASIsImage)

J2OBJC_TYPE_LITERAL_HEADER(ASIsImage)

#define ComAsheraWidgetIsImage ASIsImage

#endif

#pragma pop_macro("INCLUDE_ALL_IsImage")