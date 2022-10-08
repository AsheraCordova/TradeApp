//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\ios_widget_library\src\main\java\com\ashera\layout\SpinnerImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_SpinnerImpl")
#ifdef RESTRICT_SpinnerImpl
#define INCLUDE_ALL_SpinnerImpl 0
#else
#define INCLUDE_ALL_SpinnerImpl 1
#endif
#undef RESTRICT_SpinnerImpl

#if !defined (ASSpinnerImpl_) && (INCLUDE_ALL_SpinnerImpl || defined(INCLUDE_ASSpinnerImpl))
#define ASSpinnerImpl_

#define RESTRICT_BaseHasWidgets 1
#define INCLUDE_ASBaseHasWidgets 1
#include "BaseHasWidgets.h"

#define RESTRICT_ICustomMeasureHeight 1
#define INCLUDE_ASICustomMeasureHeight 1
#include "ICustomMeasureHeight.h"

#define RESTRICT_ICustomMeasureWidth 1
#define INCLUDE_ASICustomMeasureWidth 1
#include "ICustomMeasureWidth.h"

#define RESTRICT_FormElement 1
#define INCLUDE_ASFormElement 1
#include "FormElement.h"

@class ASLoopParam;
@class ASMeasurableTextView;
@class ASSpinnerImpl_SpinnerBean;
@class ASSpinnerImpl_SpinnerCommandBuilder;
@class ASWidgetAttribute;
@protocol ASIFragment;
@protocol ASILifeCycleDecorator;
@protocol ASIWidget;
@protocol JavaUtilMap;

@interface ASSpinnerImpl : ASBaseHasWidgets < ASICustomMeasureHeight, ASICustomMeasureWidth, ASFormElement > {
 @public
  id uiView_;
  ASMeasurableTextView *measurableTextView_;
}
@property id uiView;

#pragma mark Public

- (instancetype)init;

- (id)asNativeWidget;

- (id)asWidget;

- (jboolean)checkIosVersionWithNSString:(NSString *)v;

- (void)createWithASIFragment:(id<ASIFragment>)fragment
              withJavaUtilMap:(id<JavaUtilMap>)params;

- (void)drawableStateChanged;

- (void)focus;

- (id)getAdjustsFontSizeToFitWidth;

- (id)getAllowsEditingTextAttributes;

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
              withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator;

- (id)getBackground;

- (ASSpinnerImpl_SpinnerBean *)getBean;

- (jint)getBorderPadding;

- (ASSpinnerImpl_SpinnerCommandBuilder *)getBuilder;

- (id)getChildAttributeWithASIWidget:(id<ASIWidget>)w
               withASWidgetAttribute:(ASWidgetAttribute *)key;

- (id)getClearsOnBeginEditing;

- (id)getClearsOnInsertion;

- (id)getDisabledBackground;

- (id)getIsEditing;

- (jint)getLineHeightPadding;

- (id)getMinimumFontSize;

- (id)getPlaceholder;

- (id)getPluginWithNSString:(NSString *)plugin;

- (id)getText;

- (id)getTextColor;

- (NSString *)getTextEntered;

- (void)initialized OBJC_METHOD_FAMILY_NONE;

- (void)invalidate;

- (jboolean)isViewVisible;

- (void)loadAttributesWithNSString:(NSString *)attributeName;

- (jint)measureHeightWithInt:(jint)width;

- (jint)measureWidth;

- (void)nativeSetEnabledWithBoolean:(jboolean)value;

- (id<ASIWidget>)newInstance OBJC_METHOD_FAMILY_NONE;

- (void)onRtlPropertiesChangedWithInt:(jint)layoutDirection;

- (void)requestLayout;

- (void)resetError;

- (void)setAdjustsFontSizeToFitWidthWithId:(id)nativeWidget
                                    withId:(id)value;

- (void)setAllowsEditingTextAttributesWithId:(id)nativeWidget
                                      withId:(id)value;

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue
                withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator;

- (void)setBackgroundWithId:(id)nativeWidget
                     withId:(id)value;

- (void)setChildAttributeWithASIWidget:(id<ASIWidget>)widget
                 withASWidgetAttribute:(ASWidgetAttribute *)key
                          withNSString:(NSString *)strValue
                                withId:(id)value;

