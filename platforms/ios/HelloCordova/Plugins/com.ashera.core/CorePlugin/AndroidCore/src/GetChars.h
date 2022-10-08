//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\text\GetChars.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_GetChars")
#ifdef RESTRICT_GetChars
#define INCLUDE_ALL_GetChars 0
#else
#define INCLUDE_ALL_GetChars 1
#endif
#undef RESTRICT_GetChars

#if !defined (ADGetChars_) && (INCLUDE_ALL_GetChars || defined(INCLUDE_ADGetChars))
#define ADGetChars_

#define RESTRICT_JavaLangCharSequence 1
#define INCLUDE_JavaLangCharSequence 1
#include "java/lang/CharSequence.h"

@class IOSCharArray;

/*!
 @brief Please implement this interface if your CharSequence has a
  getChars() method like the one in String that is faster than
  calling charAt() multiple times.
 */
@protocol ADGetChars < JavaLangCharSequence, JavaObject >

/*!
 @brief Exactly like String.getChars(): copy chars <code>start</code>
  through <code>end - 1</code> from this CharSequence into <code>dest</code>
  beginning at offset <code>destoff</code>.
 */
- (void)getCharsWithInt:(jint)start
                withInt:(jint)end
          withCharArray:(IOSCharArray *)dest
                withInt:(jint)destoff;

@end

J2OBJC_EMPTY_STATIC_INIT(ADGetChars)

J2OBJC_TYPE_LITERAL_HEADER(ADGetChars)

#define RAndroidTextGetChars ADGetChars

#endif

#pragma pop_macro("INCLUDE_ALL_GetChars")