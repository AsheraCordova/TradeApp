//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-ios-widgets\ios_widget_library\src\main\java\com\ashera\layout\FrameLayoutImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_FrameLayoutImpl")
#ifdef RESTRICT_FrameLayoutImpl
#define INCLUDE_ALL_FrameLayoutImpl 0
#else
#define INCLUDE_ALL_FrameLayoutImpl 1
#endif
#undef RESTRICT_FrameLayoutImpl

#if !defined (ASFrameLayoutImpl_) && (INCLUDE_ALL_FrameLayoutImpl || defined(INCLUDE_ASFrameLayoutImpl))
#define ASFrameLayoutImpl_

#define RESTRICT_BaseHasWidgets 1
#define INCLUDE_ASBaseHasWidgets 1
#include "BaseHasWidgets.h"

@class ASFrameLayoutImpl_FrameLayoutBean;
@class ASFrameLayoutImpl_FrameLayoutCommandBuilder;
@class ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder;
@class ASFrameLayoutImpl_FrameLayoutParamsBean;
@class ASWidgetAttribute;
@protocol ASIFragment;
@protocol ASILifeCycleDecorator;
@protocol ASIWidget;
@protocol JavaUtilMap;

@interface ASFrameLayoutImpl : ASBaseHasWidgets
@property id uiView;

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)localname;

- (instancetype)initWithNSString:(NSString *)groupName
                    withNSString:(NSString *)localname;

- (void)addWithASIWidget:(id<ASIWidget>)w
                 withInt:(jint)index;

- (id)asNativeWidget;

- (id)asWidget;

- (jboolean)checkIosVersionWithNSString:(NSString *)v;

- (void)createWithASIFragment:(id<ASIFragment>)fragment
              withJavaUtilMap:(id<JavaUtilMap>)params;

- (id)getAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
              withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator;

- (ASFrameLayoutImpl_FrameLayoutBean *)getBean;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)getBuilder;

- (id)getChildAttributeWithASIWidget:(id<ASIWidget>)w
               withASWidgetAttribute:(ASWidgetAttribute *)key;

- (ASFrameLayoutImpl_FrameLayoutParamsBean *)getParamsBean;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)getParamsBuilder;

- (id)getPluginWithNSString:(NSString *)plugin;

- (void)invalidate;

- (void)loadAttributesWithNSString:(NSString *)localName;

- (void)nativeCreateWithJavaUtilMap:(id<JavaUtilMap>)params;

- (id<ASIWidget>)newInstance OBJC_METHOD_FAMILY_NONE;

- (jboolean)removeWithInt:(jint)index;

- (jboolean)removeWithASIWidget:(id<ASIWidget>)w;

- (void)requestLayout;

- (void)setAttributeWithASWidgetAttribute:(ASWidgetAttribute *)key
                             withNSString:(NSString *)strValue
                                   withId:(id)objValue
                withASILifeCycleDecorator:(id<ASILifeCycleDecorator>)decorator;

- (void)setChildAttributeWithASIWidget:(id<ASIWidget>)w
                 withASWidgetAttribute:(ASWidgetAttribute *)key
                          withNSString:(NSString *)strValue
                                withId:(id)objValue;

- (void)setIdWithNSString:(NSString *)id_;

- (void)updateMeasuredDimensionWithInt:(jint)width
                               withInt:(jint)height;

@end

J2OBJC_EMPTY_STATIC_INIT(ASFrameLayoutImpl)

inline NSString *ASFrameLayoutImpl_get_LOCAL_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASFrameLayoutImpl_LOCAL_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASFrameLayoutImpl, LOCAL_NAME, NSString *)

inline NSString *ASFrameLayoutImpl_get_GROUP_NAME(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT NSString *ASFrameLayoutImpl_GROUP_NAME;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASFrameLayoutImpl, GROUP_NAME, NSString *)

FOUNDATION_EXPORT void ASFrameLayoutImpl_init(ASFrameLayoutImpl *self);

FOUNDATION_EXPORT ASFrameLayoutImpl *new_ASFrameLayoutImpl_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASFrameLayoutImpl *create_ASFrameLayoutImpl_init(void);

FOUNDATION_EXPORT void ASFrameLayoutImpl_initWithNSString_(ASFrameLayoutImpl *self, NSString *localname);

FOUNDATION_EXPORT ASFrameLayoutImpl *new_ASFrameLayoutImpl_initWithNSString_(NSString *localname) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASFrameLayoutImpl *create_ASFrameLayoutImpl_initWithNSString_(NSString *localname);

FOUNDATION_EXPORT void ASFrameLayoutImpl_initWithNSString_withNSString_(ASFrameLayoutImpl *self, NSString *groupName, NSString *localname);

