//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\utils\StopEngine.java
//

#include "J2ObjC_source.h"
#include "StopEngine.h"


@interface ADXStopEngine : NSObject

@end

@implementation ADXStopEngine

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "F", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "F", 0x401, 4, 3, -1, -1, -1, -1 },
    { NULL, "F", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(debugWithNSString:withFloat:);
  methods[1].selector = @selector(getVelocityWithFloat:);
  methods[2].selector = @selector(getInterpolationWithFloat:);
  methods[3].selector = @selector(getVelocity);
  methods[4].selector = @selector(isStopped);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "debug", "LNSString;F", "getVelocity", "F", "getInterpolation" };
  static const J2ObjcClassInfo _ADXStopEngine = { "StopEngine", "androidx.constraintlayout.core.motion.utils", ptrTable, methods, NULL, 7, 0x609, 5, 0, -1, -1, -1, -1, -1 };
  return &_ADXStopEngine;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(ADXStopEngine)