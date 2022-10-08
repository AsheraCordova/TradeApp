//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroidX-core\src\main\java\androidx\core\view\ViewCompat.java
//

#include "J2ObjC_source.h"
#include "View.h"
#include "ViewCompat.h"
#include "ViewGroup.h"


@implementation ADXViewCompat

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ADXViewCompat_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)getMeasuredWidthAndStateWithADView:(ADView *)view {
  return ADXViewCompat_getMeasuredWidthAndStateWithADView_(view);
}

+ (jint)getMeasuredHeightAndStateWithADView:(ADView *)view {
  return ADXViewCompat_getMeasuredHeightAndStateWithADView_(view);
}

+ (jint)getLayoutDirectionWithADView:(ADView *)view {
  return ADXViewCompat_getLayoutDirectionWithADView_(view);
}

+ (jint)resolveSizeAndStateWithInt:(jint)size
                           withInt:(jint)measureSpec
                           withInt:(jint)childMeasuredState {
  return ADXViewCompat_resolveSizeAndStateWithInt_withInt_withInt_(size, measureSpec, childMeasuredState);
}

+ (jint)combineMeasuredStatesWithInt:(jint)curState
                             withInt:(jint)newState {
  return ADXViewCompat_combineMeasuredStatesWithInt_withInt_(curState, newState);
}

+ (jint)getMeasuredStateWithADView:(ADView *)child {
  return ADXViewCompat_getMeasuredStateWithADView_(child);
}

+ (jint)getPaddingStartWithADViewGroup:(ADViewGroup *)viewGroup {
  return ADXViewCompat_getPaddingStartWithADViewGroup_(viewGroup);
}

+ (jint)getPaddingEndWithADViewGroup:(ADViewGroup *)viewGroup {
  return ADXViewCompat_getPaddingEndWithADViewGroup_(viewGroup);
}

+ (void)setLayoutDirectionWithADViewGroup:(ADViewGroup *)viewGroup
                                  withInt:(jint)layoutDirection {
  ADXViewCompat_setLayoutDirectionWithADViewGroup_withInt_(viewGroup, layoutDirection);
}

+ (void)setPaddingRelativeWithADView:(ADView *)view
                             withInt:(jint)start
                             withInt:(jint)top
                             withInt:(jint)end
                             withInt:(jint)bottom {
  ADXViewCompat_setPaddingRelativeWithADView_withInt_withInt_withInt_withInt_(view, start, top, end, bottom);
}

+ (jint)getPaddingStartWithADView:(ADView *)view {
  return ADXViewCompat_getPaddingStartWithADView_(view);
}

+ (jint)getPaddingEndWithADView:(ADView *)view {
  return ADXViewCompat_getPaddingEndWithADView_(view);
}

+ (void)setXWithADView:(ADView *)child
               withInt:(jint)x {
  ADXViewCompat_setXWithADView_withInt_(child, x);
}

+ (void)setYWithADView:(ADView *)child
               withInt:(jint)y {
  ADXViewCompat_setYWithADView_withInt_(child, y);
}

+ (jint)getMinimumHeightWithADView:(ADView *)view {
  return ADXViewCompat_getMinimumHeightWithADView_(view);
}

+ (void)jumpDrawablesToCurrentStateWithADView:(ADView *)itemView {
  ADXViewCompat_jumpDrawablesToCurrentStateWithADView_(itemView);
}

+ (jboolean)getFitsSystemWindowsWithADView:(ADView *)view {
  return ADXViewCompat_getFitsSystemWindowsWithADView_(view);
}

+ (void)setElevationWithADView:(ADView *)child
                     withFloat:(jfloat)mDrawerElevation {
  ADXViewCompat_setElevationWithADView_withFloat_(child, mDrawerElevation);
}

+ (jfloat)getElevationWithADView:(ADView *)child {
  return ADXViewCompat_getElevationWithADView_(child);
}