FOUNDATION_EXPORT ASFrameLayoutImpl *new_ASFrameLayoutImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASFrameLayoutImpl *create_ASFrameLayoutImpl_initWithNSString_withNSString_(NSString *groupName, NSString *localname);

J2OBJC_TYPE_LITERAL_HEADER(ASFrameLayoutImpl)

@compatibility_alias ComAsheraLayoutFrameLayoutImpl ASFrameLayoutImpl;

#endif

#if !defined (ASFrameLayoutImpl_FrameLayoutExt_) && (INCLUDE_ALL_FrameLayoutImpl || defined(INCLUDE_ASFrameLayoutImpl_FrameLayoutExt))
#define ASFrameLayoutImpl_FrameLayoutExt_

#define RESTRICT_FrameLayout 1
#define INCLUDE_ADFrameLayout 1
#include "FrameLayout.h"

#define RESTRICT_ILifeCycleDecorator 1
#define INCLUDE_ASILifeCycleDecorator 1
#include "ILifeCycleDecorator.h"

#define RESTRICT_IMaxDimension 1
#define INCLUDE_ASIMaxDimension 1
#include "IMaxDimension.h"

@class ASFrameLayoutImpl;
@class ASWidgetAttribute;
@class IOSObjectArray;
@protocol ASIWidget;
@protocol JavaUtilList;

@interface ASFrameLayoutImpl_FrameLayoutExt : ADFrameLayout < ASILifeCycleDecorator, ASIMaxDimension >

#pragma mark Public

- (instancetype)initWithASFrameLayoutImpl:(ASFrameLayoutImpl *)outer$;

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

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASFrameLayoutImpl_FrameLayoutExt)

FOUNDATION_EXPORT void ASFrameLayoutImpl_FrameLayoutExt_initWithASFrameLayoutImpl_(ASFrameLayoutImpl_FrameLayoutExt *self, ASFrameLayoutImpl *outer$);

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutExt *new_ASFrameLayoutImpl_FrameLayoutExt_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutExt *create_ASFrameLayoutImpl_FrameLayoutExt_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASFrameLayoutImpl_FrameLayoutExt)

#endif

#if !defined (ASFrameLayoutImpl_FrameLayoutCommandBuilder_) && (INCLUDE_ALL_FrameLayoutImpl || defined(INCLUDE_ASFrameLayoutImpl_FrameLayoutCommandBuilder))
#define ASFrameLayoutImpl_FrameLayoutCommandBuilder_

#define RESTRICT_ViewGroupImpl 1
#define INCLUDE_ASViewGroupImpl_ViewGroupCommandBuilder 1
#include "ViewGroupImpl.h"

@class ASFrameLayoutImpl;

@interface ASFrameLayoutImpl_FrameLayoutCommandBuilder : ASViewGroupImpl_ViewGroupCommandBuilder

#pragma mark Public

- (instancetype)initWithASFrameLayoutImpl:(ASFrameLayoutImpl *)outer$;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)addAllModelWithId:(id)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)addModelByIndexWithId:(id)arg0
                                                                withId:(id)arg1;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)addModelWithId:(id)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)executeWithBoolean:(jboolean)setter;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)invalidate;

