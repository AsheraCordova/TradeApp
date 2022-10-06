//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\CoreFlow.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_CoreFlow")
#ifdef RESTRICT_CoreFlow
#define INCLUDE_ALL_CoreFlow 0
#else
#define INCLUDE_ALL_CoreFlow 1
#endif
#undef RESTRICT_CoreFlow

#if !defined (ADXCoreFlow_) && (INCLUDE_ALL_CoreFlow || defined(INCLUDE_ADXCoreFlow))
#define ADXCoreFlow_

#define RESTRICT_CoreVirtualLayout 1
#define INCLUDE_ADXCoreVirtualLayout 1
#include "CoreVirtualLayout.h"

@class ADXConstraintWidget;
@class ADXLinearSystem;
@class JavaUtilHashMap;

/*!
 @brief Implements the Flow virtual layout.
 */
@interface ADXCoreFlow : ADXCoreVirtualLayout

#pragma mark Public

- (instancetype)init;

/*!
 @brief Add this widget to the solver
 @param system the solver we want to add the widget to
 @param optimize true if <code>Optimizer.OPTIMIZATION_GRAPH</code>  is on
 */
- (void)addToSolverWithADXLinearSystem:(ADXLinearSystem *)system
                           withBoolean:(jboolean)optimize;

- (void)copy__WithADXConstraintWidget:(ADXConstraintWidget *)src
                  withJavaUtilHashMap:(JavaUtilHashMap *)map OBJC_METHOD_FAMILY_NONE;

- (void)measureWithInt:(jint)widthMode
               withInt:(jint)widthSize
               withInt:(jint)heightMode
               withInt:(jint)heightSize;

- (void)setFirstHorizontalBiasWithFloat:(jfloat)value;

- (void)setFirstHorizontalStyleWithInt:(jint)value;

- (void)setFirstVerticalBiasWithFloat:(jfloat)value;

- (void)setFirstVerticalStyleWithInt:(jint)value;

- (void)setHorizontalAlignWithInt:(jint)value;

- (void)setHorizontalBiasWithFloat:(jfloat)value;

- (void)setHorizontalGapWithInt:(jint)value;

- (void)setHorizontalStyleWithInt:(jint)value;

- (void)setLastHorizontalBiasWithFloat:(jfloat)value;

- (void)setLastHorizontalStyleWithInt:(jint)value;

- (void)setLastVerticalBiasWithFloat:(jfloat)value;

- (void)setLastVerticalStyleWithInt:(jint)value;

- (void)setMaxElementsWrapWithInt:(jint)value;

- (void)setOrientationWithInt:(jint)value;

- (void)setVerticalAlignWithInt:(jint)value;

- (void)setVerticalBiasWithFloat:(jfloat)value;

- (void)setVerticalGapWithInt:(jint)value;

- (void)setVerticalStyleWithInt:(jint)value;

- (void)setWrapModeWithInt:(jint)value;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXCoreFlow)

inline jint ADXCoreFlow_get_HORIZONTAL_ALIGN_START(void);
#define ADXCoreFlow_HORIZONTAL_ALIGN_START 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, HORIZONTAL_ALIGN_START, jint)

inline jint ADXCoreFlow_get_HORIZONTAL_ALIGN_END(void);
#define ADXCoreFlow_HORIZONTAL_ALIGN_END 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, HORIZONTAL_ALIGN_END, jint)

inline jint ADXCoreFlow_get_HORIZONTAL_ALIGN_CENTER(void);
#define ADXCoreFlow_HORIZONTAL_ALIGN_CENTER 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, HORIZONTAL_ALIGN_CENTER, jint)

inline jint ADXCoreFlow_get_VERTICAL_ALIGN_TOP(void);
#define ADXCoreFlow_VERTICAL_ALIGN_TOP 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, VERTICAL_ALIGN_TOP, jint)

inline jint ADXCoreFlow_get_VERTICAL_ALIGN_BOTTOM(void);
#define ADXCoreFlow_VERTICAL_ALIGN_BOTTOM 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, VERTICAL_ALIGN_BOTTOM, jint)

inline jint ADXCoreFlow_get_VERTICAL_ALIGN_CENTER(void);
#define ADXCoreFlow_VERTICAL_ALIGN_CENTER 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, VERTICAL_ALIGN_CENTER, jint)

inline jint ADXCoreFlow_get_VERTICAL_ALIGN_BASELINE(void);
#define ADXCoreFlow_VERTICAL_ALIGN_BASELINE 3
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, VERTICAL_ALIGN_BASELINE, jint)

inline jint ADXCoreFlow_get_WRAP_NONE(void);
#define ADXCoreFlow_WRAP_NONE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, WRAP_NONE, jint)

inline jint ADXCoreFlow_get_WRAP_CHAIN(void);
#define ADXCoreFlow_WRAP_CHAIN 1
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, WRAP_CHAIN, jint)

inline jint ADXCoreFlow_get_WRAP_ALIGNED(void);
#define ADXCoreFlow_WRAP_ALIGNED 2
J2OBJC_STATIC_FIELD_CONSTANT(ADXCoreFlow, WRAP_ALIGNED, jint)

FOUNDATION_EXPORT void ADXCoreFlow_init(ADXCoreFlow *self);

FOUNDATION_EXPORT ADXCoreFlow *new_ADXCoreFlow_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXCoreFlow *create_ADXCoreFlow_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADXCoreFlow)

@compatibility_alias AndroidxConstraintlayoutCoreWidgetsCoreFlow ADXCoreFlow;

#endif

#pragma pop_macro("INCLUDE_ALL_CoreFlow")