+ (void)dispatchApplyWindowInsetsWithADView:(ADView *)child
                                     withId:(id)wi {
  ADXViewCompat_dispatchApplyWindowInsetsWithADView_withId_(child, wi);
}

+ (id)getRootWindowInsetsWithId:(id)drawerLayout {
  return ADXViewCompat_getRootWindowInsetsWithId_(drawerLayout);
}

+ (jint)getMinimumWidthWithADView:(ADView *)view {
  return ADXViewCompat_getMinimumWidthWithADView_(view);
}

+ (jint)getImportantForAccessibilityWithADView:(ADView *)itemView {
  return ADXViewCompat_getImportantForAccessibilityWithADView_(itemView);
}

+ (void)setImportantForAccessibilityWithADView:(ADView *)itemView
                                       withInt:(jint)importantForAccessibilityYes {
  ADXViewCompat_setImportantForAccessibilityWithADView_withInt_(itemView, importantForAccessibilityYes);
}

+ (void)dispatchFinishTemporaryDetachWithADView:(ADView *)child {
  ADXViewCompat_dispatchFinishTemporaryDetachWithADView_(child);
}

+ (void)dispatchStartTemporaryDetachWithADView:(ADView *)view {
  ADXViewCompat_dispatchStartTemporaryDetachWithADView_(view);
}

+ (jboolean)hasTransientStateWithADView:(ADView *)view {
  return ADXViewCompat_hasTransientStateWithADView_(view);
}

