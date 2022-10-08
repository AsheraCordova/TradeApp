//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\utils\StopEngine.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_StopEngine")
#ifdef RESTRICT_StopEngine
#define INCLUDE_ALL_StopEngine 0
#else
#define INCLUDE_ALL_StopEngine 1
#endif
#undef RESTRICT_StopEngine

#if !defined (ADXStopEngine_) && (INCLUDE_ALL_StopEngine || defined(INCLUDE_ADXStopEngine))
#define ADXStopEngine_

@protocol ADXStopEngine < JavaObject >

- (NSString *)debugWithNSString:(NSString *)desc
                      withFloat:(jfloat)time;

- (jfloat)getVelocityWithFloat:(jfloat)x;

- (jfloat)getInterpolationWithFloat:(jfloat)v;

- (jfloat)getVelocity;

- (jboolean)isStopped;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXStopEngine)

J2OBJC_TYPE_LITERAL_HEADER(ADXStopEngine)

#define AndroidxConstraintlayoutCoreMotionUtilsStopEngine ADXStopEngine

#endif

#pragma pop_macro("INCLUDE_ALL_StopEngine")