- (id)isMeasureAllChildren;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)notifyDataSetChangedWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)refreshUiFromModelWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)removeModelAtIndexWithInt:(jint)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)removeModelByIdWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)requestLayout;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)reset;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setAddStatesFromChildrenWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setAlphaWithFloat:(jfloat)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setAsDragSourceWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setAttributeUnderTestWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setBackgroundRepeatWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setBackgroundTintModeWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setBackgroundTintWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setBackgroundWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setClickableWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setClipChildrenWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setClipToPaddingWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setContentDescriptionWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setCustomErrorMessageKeysWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setCustomErrorMessageValuesWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setDuplicateParentStateWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setEnabledWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setErrorStyleWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setFocusableWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setForegroundGravityWithNSString:(NSString *)value;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setForegroundRepeatWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setForegroundTintModeWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setForegroundTintWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setForegroundWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIdWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setInvalidateOnFrameChangeWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosAccessibilityHintWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosAccessibilityIgnoresInvertColorsWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosAccessibilityLabelWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosAccessibilityTraitsWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosAccessibilityValueWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosAlphaWithFloat:(jfloat)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosAutoresizesSubviewsWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosBackgroundColorWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosClearsContextBeforeDrawingWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosClipsToBoundsWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosContentScaleFactorWithFloat:(jfloat)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosInsetsLayoutMarginsFromSafeAreaWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosIsAccessibilityElementWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosIsExclusiveTouchWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosIsHiddenWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosIsMultipleTouchEnabledWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosIsOpaqueWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosIsUserInteractionEnabledWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosLargeContentImageWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosLargeContentTitleWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosLayerBorderColorWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosLayerBorderWidthWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosLayerCornerRadiusWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosLayerMasksToBoundsWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosPreservesSuperviewLayoutMarginsWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosRestorationIdentifierWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosScalesLargeContentImageWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosShowsLargeContentViewerWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosTagWithInt:(jint)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosTintColorWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setIosTranslatesAutoresizingMaskIntoConstraintsWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setKeepScreenOnWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setLayoutDirectionWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setLayoutModeWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setListitemWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setLongClickableWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setMaxHeightWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setMaxWidthWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setMeasureAllChildrenWithBoolean:(jboolean)value;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setMinHeightWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setMinWidthWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setModelForWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setModelIdPathWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setModelParamWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setModelPojoToUiParamsWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setModelPojoToUiWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setModelSyncEventsWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setModelUiToPojoEventIdsWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setModelUiToPojoWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setOnChildViewAddedWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setOnChildViewRemovedWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setOnClickWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setOnDragWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setOnKeyWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setOnLongClickWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setOnTouchWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setPaddingBottomWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setPaddingEndWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setPaddingHorizontalWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setPaddingLeftWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setPaddingRightWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setPaddingStartWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setPaddingTopWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setPaddingVerticalWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setPaddingWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setRotationWithFloat:(jfloat)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setRotationXWithFloat:(jfloat)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setRotationYWithFloat:(jfloat)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setScaleXWithFloat:(jfloat)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setScaleYWithFloat:(jfloat)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setSelectedWithBoolean:(jboolean)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setStyleWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setTextAlignmentWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setTextDirectionWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setTransformPivotXWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setTransformPivotYWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setTranslationXWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setTranslationYWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setTranslationZWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setV_maxlengthWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setV_maxWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setV_minlengthWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setV_minWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setV_patternWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setV_requiredWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setV_typeWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setValidationErrorDisplayTypeWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setValidationWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setVisibilityWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)setZIndexWithInt:(jint)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetAddStatesFromChildren;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetAlpha;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetBackground;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetBackgroundTint;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetBackgroundTintMode;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetClickable;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetClipChildren;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetClipToPadding;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetContentDescription;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetDuplicateParentState;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetEnabled;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetFocusable;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetForeground;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetForegroundGravity;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetForegroundTint;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetForegroundTintMode;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetId;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosAccessibilityHint;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosAccessibilityIgnoresInvertColors;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosAccessibilityLabel;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosAccessibilityTraits;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosAccessibilityValue;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosAlpha;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosAutoresizesSubviews;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosBackgroundColor;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosClearsContextBeforeDrawing;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosClipsToBounds;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosContentScaleFactor;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosInsetsLayoutMarginsFromSafeArea;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosIsAccessibilityElement;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosIsExclusiveTouch;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosIsFocused;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosIsHidden;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosIsMultipleTouchEnabled;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosIsOpaque;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosIsUserInteractionEnabled;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosLargeContentImage;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosLargeContentTitle;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosPreservesSuperviewLayoutMargins;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosRestorationIdentifier;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosScalesLargeContentImage;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosShowsLargeContentViewer;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosTag;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosTintColor;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetIosTranslatesAutoresizingMaskIntoConstraints;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetKeepScreenOn;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetLayoutDirection;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetLayoutMode;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetLongClickable;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetMaxHeight;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetMaxWidth;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetMeasureAllChildren;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetMinHeight;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetMinWidth;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetModelIdPath;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetModelParam;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetModelPojoToUi;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetModelSyncEvents;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetModelUiToPojo;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetPaddingBottom;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetPaddingEnd;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetPaddingLeft;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetPaddingRight;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetPaddingStart;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetPaddingTop;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetRotation;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetRotationX;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetRotationY;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetScaleX;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetScaleY;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetSelected;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetTextAlignment;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetTextDirection;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetTransformPivotX;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetTransformPivotY;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetTranslationX;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetTranslationY;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetTranslationZ;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetValidateForm;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)tryGetVisibility;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)updateModelDataWithNSString:(NSString *)arg0
                                                                      withId:(id)arg1;

- (ASFrameLayoutImpl_FrameLayoutCommandBuilder *)validateFormWithNSString:(NSString *)arg0;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASFrameLayoutImpl_FrameLayoutCommandBuilder)

FOUNDATION_EXPORT void ASFrameLayoutImpl_FrameLayoutCommandBuilder_initWithASFrameLayoutImpl_(ASFrameLayoutImpl_FrameLayoutCommandBuilder *self, ASFrameLayoutImpl *outer$);

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutCommandBuilder *new_ASFrameLayoutImpl_FrameLayoutCommandBuilder_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutCommandBuilder *create_ASFrameLayoutImpl_FrameLayoutCommandBuilder_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASFrameLayoutImpl_FrameLayoutCommandBuilder)

#endif