+ (jboolean)isLayoutDirectionResolvedWithADView:(ADView *)view {
  return ADXViewCompat_isLayoutDirectionResolvedWithADView_(view);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 3, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 4, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 8, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 11, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 14, 15, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 9, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 11, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 16, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 18, 17, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 19, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 20, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 21, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 22, 23, -1, -1, -1, -1 },
    { NULL, "F", 0x9, 24, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 25, 26, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x9, 27, 28, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 29, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 30, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 31, 17, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 32, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 33, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 34, 1, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 35, 1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getMeasuredWidthAndStateWithADView:);
  methods[2].selector = @selector(getMeasuredHeightAndStateWithADView:);
  methods[3].selector = @selector(getLayoutDirectionWithADView:);
  methods[4].selector = @selector(resolveSizeAndStateWithInt:withInt:withInt:);
  methods[5].selector = @selector(combineMeasuredStatesWithInt:withInt:);
  methods[6].selector = @selector(getMeasuredStateWithADView:);
  methods[7].selector = @selector(getPaddingStartWithADViewGroup:);
  methods[8].selector = @selector(getPaddingEndWithADViewGroup:);
  methods[9].selector = @selector(setLayoutDirectionWithADViewGroup:withInt:);
  methods[10].selector = @selector(setPaddingRelativeWithADView:withInt:withInt:withInt:withInt:);
  methods[11].selector = @selector(getPaddingStartWithADView:);
  methods[12].selector = @selector(getPaddingEndWithADView:);
  methods[13].selector = @selector(setXWithADView:withInt:);
  methods[14].selector = @selector(setYWithADView:withInt:);
  methods[15].selector = @selector(getMinimumHeightWithADView:);
  methods[16].selector = @selector(jumpDrawablesToCurrentStateWithADView:);
  methods[17].selector = @selector(getFitsSystemWindowsWithADView:);
  methods[18].selector = @selector(setElevationWithADView:withFloat:);
  methods[19].selector = @selector(getElevationWithADView:);
  methods[20].selector = @selector(dispatchApplyWindowInsetsWithADView:withId:);
  methods[21].selector = @selector(getRootWindowInsetsWithId:);
  methods[22].selector = @selector(getMinimumWidthWithADView:);
  methods[23].selector = @selector(getImportantForAccessibilityWithADView:);
  methods[24].selector = @selector(setImportantForAccessibilityWithADView:withInt:);
  methods[25].selector = @selector(dispatchFinishTemporaryDetachWithADView:);
  methods[26].selector = @selector(dispatchStartTemporaryDetachWithADView:);
  methods[27].selector = @selector(hasTransientStateWithADView:);
  methods[28].selector = @selector(isLayoutDirectionResolvedWithADView:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MEASURED_STATE_MASK", "I", .constantValue.asInt = ADXViewCompat_MEASURED_STATE_MASK, 0x19, -1, -1, -1, -1 },
    { "MEASURED_STATE_TOO_SMALL", "I", .constantValue.asInt = ADXViewCompat_MEASURED_STATE_TOO_SMALL, 0x19, -1, -1, -1, -1 },
    { "LAYOUT_DIRECTION_RTL", "I", .constantValue.asInt = ADXViewCompat_LAYOUT_DIRECTION_RTL, 0x19, -1, -1, -1, -1 },
    { "MEASURED_HEIGHT_STATE_SHIFT", "I", .constantValue.asInt = ADXViewCompat_MEASURED_HEIGHT_STATE_SHIFT, 0x19, -1, -1, -1, -1 },
    { "MEASURED_SIZE_MASK", "I", .constantValue.asInt = ADXViewCompat_MEASURED_SIZE_MASK, 0x19, -1, -1, -1, -1 },
    { "LAYOUT_DIRECTION_LTR", "I", .constantValue.asInt = ADXViewCompat_LAYOUT_DIRECTION_LTR, 0x19, -1, -1, -1, -1 },
    { "IMPORTANT_FOR_ACCESSIBILITY_AUTO", "I", .constantValue.asInt = ADXViewCompat_IMPORTANT_FOR_ACCESSIBILITY_AUTO, 0x19, -1, -1, -1, -1 },
    { "IMPORTANT_FOR_ACCESSIBILITY_YES", "I", .constantValue.asInt = ADXViewCompat_IMPORTANT_FOR_ACCESSIBILITY_YES, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "getMeasuredWidthAndState", "LADView;", "getMeasuredHeightAndState", "getLayoutDirection", "resolveSizeAndState", "III", "combineMeasuredStates", "II", "getMeasuredState", "getPaddingStart", "LADViewGroup;", "getPaddingEnd", "setLayoutDirection", "LADViewGroup;I", "setPaddingRelative", "LADView;IIII", "setX", "LADView;I", "setY", "getMinimumHeight", "jumpDrawablesToCurrentState", "getFitsSystemWindows", "setElevation", "LADView;F", "getElevation", "dispatchApplyWindowInsets", "LADView;LNSObject;", "getRootWindowInsets", "LNSObject;", "getMinimumWidth", "getImportantForAccessibility", "setImportantForAccessibility", "dispatchFinishTemporaryDetach", "dispatchStartTemporaryDetach", "hasTransientState", "isLayoutDirectionResolved" };
  static const J2ObjcClassInfo _ADXViewCompat = { "ViewCompat", "androidx.core.view", ptrTable, methods, fields, 7, 0x1, 29, 8, -1, -1, -1, -1, -1 };
  return &_ADXViewCompat;
}

@end

void ADXViewCompat_init(ADXViewCompat *self) {
  NSObject_init(self);
}

ADXViewCompat *new_ADXViewCompat_init() {
  J2OBJC_NEW_IMPL(ADXViewCompat, init)
}

ADXViewCompat *create_ADXViewCompat_init() {
  J2OBJC_CREATE_IMPL(ADXViewCompat, init)
}

jint ADXViewCompat_getMeasuredWidthAndStateWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(view)) getMeasuredWidth];
}

jint ADXViewCompat_getMeasuredHeightAndStateWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(view)) getMeasuredHeight];
}

jint ADXViewCompat_getLayoutDirectionWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(view)) getLayoutDirection];
}

jint ADXViewCompat_resolveSizeAndStateWithInt_withInt_withInt_(jint size, jint measureSpec, jint childMeasuredState) {
  ADXViewCompat_initialize();
  return ADView_resolveSizeAndStateWithInt_withInt_withInt_(size, measureSpec, childMeasuredState);
}