- (void)setClearsOnBeginEditingWithId:(id)nativeWidget
                               withId:(id)value;

- (void)setClearsOnInsertionWithId:(id)nativeWidget
                            withId:(id)value;

- (void)setDisabledBackgroundWithId:(id)nativeWidget
                             withId:(id)value;

- (void)setEnabledWithId:(id)objValue;

- (void)setIdWithNSString:(NSString *)id_;

- (void)setMinimumFontSizeWithId:(id)nativeWidget
                          withId:(id)value;

- (void)setPaddingWithId:(id)objValue;

- (void)setPaddingBottomWithId:(id)objValue;

- (void)setPaddingLeftWithId:(id)objValue;

- (void)setPaddingRightWithId:(id)objValue;

- (void)setPaddingTopWithId:(id)objValue;

- (void)setPlaceholderWithId:(id)nativeWidget
                      withId:(id)value;

- (void)setTextWithId:(id)nativeWidget
               withId:(id)value;

- (void)setTextColorWithId:(id)nativeWidget
                    withId:(id)value;

- (void)showErrorWithNSString:(NSString *)message;

- (void)updateMeasuredDimensionWithInt:(jint)width
                               withInt:(jint)height;

#pragma mark Protected

- (void)addItemToParentWithInt:(jint)index
                  withNSString:(NSString *)id_
               withASLoopParam:(ASLoopParam *)loopParam;

#pragma mark Package-Private

// Disallowed inherited constructors, do not use.

- (instancetype)initWithNSString:(NSString *)arg0
                    withNSString:(NSString *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(ASSpinnerImpl)

J2OBJC_FIELD_SETTER(ASSpinnerImpl, uiView_, id)
J2OBJC_FIELD_SETTER(ASSpinnerImpl, measurableTextView_, ASMeasurableTextView *)

inline NSString *ASSpinnerImpl_get_LOCAL_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASSpinnerImpl_LOCAL_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASSpinnerImpl, LOCAL_NAME, NSString *)

inline NSString *ASSpinnerImpl_get_GROUP_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASSpinnerImpl_GROUP_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASSpinnerImpl, GROUP_NAME, NSString *)

FOUNDATION_EXPORT void ASSpinnerImpl_init(ASSpinnerImpl *self);

FOUNDATION_EXPORT ASSpinnerImpl *new_ASSpinnerImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASSpinnerImpl *create_ASSpinnerImpl_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASSpinnerImpl)

@compatibility_alias ComAsheraLayoutSpinnerImpl ASSpinnerImpl;

#endif

#if !defined (ASSpinnerImpl_DrawableTintMode_) && (INCLUDE_ALL_SpinnerImpl || defined(INCLUDE_ASSpinnerImpl_DrawableTintMode))
#define ASSpinnerImpl_DrawableTintMode_

#define RESTRICT_AbstractEnumToIntConverter 1
#define INCLUDE_ASAbstractEnumToIntConverter 1
#include "AbstractEnumToIntConverter.h"

@class JavaLangInteger;
@protocol JavaUtilMap;

@interface ASSpinnerImpl_DrawableTintMode : ASAbstractEnumToIntConverter

#pragma mark Public

- (JavaLangInteger *)getDefault;

- (id<JavaUtilMap>)getMapping;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ASSpinnerImpl_DrawableTintMode)

FOUNDATION_EXPORT void ASSpinnerImpl_DrawableTintMode_init(ASSpinnerImpl_DrawableTintMode *self);

FOUNDATION_EXPORT ASSpinnerImpl_DrawableTintMode *new_ASSpinnerImpl_DrawableTintMode_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASSpinnerImpl_DrawableTintMode *create_ASSpinnerImpl_DrawableTintMode_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASSpinnerImpl_DrawableTintMode)

#endif

#if !defined (ASSpinnerImpl_Font_) && (INCLUDE_ALL_SpinnerImpl || defined(INCLUDE_ASSpinnerImpl_Font))
#define ASSpinnerImpl_Font_

#define RESTRICT_AbstractEnumToIntConverter 1
#define INCLUDE_ASAbstractEnumToIntConverter 1
#include "AbstractEnumToIntConverter.h"

@class JavaLangInteger;
@protocol JavaUtilMap;

@interface ASSpinnerImpl_Font : ASAbstractEnumToIntConverter

