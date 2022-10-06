//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\css_parser\src\com\ashera\css\EvaluatorTokenManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_EvaluatorTokenManager")
#ifdef RESTRICT_EvaluatorTokenManager
#define INCLUDE_ALL_EvaluatorTokenManager 0
#else
#define INCLUDE_ALL_EvaluatorTokenManager 1
#endif
#undef RESTRICT_EvaluatorTokenManager

#if !defined (CSSEvaluatorTokenManager_) && (INCLUDE_ALL_EvaluatorTokenManager || defined(INCLUDE_CSSEvaluatorTokenManager))
#define CSSEvaluatorTokenManager_

#define RESTRICT_EvaluatorConstants 1
#define INCLUDE_CSSEvaluatorConstants 1
#include "EvaluatorConstants.h"

@class CSSJavaCharStream;
@class CSSToken;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;
@class JavaIoPrintStream;

/*!
 @brief Token Manager.
 */
@interface CSSEvaluatorTokenManager : NSObject < CSSEvaluatorConstants > {
 @public
  /*!
   @brief Debug output.
   */
  JavaIoPrintStream *debugStream_;
  jint curLexState_;
  jint defaultLexState_;
  jint jjnewStateCnt_;
  jint jjround_;
  jint jjmatchedPos_;
  jint jjmatchedKind_;
  CSSJavaCharStream *input_stream_;
  jchar curChar_;
}

#pragma mark Public

/*!
 @brief Constructor.
 */
- (instancetype)initPackagePrivateWithCSSJavaCharStream:(CSSJavaCharStream *)stream;

/*!
 @brief Constructor.
 */
- (instancetype)initPackagePrivateWithCSSJavaCharStream:(CSSJavaCharStream *)stream
                                                withInt:(jint)lexState;

/*!
 @brief Get the next Token.
 */
- (CSSToken *)getNextToken;

/*!
 @brief Reinitialise parser.
 */
- (void)ReInitWithCSSJavaCharStream:(CSSJavaCharStream *)stream;

/*!
 @brief Reinitialise parser.
 */
- (void)ReInitWithCSSJavaCharStream:(CSSJavaCharStream *)stream
                            withInt:(jint)lexState;

/*!
 @brief Set debug output.
 */
- (void)setDebugStreamWithJavaIoPrintStream:(JavaIoPrintStream *)ds;

/*!
 @brief Switch to specified lex state.
 */
- (void)SwitchToWithInt:(jint)lexState;

#pragma mark Protected

- (CSSToken *)jjFillToken;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(CSSEvaluatorTokenManager)

J2OBJC_FIELD_SETTER(CSSEvaluatorTokenManager, debugStream_, JavaIoPrintStream *)
J2OBJC_FIELD_SETTER(CSSEvaluatorTokenManager, input_stream_, CSSJavaCharStream *)

inline IOSIntArray *CSSEvaluatorTokenManager_get_jjnextStates(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *CSSEvaluatorTokenManager_jjnextStates;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CSSEvaluatorTokenManager, jjnextStates, IOSIntArray *)

/*!
 @brief Token literal values.
 */
inline IOSObjectArray *CSSEvaluatorTokenManager_get_jjstrLiteralImages(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *CSSEvaluatorTokenManager_jjstrLiteralImages;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CSSEvaluatorTokenManager, jjstrLiteralImages, IOSObjectArray *)

/*!
 @brief Lexer state names.
 */
inline IOSObjectArray *CSSEvaluatorTokenManager_get_lexStateNames(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *CSSEvaluatorTokenManager_lexStateNames;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CSSEvaluatorTokenManager, lexStateNames, IOSObjectArray *)

inline IOSLongArray *CSSEvaluatorTokenManager_get_jjtoToken(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *CSSEvaluatorTokenManager_jjtoToken;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CSSEvaluatorTokenManager, jjtoToken, IOSLongArray *)

inline IOSLongArray *CSSEvaluatorTokenManager_get_jjtoSkip(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *CSSEvaluatorTokenManager_jjtoSkip;
J2OBJC_STATIC_FIELD_OBJ_FINAL(CSSEvaluatorTokenManager, jjtoSkip, IOSLongArray *)

FOUNDATION_EXPORT void CSSEvaluatorTokenManager_initPackagePrivateWithCSSJavaCharStream_(CSSEvaluatorTokenManager *self, CSSJavaCharStream *stream);

FOUNDATION_EXPORT CSSEvaluatorTokenManager *new_CSSEvaluatorTokenManager_initPackagePrivateWithCSSJavaCharStream_(CSSJavaCharStream *stream) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CSSEvaluatorTokenManager *create_CSSEvaluatorTokenManager_initPackagePrivateWithCSSJavaCharStream_(CSSJavaCharStream *stream);

FOUNDATION_EXPORT void CSSEvaluatorTokenManager_initPackagePrivateWithCSSJavaCharStream_withInt_(CSSEvaluatorTokenManager *self, CSSJavaCharStream *stream, jint lexState);

FOUNDATION_EXPORT CSSEvaluatorTokenManager *new_CSSEvaluatorTokenManager_initPackagePrivateWithCSSJavaCharStream_withInt_(CSSJavaCharStream *stream, jint lexState) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT CSSEvaluatorTokenManager *create_CSSEvaluatorTokenManager_initPackagePrivateWithCSSJavaCharStream_withInt_(CSSJavaCharStream *stream, jint lexState);

J2OBJC_TYPE_LITERAL_HEADER(CSSEvaluatorTokenManager)

@compatibility_alias ComAsheraCssEvaluatorTokenManager CSSEvaluatorTokenManager;

#endif

#pragma pop_macro("INCLUDE_ALL_EvaluatorTokenManager")