#if !defined (ASFrameLayoutImpl_FrameLayoutBean_) && (INCLUDE_ALL_FrameLayoutImpl || defined(INCLUDE_ASFrameLayoutImpl_FrameLayoutBean))
#define ASFrameLayoutImpl_FrameLayoutBean_

#define RESTRICT_ViewGroupImpl 1
#define INCLUDE_ASViewGroupImpl_ViewGroupBean 1
#include "ViewGroupImpl.h"

@class ASFrameLayoutImpl;
@protocol ASIWidget;

@interface ASFrameLayoutImpl_FrameLayoutBean : ASViewGroupImpl_ViewGroupBean

#pragma mark Public

- (instancetype)initWithASFrameLayoutImpl:(ASFrameLayoutImpl *)outer$;

- (id)isMeasureAllChildren;

- (void)setForegroundGravityWithNSString:(NSString *)value;

- (void)setMeasureAllChildrenWithBoolean:(jboolean)value;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithASIWidget:(id<ASIWidget>)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASFrameLayoutImpl_FrameLayoutBean)

FOUNDATION_EXPORT void ASFrameLayoutImpl_FrameLayoutBean_initWithASFrameLayoutImpl_(ASFrameLayoutImpl_FrameLayoutBean *self, ASFrameLayoutImpl *outer$);

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutBean *new_ASFrameLayoutImpl_FrameLayoutBean_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutBean *create_ASFrameLayoutImpl_FrameLayoutBean_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASFrameLayoutImpl_FrameLayoutBean)

#endif

#if !defined (ASFrameLayoutImpl_FrameLayoutParamsBean_) && (INCLUDE_ALL_FrameLayoutImpl || defined(INCLUDE_ASFrameLayoutImpl_FrameLayoutParamsBean))
#define ASFrameLayoutImpl_FrameLayoutParamsBean_

#define RESTRICT_ViewGroupImpl 1
#define INCLUDE_ASViewGroupImpl_ViewGroupParamsBean 1
#include "ViewGroupImpl.h"

@class ASFrameLayoutImpl;
@protocol ASIWidget;

@interface ASFrameLayoutImpl_FrameLayoutParamsBean : ASViewGroupImpl_ViewGroupParamsBean

#pragma mark Public

- (instancetype)initWithASFrameLayoutImpl:(ASFrameLayoutImpl *)outer$;

- (id)getLayoutGravityWithASIWidget:(id<ASIWidget>)w;

- (void)setLayoutGravityWithASIWidget:(id<ASIWidget>)w
                         withNSString:(NSString *)value;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASFrameLayoutImpl_FrameLayoutParamsBean)

FOUNDATION_EXPORT void ASFrameLayoutImpl_FrameLayoutParamsBean_initWithASFrameLayoutImpl_(ASFrameLayoutImpl_FrameLayoutParamsBean *self, ASFrameLayoutImpl *outer$);

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutParamsBean *new_ASFrameLayoutImpl_FrameLayoutParamsBean_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutParamsBean *create_ASFrameLayoutImpl_FrameLayoutParamsBean_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASFrameLayoutImpl_FrameLayoutParamsBean)

#endif

#if !defined (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder_) && (INCLUDE_ALL_FrameLayoutImpl || defined(INCLUDE_ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder))
#define ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder_

#define RESTRICT_ViewGroupImpl 1
#define INCLUDE_ASViewGroupImpl_ViewGroupCommandParamsBuilder 1
#include "ViewGroupImpl.h"

@class ASFrameLayoutImpl;

@interface ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder : ASViewGroupImpl_ViewGroupCommandParamsBuilder

#pragma mark Public

- (instancetype)initWithASFrameLayoutImpl:(ASFrameLayoutImpl *)outer$;

- (id)getLayoutGravity;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)reset;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutGravityWithNSString:(NSString *)value;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutMarginBottomWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutMarginEndWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutMarginHorizontalWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutMarginLeftWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutMarginRightWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutMarginStartWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutMarginTopWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutMarginVerticalWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)setLayoutMarginWithNSString:(NSString *)arg0;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)tryGetLayoutGravity;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)tryGetLayoutMarginBottom;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)tryGetLayoutMarginEnd;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)tryGetLayoutMarginLeft;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)tryGetLayoutMarginRight;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)tryGetLayoutMarginStart;

- (ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *)tryGetLayoutMarginTop;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder)

FOUNDATION_EXPORT void ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder_initWithASFrameLayoutImpl_(ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *self, ASFrameLayoutImpl *outer$);

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *new_ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder *create_ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder_initWithASFrameLayoutImpl_(ASFrameLayoutImpl *outer$);

J2OBJC_TYPE_LITERAL_HEADER(ASFrameLayoutImpl_FrameLayoutCommandParamsBuilder)

#endif

#pragma pop_macro("INCLUDE_ALL_FrameLayoutImpl")