#pragma mark Public

- (JavaLangInteger *)getDefault;

- (id<JavaUtilMap>)getMapping;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ASSpinnerImpl_Font)

FOUNDATION_EXPORT void ASSpinnerImpl_Font_init(ASSpinnerImpl_Font *self);

FOUNDATION_EXPORT ASSpinnerImpl_Font *new_ASSpinnerImpl_Font_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASSpinnerImpl_Font *create_ASSpinnerImpl_Font_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASSpinnerImpl_Font)

#endif

#if !defined (ASSpinnerImpl_TextStyle_) && (INCLUDE_ALL_SpinnerImpl || defined(INCLUDE_ASSpinnerImpl_TextStyle))
#define ASSpinnerImpl_TextStyle_

#define RESTRICT_AbstractBitFlagConverter 1
#define INCLUDE_ASAbstractBitFlagConverter 1
#include "AbstractBitFlagConverter.h"

@class JavaLangInteger;
@protocol JavaUtilMap;

@interface ASSpinnerImpl_TextStyle : ASAbstractBitFlagConverter

#pragma mark Public

- (JavaLangInteger *)getDefault;

- (id<JavaUtilMap>)getMapping;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ASSpinnerImpl_TextStyle)

FOUNDATION_EXPORT void ASSpinnerImpl_TextStyle_init(ASSpinnerImpl_TextStyle *self);

FOUNDATION_EXPORT ASSpinnerImpl_TextStyle *new_ASSpinnerImpl_TextStyle_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASSpinnerImpl_TextStyle *create_ASSpinnerImpl_TextStyle_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASSpinnerImpl_TextStyle)

#endif

#if !defined (ASSpinnerImpl_SpinnerExt_) && (INCLUDE_ALL_SpinnerImpl || defined(INCLUDE_ASSpinnerImpl_SpinnerExt))
#define ASSpinnerImpl_SpinnerExt_

#define RESTRICT_MeasurableTextView 1
#define INCLUDE_ASMeasurableTextView 1
#include "MeasurableTextView.h"

#define RESTRICT_ILifeCycleDecorator 1
#define INCLUDE_ASILifeCycleDecorator 1
#include "ILifeCycleDecorator.h"

#define RESTRICT_IMaxDimension 1
#define INCLUDE_ASIMaxDimension 1
#include "IMaxDimension.h"

@class ASSpinnerImpl;
@class ASWidgetAttribute;
@class IOSObjectArray;
@protocol ASIWidget;
@protocol JavaUtilList;

@interface ASSpinnerImpl_SpinnerExt : ASMeasurableTextView < ASILifeCycleDecorator, ASIMaxDimension >

#pragma mark Public

- (instancetype)initWithASSpinnerImpl:(ASSpinnerImpl *)outer$;

- (void)drawableStateChanged;

- (void)executeWithNSString:(NSString *)method
          withNSObjectArray:(IOSObjectArray *)canvas;

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)widgetAttribute;

- (jint)getMaxHeight;

- (jint)getMaxWidth;

- (id<JavaUtilList>)getMethods;

- (void)initialized OBJC_METHOD_FAMILY_NONE;

- (id<ASILifeCycleDecorator>)newInstanceWithASIWidget:(id<ASIWidget>)widget OBJC_METHOD_FAMILY_NONE;

- (void)offsetLeftAndRightWithInt:(jint)offset;

- (void)offsetTopAndBottomWithInt:(jint)offset;

- (void)onMeasureWithInt:(jint)widthMeasureSpec
                 withInt:(jint)heightMeasureSpec;

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)widgetAttribute
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue;

- (void)setMaxHeightWithInt:(jint)height;

- (void)setMaxWidthWithInt:(jint)width;

- (void)setVisibilityWithInt:(jint)visibility;

- (void)updateMeasuredDimensionWithInt:(jint)width
                               withInt:(jint)height;

#pragma mark Protected

- (void)onLayoutWithBoolean:(jboolean)changed
                    withInt:(jint)l
                    withInt:(jint)t
                    withInt:(jint)r
                    withInt:(jint)b;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithASIWidget:(id<ASIWidget>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASSpinnerImpl_SpinnerExt)

FOUNDATION_EXPORT void ASSpinnerImpl_SpinnerExt_initWithASSpinnerImpl_(ASSpinnerImpl_SpinnerExt *self, ASSpinnerImpl *outer$);

