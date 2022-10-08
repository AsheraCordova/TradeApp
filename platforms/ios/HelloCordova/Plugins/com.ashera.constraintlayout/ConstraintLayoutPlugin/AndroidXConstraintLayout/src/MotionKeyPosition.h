//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\motion\key\MotionKeyPosition.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_MotionKeyPosition")
#ifdef RESTRICT_MotionKeyPosition
#define INCLUDE_ALL_MotionKeyPosition 0
#else
#define INCLUDE_ALL_MotionKeyPosition 1
#endif
#undef RESTRICT_MotionKeyPosition

#if !defined (ADXMotionKeyPosition_) && (INCLUDE_ALL_MotionKeyPosition || defined(INCLUDE_ADXMotionKeyPosition))
#define ADXMotionKeyPosition_

#define RESTRICT_MotionKey 1
#define INCLUDE_ADXMotionKey 1
#include "MotionKey.h"

@class ADXFloatRect;
@class ADXMotionWidget;
@class IOSFloatArray;
@class IOSObjectArray;
@class JavaUtilHashMap;
@class JavaUtilHashSet;

@interface ADXMotionKeyPosition : ADXMotionKey {
 @public
  jint mCurveFit_;
  NSString *mTransitionEasing_;
  jint mPathMotionArc_;
  jint mDrawPath_;
  jfloat mPercentWidth_;
  jfloat mPercentHeight_;
  jfloat mPercentX_;
  jfloat mPercentY_;
  jfloat mAltPercentX_;
  jfloat mAltPercentY_;
  jint mPositionType_;
}

#pragma mark Public

- (instancetype)init;

- (void)addValuesWithJavaUtilHashMap:(JavaUtilHashMap *)splines;

- (ADXMotionKey *)java_clone;

- (ADXMotionKey *)copy__WithADXMotionKey:(ADXMotionKey *)src OBJC_METHOD_FAMILY_NONE;

- (void)getAttributeNamesWithJavaUtilHashSet:(JavaUtilHashSet *)attributes;

- (jint)getIdWithNSString:(NSString *)name;

- (jboolean)intersectsWithInt:(jint)layoutWidth
                      withInt:(jint)layoutHeight
             withADXFloatRect:(ADXFloatRect *)start
             withADXFloatRect:(ADXFloatRect *)end
                    withFloat:(jfloat)x
                    withFloat:(jfloat)y;

- (void)positionAttributesWithADXMotionWidget:(ADXMotionWidget *)view
                             withADXFloatRect:(ADXFloatRect *)start
                             withADXFloatRect:(ADXFloatRect *)end
                                    withFloat:(jfloat)x
                                    withFloat:(jfloat)y
                            withNSStringArray:(IOSObjectArray *)attribute
                               withFloatArray:(IOSFloatArray *)value;

- (jboolean)setValueWithInt:(jint)type
                  withFloat:(jfloat)value;

- (jboolean)setValueWithInt:(jint)type
                    withInt:(jint)value;

- (jboolean)setValueWithInt:(jint)type
               withNSString:(NSString *)value;

#pragma mark Package-Private

- (void)calcPositionWithInt:(jint)layoutWidth
                    withInt:(jint)layoutHeight
                  withFloat:(jfloat)start_x
                  withFloat:(jfloat)start_y
                  withFloat:(jfloat)end_x
                  withFloat:(jfloat)end_y;

- (jfloat)getPositionX;

- (jfloat)getPositionY;

- (void)positionCartAttributesWithADXFloatRect:(ADXFloatRect *)start
                              withADXFloatRect:(ADXFloatRect *)end
                                     withFloat:(jfloat)x
                                     withFloat:(jfloat)y
                             withNSStringArray:(IOSObjectArray *)attribute
                                withFloatArray:(IOSFloatArray *)value;

- (void)positionPathAttributesWithADXFloatRect:(ADXFloatRect *)start
                              withADXFloatRect:(ADXFloatRect *)end
                                     withFloat:(jfloat)x
                                     withFloat:(jfloat)y
                             withNSStringArray:(IOSObjectArray *)attribute
                                withFloatArray:(IOSFloatArray *)value;

- (void)positionScreenAttributesWithADXMotionWidget:(ADXMotionWidget *)view
                                   withADXFloatRect:(ADXFloatRect *)start
                                   withADXFloatRect:(ADXFloatRect *)end
                                          withFloat:(jfloat)x
                                          withFloat:(jfloat)y
                                  withNSStringArray:(IOSObjectArray *)attribute
                                     withFloatArray:(IOSFloatArray *)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXMotionKeyPosition)

J2OBJC_FIELD_SETTER(ADXMotionKeyPosition, mTransitionEasing_, NSString *)

inline NSString *ADXMotionKeyPosition_get_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ADXMotionKeyPosition_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ADXMotionKeyPosition, NAME, NSString *)

inline jfloat ADXMotionKeyPosition_get_SELECTION_SLOPE(void);
#define ADXMotionKeyPosition_SELECTION_SLOPE 20.0f
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionKeyPosition, SELECTION_SLOPE, jfloat)

inline jint ADXMotionKeyPosition_get_TYPE_SCREEN(void);
#define ADXMotionKeyPosition_TYPE_SCREEN 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionKeyPosition, TYPE_SCREEN, jint)

inline jint ADXMotionKeyPosition_get_TYPE_PATH(void);
#define ADXMotionKeyPosition_TYPE_PATH 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionKeyPosition, TYPE_PATH, jint)

inline jint ADXMotionKeyPosition_get_TYPE_CARTESIAN(void);
#define ADXMotionKeyPosition_TYPE_CARTESIAN 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionKeyPosition, TYPE_CARTESIAN, jint)

inline jint ADXMotionKeyPosition_get_KEY_TYPE(void);
#define ADXMotionKeyPosition_KEY_TYPE 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXMotionKeyPosition, KEY_TYPE, jint)

FOUNDATION_EXPORT void ADXMotionKeyPosition_init(ADXMotionKeyPosition *self);

FOUNDATION_EXPORT ADXMotionKeyPosition *new_ADXMotionKeyPosition_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXMotionKeyPosition *create_ADXMotionKeyPosition_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXMotionKeyPosition)

@compatibility_alias AndroidxConstraintlayoutCoreMotionKeyMotionKeyPosition ADXMotionKeyPosition;

#endif

#pragma pop_macro("INCLUDE_ALL_MotionKeyPosition")