jint ADXViewCompat_combineMeasuredStatesWithInt_withInt_(jint curState, jint newState) {
  ADXViewCompat_initialize();
  return ADView_combineMeasuredStatesWithInt_withInt_(curState, newState);
}

jint ADXViewCompat_getMeasuredStateWithADView_(ADView *child) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(child)) getMeasuredState];
}

jint ADXViewCompat_getPaddingStartWithADViewGroup_(ADViewGroup *viewGroup) {
  ADXViewCompat_initialize();
  return [((ADViewGroup *) nil_chk(viewGroup)) getPaddingStart];
}

jint ADXViewCompat_getPaddingEndWithADViewGroup_(ADViewGroup *viewGroup) {
  ADXViewCompat_initialize();
  return [((ADViewGroup *) nil_chk(viewGroup)) getPaddingEnd];
}

void ADXViewCompat_setLayoutDirectionWithADViewGroup_withInt_(ADViewGroup *viewGroup, jint layoutDirection) {
  ADXViewCompat_initialize();
  [((ADViewGroup *) nil_chk(viewGroup)) setLayoutDirectionWithInt:layoutDirection];
}

void ADXViewCompat_setPaddingRelativeWithADView_withInt_withInt_withInt_withInt_(ADView *view, jint start, jint top, jint end, jint bottom) {
  ADXViewCompat_initialize();
  [((ADView *) nil_chk(view)) setPaddingRelativeWithInt:start withInt:top withInt:end withInt:bottom];
  
  ;
}

jint ADXViewCompat_getPaddingStartWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(view)) getPaddingStart];
}

jint ADXViewCompat_getPaddingEndWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(view)) getPaddingEnd];
}

void ADXViewCompat_setXWithADView_withInt_(ADView *child, jint x) {
  ADXViewCompat_initialize();
}

void ADXViewCompat_setYWithADView_withInt_(ADView *child, jint y) {
  ADXViewCompat_initialize();
}

jint ADXViewCompat_getMinimumHeightWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(view)) getMinimumHeight];
}

void ADXViewCompat_jumpDrawablesToCurrentStateWithADView_(ADView *itemView) {
  ADXViewCompat_initialize();
}

jboolean ADXViewCompat_getFitsSystemWindowsWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return false;
}

void ADXViewCompat_setElevationWithADView_withFloat_(ADView *child, jfloat mDrawerElevation) {
  ADXViewCompat_initialize();
  [((ADView *) nil_chk(child)) setElevationWithFloat:mDrawerElevation];
}

jfloat ADXViewCompat_getElevationWithADView_(ADView *child) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(child)) getElevation];
}

void ADXViewCompat_dispatchApplyWindowInsetsWithADView_withId_(ADView *child, id wi) {
  ADXViewCompat_initialize();
}

id ADXViewCompat_getRootWindowInsetsWithId_(id drawerLayout) {
  ADXViewCompat_initialize();
  return nil;
}

jint ADXViewCompat_getMinimumWidthWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(view)) getMinimumWidth];
}

jint ADXViewCompat_getImportantForAccessibilityWithADView_(ADView *itemView) {
  ADXViewCompat_initialize();
  return 0;
}

void ADXViewCompat_setImportantForAccessibilityWithADView_withInt_(ADView *itemView, jint importantForAccessibilityYes) {
  ADXViewCompat_initialize();
}

void ADXViewCompat_dispatchFinishTemporaryDetachWithADView_(ADView *child) {
  ADXViewCompat_initialize();
}

void ADXViewCompat_dispatchStartTemporaryDetachWithADView_(ADView *view) {
  ADXViewCompat_initialize();
}

jboolean ADXViewCompat_hasTransientStateWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(view)) hasTransientState];
}

jboolean ADXViewCompat_isLayoutDirectionResolvedWithADView_(ADView *view) {
  ADXViewCompat_initialize();
  return [((ADView *) nil_chk(view)) isLayoutDirectionResolved];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ADXViewCompat)