FOUNDATION_EXPORT ASSpinnerImpl_SpinnerExt *new_ASSpinnerImpl_SpinnerExt_initWithASSpinnerImpl_(ASSpinnerImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASSpinnerImpl_SpinnerExt *create_ASSpinnerImpl_SpinnerExt_initWithASSpinnerImpl_(ASSpinnerImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASSpinnerImpl_SpinnerExt)

#endif

#if !defined (ASSpinnerImpl_AdapterView_) && (INCLUDE_ALL_SpinnerImpl || defined(INCLUDE_ASSpinnerImpl_AdapterView))
#define ASSpinnerImpl_AdapterView_

@interface ASSpinnerImpl_AdapterView : NSObject

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ASSpinnerImpl_AdapterView)

FOUNDATION_EXPORT void ASSpinnerImpl_AdapterView_init(ASSpinnerImpl_AdapterView *self);

FOUNDATION_EXPORT ASSpinnerImpl_AdapterView *new_ASSpinnerImpl_AdapterView_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASSpinnerImpl_AdapterView *create_ASSpinnerImpl_AdapterView_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ASSpinnerImpl_AdapterView)

#endif

#if !defined (ASSpinnerImpl_AdapterView_OnItemSelectedListener_) && (INCLUDE_ALL_SpinnerImpl || defined(INCLUDE_ASSpinnerImpl_AdapterView_OnItemSelectedListener))
#define ASSpinnerImpl_AdapterView_OnItemSelectedListener_

@class ADView;
@class ASSpinnerImpl_AdapterView;

@protocol ASSpinnerImpl_AdapterView_OnItemSelectedListener < JavaObject >

- (void)onItemSelectedWithASSpinnerImpl_AdapterView:(ASSpinnerImpl_AdapterView *)parent
                                         withADView:(ADView *)view
                                            withInt:(jint)position
                                           withLong:(jlong)id_;

@end

J2OBJC_EMPTY_STATIC_INIT(ASSpinnerImpl_AdapterView_OnItemSelectedListener)

J2OBJC_TYPE_LITERAL_HEADER(ASSpinnerImpl_AdapterView_OnItemSelectedListener)

#endif

#if !defined (ASSpinnerImpl_SpinnerCommandBuilder_) && (INCLUDE_ALL_SpinnerImpl || defined(INCLUDE_ASSpinnerImpl_SpinnerCommandBuilder))
#define ASSpinnerImpl_SpinnerCommandBuilder_

#define RESTRICT_ViewImpl 1
#define INCLUDE_ASViewImpl_ViewCommandBuilder 1
#include "ViewImpl.h"

@class ASSpinnerImpl;

@interface ASSpinnerImpl_SpinnerCommandBuilder : ASViewImpl_ViewCommandBuilder

#pragma mark Public

- (instancetype)initWithASSpinnerImpl:(ASSpinnerImpl *)outer$;

- (ASSpinnerImpl_SpinnerCommandBuilder *)executeWithBoolean:(jboolean)setter;

- (id)getDrawablePadding;

- (id)getGravity;

- (id)getHint;

- (id)getIosBackground;

- (id)getIosDisabledBackground;

- (id)getIosMinimumFontSize;

- (id)getIosPlaceholder;

- (id)getIosText;

- (id)getIosTextColor;

- (id)getPaddingBottom;

- (id)getPaddingEnd;

- (id)getPaddingLeft;

- (id)getPaddingRight;

- (id)getPaddingStart;

- (id)getPaddingTop;

- (id)getSelectedValue;

- (id)getTextColor;

- (id)getTextSize;

- (ASSpinnerImpl_SpinnerCommandBuilder *)invalidate;

- (id)isIosAdjustsFontSizeToFitWidth;

- (id)isIosAllowsEditingTextAttributes;

- (id)isIosClearsOnBeginEditing;

- (id)isIosClearsOnInsertion;

- (id)isIosIsEditing;

- (ASSpinnerImpl_SpinnerCommandBuilder *)notifyDataSetChangedWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)refreshUiFromModelWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)requestLayout;

