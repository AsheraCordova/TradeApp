//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-javafx-widget\SWTAndroid\src\main\java\r\android\text\TextDirectionHeuristic.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_TextDirectionHeuristic")
#ifdef RESTRICT_TextDirectionHeuristic
#define INCLUDE_ALL_TextDirectionHeuristic 0
#else
#define INCLUDE_ALL_TextDirectionHeuristic 1
#endif
#undef RESTRICT_TextDirectionHeuristic

#if !defined (ADTextDirectionHeuristic_) && (INCLUDE_ALL_TextDirectionHeuristic || defined(INCLUDE_ADTextDirectionHeuristic))
#define ADTextDirectionHeuristic_

@class IOSCharArray;
@protocol JavaLangCharSequence;

/*!
 @brief Interface for objects that use a heuristic for guessing at the paragraph direction by examining text.
 */
@protocol ADTextDirectionHeuristic < JavaObject >

/*!
 @brief Guess if a chars array is in the RTL direction or not.
 @param array the char array.
 @param start start index, inclusive.
 @param count the length to check, must not be negative and not greater than           
 <code>array.length - start</code> .
 @return true if all chars in the range are to be considered in a RTL direction,
           false otherwise.
 */
- (jboolean)isRtlWithCharArray:(IOSCharArray *)array
                       withInt:(jint)start
                       withInt:(jint)count;

/*!
 @brief Guess if a <code>CharSequence</code> is in the RTL direction or not.
 @param cs the CharSequence.
 @param start start index, inclusive.
 @param count the length to check, must not be negative and not greater than             
 <code>CharSequence.length() - start</code> .
 @return true if all chars in the range are to be considered in a RTL direction,
           false otherwise.
 */
- (jboolean)isRtlWithJavaLangCharSequence:(id<JavaLangCharSequence>)cs
                                  withInt:(jint)start
                                  withInt:(jint)count;

@end

J2OBJC_EMPTY_STATIC_INIT(ADTextDirectionHeuristic)

J2OBJC_TYPE_LITERAL_HEADER(ADTextDirectionHeuristic)

#define RAndroidTextTextDirectionHeuristic ADTextDirectionHeuristic

#endif

#pragma pop_macro("INCLUDE_ALL_TextDirectionHeuristic")
