//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidXConstraintLayout\src\main\java\androidx\constraintlayout\core\widgets\analyzer\WidgetGroup.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_WidgetGroup")
#ifdef RESTRICT_WidgetGroup
#define INCLUDE_ALL_WidgetGroup 0
#else
#define INCLUDE_ALL_WidgetGroup 1
#endif
#undef RESTRICT_WidgetGroup

#if !defined (ADXWidgetGroup_) && (INCLUDE_ALL_WidgetGroup || defined(INCLUDE_ADXWidgetGroup))
#define ADXWidgetGroup_

@class ADXConstraintWidget;
@class ADXLinearSystem;
@class JavaUtilArrayList;

/*!
 @brief Represents a group of widget for the grouping mechanism.
 */
@interface ADXWidgetGroup : NSObject {
 @public
  JavaUtilArrayList *widgets_;
  jint id__;
  jboolean authoritative_;
  jint orientation_;
  JavaUtilArrayList *results_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)orientation;

- (jboolean)addWithADXConstraintWidget:(ADXConstraintWidget *)widget;

- (void)apply;

- (void)cleanupWithJavaUtilArrayList:(JavaUtilArrayList *)dependencyLists;

- (void)clear;

- (jint)getId;

- (jint)getOrientation;

- (jboolean)intersectWithWithADXWidgetGroup:(ADXWidgetGroup *)group;

- (jboolean)isAuthoritative;

- (jint)measureWrapWithADXLinearSystem:(ADXLinearSystem *)system
                               withInt:(jint)orientation;

- (void)moveToWithInt:(jint)orientation
   withADXWidgetGroup:(ADXWidgetGroup *)widgetGroup;

- (void)setAuthoritativeWithBoolean:(jboolean)isAuthoritative;

- (void)setOrientationWithInt:(jint)orientation;

- (jint)size;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXWidgetGroup)

J2OBJC_FIELD_SETTER(ADXWidgetGroup, widgets_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(ADXWidgetGroup, results_, JavaUtilArrayList *)

inline jint ADXWidgetGroup_get_count(void);
inline jint ADXWidgetGroup_set_count(jint value);
inline jint *ADXWidgetGroup_getRef_count(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint ADXWidgetGroup_count;
J2OBJC_STATIC_FIELD_PRIMITIVE(ADXWidgetGroup, count, jint)

FOUNDATION_EXPORT void ADXWidgetGroup_initWithInt_(ADXWidgetGroup *self, jint orientation);

FOUNDATION_EXPORT ADXWidgetGroup *new_ADXWidgetGroup_initWithInt_(jint orientation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXWidgetGroup *create_ADXWidgetGroup_initWithInt_(jint orientation);

J2OBJC_TYPE_LITERAL_HEADER(ADXWidgetGroup)

@compatibility_alias AndroidxConstraintlayoutCoreWidgetsAnalyzerWidgetGroup ADXWidgetGroup;

#endif

#if !defined (ADXWidgetGroup_MeasureResult_) && (INCLUDE_ALL_WidgetGroup || defined(INCLUDE_ADXWidgetGroup_MeasureResult))
#define ADXWidgetGroup_MeasureResult_

@class ADXConstraintWidget;
@class ADXLinearSystem;
@class ADXWidgetGroup;
@class JavaLangRefWeakReference;

@interface ADXWidgetGroup_MeasureResult : NSObject {
 @public
  JavaLangRefWeakReference *widgetRef_;
  jint left_;
  jint top_;
  jint right_;
  jint bottom_;
  jint baseline_;
  jint orientation_;
}

#pragma mark Public

- (instancetype)initWithADXWidgetGroup:(ADXWidgetGroup *)outer$
               withADXConstraintWidget:(ADXConstraintWidget *)widget
                   withADXLinearSystem:(ADXLinearSystem *)system
                               withInt:(jint)orientation;

- (void)apply;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ADXWidgetGroup_MeasureResult)

J2OBJC_FIELD_SETTER(ADXWidgetGroup_MeasureResult, widgetRef_, JavaLangRefWeakReference *)

FOUNDATION_EXPORT void ADXWidgetGroup_MeasureResult_initWithADXWidgetGroup_withADXConstraintWidget_withADXLinearSystem_withInt_(ADXWidgetGroup_MeasureResult *self, ADXWidgetGroup *outer$, ADXConstraintWidget *widget, ADXLinearSystem *system, jint orientation);

FOUNDATION_EXPORT ADXWidgetGroup_MeasureResult *new_ADXWidgetGroup_MeasureResult_initWithADXWidgetGroup_withADXConstraintWidget_withADXLinearSystem_withInt_(ADXWidgetGroup *outer$, ADXConstraintWidget *widget, ADXLinearSystem *system, jint orientation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADXWidgetGroup_MeasureResult *create_ADXWidgetGroup_MeasureResult_initWithADXWidgetGroup_withADXConstraintWidget_withADXLinearSystem_withInt_(ADXWidgetGroup *outer$, ADXConstraintWidget *widget, ADXLinearSystem *system, jint orientation);

J2OBJC_TYPE_LITERAL_HEADER(ADXWidgetGroup_MeasureResult)

#endif

#pragma pop_macro("INCLUDE_ALL_WidgetGroup")