- (ASSpinnerImpl_SpinnerCommandBuilder *)reset;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setAlphaWithFloat:(jfloat)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setAsDragSourceWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setAttributeUnderTestWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setBackgroundRepeatWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setBackgroundTintModeWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setBackgroundTintWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setBackgroundWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setClickableWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setContentDescriptionWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setCustomErrorMessageKeysWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setCustomErrorMessageValuesWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDrawableBottomWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDrawableEndWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDrawableLeftWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDrawablePaddingWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDrawableRightWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDrawableStartWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDrawableTintWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDrawableTintModeWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDrawableTopWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setDuplicateParentStateWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setEditableWithBoolean:(jboolean)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setEnabledWithBoolean:(jboolean)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setEntriesWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setErrorStyleWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setFocusableWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setFontFamilyWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setForegroundGravityWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setForegroundRepeatWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setForegroundTintModeWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setForegroundTintWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setForegroundWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setGravityWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setHintWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setHintTextFormatWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIdWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setInvalidateOnFrameChangeWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosAccessibilityHintWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosAccessibilityIgnoresInvertColorsWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosAccessibilityLabelWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosAccessibilityTraitsWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosAccessibilityValueWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosAdjustsFontSizeToFitWidthWithBoolean:(jboolean)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosAllowsEditingTextAttributesWithBoolean:(jboolean)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosAlphaWithFloat:(jfloat)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosAutoresizesSubviewsWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosBackgroundWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosBackgroundColorWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosClearsContextBeforeDrawingWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosClearsOnBeginEditingWithBoolean:(jboolean)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosClearsOnInsertionWithBoolean:(jboolean)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosClipsToBoundsWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosContentScaleFactorWithFloat:(jfloat)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosDisabledBackgroundWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosInsetsLayoutMarginsFromSafeAreaWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosIsAccessibilityElementWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosIsExclusiveTouchWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosIsHiddenWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosIsMultipleTouchEnabledWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosIsOpaqueWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosIsUserInteractionEnabledWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosLargeContentImageWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosLargeContentTitleWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosLayerBorderColorWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosLayerBorderWidthWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosLayerCornerRadiusWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosLayerMasksToBoundsWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosMinimumFontSizeWithFloat:(jfloat)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosPlaceholderWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosPreservesSuperviewLayoutMarginsWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosRestorationIdentifierWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosScalesLargeContentImageWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosShowsLargeContentViewerWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosTagWithInt:(jint)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosTextWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosTextColorWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosTintColorWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setIosTranslatesAutoresizingMaskIntoConstraintsWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setKeepScreenOnWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setLayoutDirectionWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setLongClickableWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setMaxHeightWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setMaxWidthWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setMinHeightWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setMinWidthWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setModelOptionTextPathWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setModelOptionValuePathWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setModelParamWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setModelPojoToUiParamsWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setModelPojoToUiWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setModelSyncEventsWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setModelUiToPojoEventIdsWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setModelUiToPojoWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setOnClickWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setOnDragWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setOnItemSelectedWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setOnKeyWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setOnLongClickWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setOnTouchWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setPaddingWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setPaddingBottomWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setPaddingEndWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setPaddingHorizontalWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setPaddingLeftWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setPaddingRightWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setPaddingStartWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setPaddingTopWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setPaddingVerticalWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setRotationWithFloat:(jfloat)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setRotationXWithFloat:(jfloat)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setRotationYWithFloat:(jfloat)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setScaleXWithFloat:(jfloat)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setScaleYWithFloat:(jfloat)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setSelectedValueWithId:(id)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setSelectedWithBoolean:(jboolean)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setSelectionWithInt:(jint)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setStyleWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTextAlignmentWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTextColorWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTextColorHintWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTextDirectionWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTextSizeWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTextStyleWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTransformPivotXWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTransformPivotYWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTranslationXWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTranslationYWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTranslationZWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setTypefaceWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setV_maxlengthWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setV_maxWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setV_minlengthWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setV_minWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setV_patternWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setV_requiredWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setV_typeWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setValidationErrorDisplayTypeWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setValidationWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setValuesWithNSString:(NSString *)value;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setVisibilityWithNSString:(NSString *)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)setZIndexWithInt:(jint)arg0;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetAlpha;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetBackground;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetBackgroundTint;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetBackgroundTintMode;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetClickable;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetContentDescription;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetDrawablePadding;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetDuplicateParentState;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetEnabled;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetFocusable;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetForeground;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetForegroundGravity;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetForegroundTint;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetForegroundTintMode;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetGravity;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetHint;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetId;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosAccessibilityHint;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosAccessibilityIgnoresInvertColors;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosAccessibilityLabel;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosAccessibilityTraits;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosAccessibilityValue;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosAdjustsFontSizeToFitWidth;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosAllowsEditingTextAttributes;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosAlpha;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosAutoresizesSubviews;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosBackground;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosBackgroundColor;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosClearsContextBeforeDrawing;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosClearsOnBeginEditing;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosClearsOnInsertion;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosClipsToBounds;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosContentScaleFactor;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosDisabledBackground;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosInsetsLayoutMarginsFromSafeArea;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosIsAccessibilityElement;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosIsEditing;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosIsExclusiveTouch;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosIsFocused;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosIsHidden;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosIsMultipleTouchEnabled;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosIsOpaque;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosIsUserInteractionEnabled;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosLargeContentImage;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosLargeContentTitle;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosMinimumFontSize;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosPlaceholder;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosPreservesSuperviewLayoutMargins;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosRestorationIdentifier;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosScalesLargeContentImage;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosShowsLargeContentViewer;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosTag;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosText;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosTextColor;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosTintColor;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetIosTranslatesAutoresizingMaskIntoConstraints;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetKeepScreenOn;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetLayoutDirection;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetLongClickable;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetMaxHeight;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetMaxWidth;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetMinHeight;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetMinWidth;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetModelParam;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetModelPojoToUi;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetModelSyncEvents;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetModelUiToPojo;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetPaddingBottom;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetPaddingEnd;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetPaddingLeft;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetPaddingRight;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetPaddingStart;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetPaddingTop;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetRotation;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetRotationX;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetRotationY;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetScaleX;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetScaleY;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetSelected;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetSelectedValue;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetTextAlignment;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetTextColor;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetTextDirection;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetTextSize;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetTransformPivotX;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetTransformPivotY;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetTranslationX;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetTranslationY;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetTranslationZ;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetValidateForm;

