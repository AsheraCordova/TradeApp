//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\stub\r\android\view\accessibility\AccessibilityEvent.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_AccessibilityEvent")
#ifdef RESTRICT_AccessibilityEvent
#define INCLUDE_ALL_AccessibilityEvent 0
#else
#define INCLUDE_ALL_AccessibilityEvent 1
#endif
#undef RESTRICT_AccessibilityEvent

#if !defined (ADAccessibilityEvent_) && (INCLUDE_ALL_AccessibilityEvent || defined(INCLUDE_ADAccessibilityEvent))
#define ADAccessibilityEvent_

@interface ADAccessibilityEvent : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ADAccessibilityEvent)

inline jint ADAccessibilityEvent_get_CONTENT_CHANGE_TYPE_SUBTREE(void);
#define ADAccessibilityEvent_CONTENT_CHANGE_TYPE_SUBTREE 0
J2OBJC_STATIC_FIELD_CONSTANT(ADAccessibilityEvent, CONTENT_CHANGE_TYPE_SUBTREE, jint)

inline jint ADAccessibilityEvent_get_TYPE_VIEW_SELECTED(void);
#define ADAccessibilityEvent_TYPE_VIEW_SELECTED 10
J2OBJC_STATIC_FIELD_CONSTANT(ADAccessibilityEvent, TYPE_VIEW_SELECTED, jint)

inline jint ADAccessibilityEvent_get_CONTENT_CHANGE_TYPE_UNDEFINED(void);
#define ADAccessibilityEvent_CONTENT_CHANGE_TYPE_UNDEFINED 11
J2OBJC_STATIC_FIELD_CONSTANT(ADAccessibilityEvent, CONTENT_CHANGE_TYPE_UNDEFINED, jint)

inline jint ADAccessibilityEvent_get_TYPE_WINDOW_STATE_CHANGED(void);
#define ADAccessibilityEvent_TYPE_WINDOW_STATE_CHANGED 0
J2OBJC_STATIC_FIELD_CONSTANT(ADAccessibilityEvent, TYPE_WINDOW_STATE_CHANGED, jint)

FOUNDATION_EXPORT void ADAccessibilityEvent_init(ADAccessibilityEvent *self);

FOUNDATION_EXPORT ADAccessibilityEvent *new_ADAccessibilityEvent_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ADAccessibilityEvent *create_ADAccessibilityEvent_init(void);

J2OBJC_TYPE_LITERAL_HEADER(ADAccessibilityEvent)

@compatibility_alias RAndroidViewAccessibilityAccessibilityEvent ADAccessibilityEvent;

#endif

#pragma pop_macro("INCLUDE_ALL_AccessibilityEvent")