- (ASSpinnerImpl_SpinnerCommandBuilder *)tryGetVisibility;

- (ASSpinnerImpl_SpinnerCommandBuilder *)updateModelDataWithNSString:(NSString *)arg0
                                                              withId:(id)arg1;

- (ASSpinnerImpl_SpinnerCommandBuilder *)validateFormWithNSString:(NSString *)arg0;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASSpinnerImpl_SpinnerCommandBuilder)

FOUNDATION_EXPORT void ASSpinnerImpl_SpinnerCommandBuilder_initWithASSpinnerImpl_(ASSpinnerImpl_SpinnerCommandBuilder *self, ASSpinnerImpl *outer$);

FOUNDATION_EXPORT ASSpinnerImpl_SpinnerCommandBuilder *new_ASSpinnerImpl_SpinnerCommandBuilder_initWithASSpinnerImpl_(ASSpinnerImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASSpinnerImpl_SpinnerCommandBuilder *create_ASSpinnerImpl_SpinnerCommandBuilder_initWithASSpinnerImpl_(ASSpinnerImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASSpinnerImpl_SpinnerCommandBuilder)

#endif

#if !defined (ASSpinnerImpl_SpinnerBean_) && (INCLUDE_ALL_SpinnerImpl || defined(INCLUDE_ASSpinnerImpl_SpinnerBean))
#define ASSpinnerImpl_SpinnerBean_

#define RESTRICT_ViewImpl 1
#define INCLUDE_ASViewImpl_ViewBean 1
#include "ViewImpl.h"

@class ASSpinnerImpl;
@protocol ASIWidget;

@interface ASSpinnerImpl_SpinnerBean : ASViewImpl_ViewBean

#pragma mark Public

- (instancetype)initWithASSpinnerImpl:(ASSpinnerImpl *)outer$;

- (id)getDrawablePadding;

- (id)getGravity;

- (id)getHint;

- (id)getIosBackground;

- (id)getIosDisabledBackground;

- (id)getIosMinimumFontSize;

- (id)getIosPlaceholder;

- (id)getIosText;

- (id)getIosTextColor;

- (id)getPaddingBottom;

- (id)getPaddingEnd;

- (id)getPaddingLeft;

- (id)getPaddingRight;

- (id)getPaddingStart;

- (id)getPaddingTop;

- (id)getSelectedValue;

- (id)getTextColor;

- (id)getTextSize;

- (id)isIosAdjustsFontSizeToFitWidth;

- (id)isIosAllowsEditingTextAttributes;

- (id)isIosClearsOnBeginEditing;

- (id)isIosClearsOnInsertion;

- (id)isIosIsEditing;

- (void)setDrawableBottomWithNSString:(NSString *)value;

- (void)setDrawableEndWithNSString:(NSString *)value;

- (void)setDrawableLeftWithNSString:(NSString *)value;

- (void)setDrawablePaddingWithNSString:(NSString *)value;

- (void)setDrawableRightWithNSString:(NSString *)value;

- (void)setDrawableStartWithNSString:(NSString *)value;

- (void)setDrawableTintWithNSString:(NSString *)value;

- (void)setDrawableTintModeWithNSString:(NSString *)value;

- (void)setDrawableTopWithNSString:(NSString *)value;

- (void)setEditableWithBoolean:(jboolean)value;

- (void)setEnabledWithBoolean:(jboolean)value;

- (void)setEntriesWithNSString:(NSString *)value;

- (void)setFontFamilyWithNSString:(NSString *)value;

- (void)setGravityWithNSString:(NSString *)value;

- (void)setHintWithNSString:(NSString *)value;

- (void)setHintTextFormatWithNSString:(NSString *)value;

- (void)setIosAdjustsFontSizeToFitWidthWithBoolean:(jboolean)value;

- (void)setIosAllowsEditingTextAttributesWithBoolean:(jboolean)value;

- (void)setIosBackgroundWithNSString:(NSString *)value;

- (void)setIosClearsOnBeginEditingWithBoolean:(jboolean)value;

- (void)setIosClearsOnInsertionWithBoolean:(jboolean)value;

- (void)setIosDisabledBackgroundWithNSString:(NSString *)value;

- (void)setIosMinimumFontSizeWithFloat:(jfloat)value;

- (void)setIosPlaceholderWithNSString:(NSString *)value;

- (void)setIosTextWithNSString:(NSString *)value;

- (void)setIosTextColorWithNSString:(NSString *)value;

- (void)setModelOptionTextPathWithNSString:(NSString *)value;

- (void)setModelOptionValuePathWithNSString:(NSString *)value;

- (void)setOnItemSelectedWithNSString:(NSString *)value;

- (void)setPaddingWithNSString:(NSString *)value;

- (void)setPaddingBottomWithNSString:(NSString *)value;

- (void)setPaddingEndWithNSString:(NSString *)value;

- (void)setPaddingHorizontalWithNSString:(NSString *)value;

- (void)setPaddingLeftWithNSString:(NSString *)value;

- (void)setPaddingRightWithNSString:(NSString *)value;

- (void)setPaddingStartWithNSString:(NSString *)value;

- (void)setPaddingTopWithNSString:(NSString *)value;

- (void)setPaddingVerticalWithNSString:(NSString *)value;

- (void)setSelectedValueWithId:(id)value;

- (void)setSelectionWithInt:(jint)value;

- (void)setTextColorWithNSString:(NSString *)value;

- (void)setTextColorHintWithNSString:(NSString *)value;

- (void)setTextSizeWithNSString:(NSString *)value;

- (void)setTextStyleWithNSString:(NSString *)value;

- (void)setTypefaceWithNSString:(NSString *)value;

- (void)setValuesWithNSString:(NSString *)value;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithASIWidget:(id<ASIWidget>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASSpinnerImpl_SpinnerBean)

FOUNDATION_EXPORT void ASSpinnerImpl_SpinnerBean_initWithASSpinnerImpl_(ASSpinnerImpl_SpinnerBean *self, ASSpinnerImpl *outer$);

FOUNDATION_EXPORT ASSpinnerImpl_SpinnerBean *new_ASSpinnerImpl_SpinnerBean_initWithASSpinnerImpl_(ASSpinnerImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASSpinnerImpl_SpinnerBean *create_ASSpinnerImpl_SpinnerBean_initWithASSpinnerImpl_(ASSpinnerImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASSpinnerImpl_SpinnerBean)

#endif

#pragma pop_macro("INCLUDE_ALL_SpinnerImpl")
