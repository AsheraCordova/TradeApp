//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\css_parser\src\com\ashera\css\TokenMgrError.java
//

#include "J2ObjC_source.h"
#include "TokenMgrError.h"
#include "java/lang/Error.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuffer.h"


/*!
 @brief The version identifier for this Serializable class.
 Increment only if the <i>serialized</i> form of the
  class changes.
 */
inline jlong CSSTokenMgrError_get_serialVersionUID(void);
#define CSSTokenMgrError_serialVersionUID 1LL
J2OBJC_STATIC_FIELD_CONSTANT(CSSTokenMgrError, serialVersionUID, jlong)

@implementation CSSTokenMgrError

+ (NSString *)addEscapesWithNSString:(NSString *)str {
  return CSSTokenMgrError_addEscapesWithNSString_(str);
}

+ (NSString *)LexicalErrorWithBoolean:(jboolean)EOFSeen
                              withInt:(jint)lexState
                              withInt:(jint)errorLine
                              withInt:(jint)errorColumn
                         withNSString:(NSString *)errorAfter
                             withChar:(jchar)curChar {
  return CSSTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar);
}

- (NSString *)getMessage {
  return [super getMessage];
}

- (instancetype)initPackagePrivate {
  CSSTokenMgrError_initPackagePrivate(self);
  return self;
}

- (instancetype)initPackagePrivateWithNSString:(NSString *)message
                                       withInt:(jint)reason {
  CSSTokenMgrError_initPackagePrivateWithNSString_withInt_(self, message, reason);
  return self;
}

- (instancetype)initPackagePrivateWithBoolean:(jboolean)EOFSeen
                                      withInt:(jint)lexState
                                      withInt:(jint)errorLine
                                      withInt:(jint)errorColumn
                                 withNSString:(NSString *)errorAfter
                                     withChar:(jchar)curChar
                                      withInt:(jint)reason {
  CSSTokenMgrError_initPackagePrivateWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(self, EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar, reason);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1c, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0xc, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(addEscapesWithNSString:);
  methods[1].selector = @selector(LexicalErrorWithBoolean:withInt:withInt:withInt:withNSString:withChar:);
  methods[2].selector = @selector(getMessage);
  methods[3].selector = @selector(initPackagePrivate);
  methods[4].selector = @selector(initPackagePrivateWithNSString:withInt:);
  methods[5].selector = @selector(initPackagePrivateWithBoolean:withInt:withInt:withInt:withNSString:withChar:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = CSSTokenMgrError_serialVersionUID, 0x1a, -1, -1, -1, -1 },
    { "LEXICAL_ERROR", "I", .constantValue.asInt = CSSTokenMgrError_LEXICAL_ERROR, 0x18, -1, -1, -1, -1 },
    { "STATIC_LEXER_ERROR", "I", .constantValue.asInt = CSSTokenMgrError_STATIC_LEXER_ERROR, 0x18, -1, -1, -1, -1 },
    { "INVALID_LEXICAL_STATE", "I", .constantValue.asInt = CSSTokenMgrError_INVALID_LEXICAL_STATE, 0x18, -1, -1, -1, -1 },
    { "LOOP_DETECTED", "I", .constantValue.asInt = CSSTokenMgrError_LOOP_DETECTED, 0x18, -1, -1, -1, -1 },
    { "errorCode_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "addEscapes", "LNSString;", "LexicalError", "ZIIILNSString;C", "LNSString;I", "ZIIILNSString;CI" };
  static const J2ObjcClassInfo _CSSTokenMgrError = { "TokenMgrError", "com.ashera.css", ptrTable, methods, fields, 7, 0x0, 6, 6, -1, -1, -1, -1, -1 };
  return &_CSSTokenMgrError;
}

@end

NSString *CSSTokenMgrError_addEscapesWithNSString_(NSString *str) {
  CSSTokenMgrError_initialize();
  JavaLangStringBuffer *retval = create_JavaLangStringBuffer_init();
  jchar ch;
  for (jint i = 0; i < [((NSString *) nil_chk(str)) java_length]; i++) {
    switch ([str charAtWithInt:i]) {
      case 0:
      continue;
      case 0x0008:
      [retval appendWithNSString:@"\\b"];
      continue;
      case 0x0009:
      [retval appendWithNSString:@"\\t"];
      continue;
      case 0x000a:
      [retval appendWithNSString:@"\\n"];
      continue;
      case 0x000c:
      [retval appendWithNSString:@"\\f"];
      continue;
      case 0x000d:
      [retval appendWithNSString:@"\\r"];
      continue;
      case '"':
      [retval appendWithNSString:@"\\\""];
      continue;
      case '\'':
      [retval appendWithNSString:@"\\'"];
      continue;
      case '\\':
      [retval appendWithNSString:@"\\\\"];
      continue;
      default:
      if ((ch = [str charAtWithInt:i]) < (jint) 0x20 || ch > (jint) 0x7e) {
        NSString *s = JreStrcat("$$", @"0000", JavaLangInteger_toStringWithInt_withInt_(ch, 16));
        [retval appendWithNSString:JreStrcat("$$", @"\\u", [s java_substring:[s java_length] - 4 endIndex:[s java_length]])];
      }
      else {
        [retval appendWithChar:ch];
      }
      continue;
    }
  }
  return [retval description];
}

NSString *CSSTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar) {
  CSSTokenMgrError_initialize();
  return (JreStrcat("$I$I$$$$C", @"Lexical error at line ", errorLine, @", column ", errorColumn, @".  Encountered: ", (EOFSeen ? @"<EOF> " : JreStrcat("$$I$", (JreStrcat("C$C", '"', CSSTokenMgrError_addEscapesWithNSString_(NSString_java_valueOfChar_(curChar)), '"')), @" (", (jint) curChar, @"), ")), @"after : \"", CSSTokenMgrError_addEscapesWithNSString_(errorAfter), '"'));
}

void CSSTokenMgrError_initPackagePrivate(CSSTokenMgrError *self) {
  JavaLangError_init(self);
}

CSSTokenMgrError *new_CSSTokenMgrError_initPackagePrivate() {
  J2OBJC_NEW_IMPL(CSSTokenMgrError, initPackagePrivate)
}

CSSTokenMgrError *create_CSSTokenMgrError_initPackagePrivate() {
  J2OBJC_CREATE_IMPL(CSSTokenMgrError, initPackagePrivate)
}

void CSSTokenMgrError_initPackagePrivateWithNSString_withInt_(CSSTokenMgrError *self, NSString *message, jint reason) {
  JavaLangError_initWithNSString_(self, message);
  self->errorCode_ = reason;
}

CSSTokenMgrError *new_CSSTokenMgrError_initPackagePrivateWithNSString_withInt_(NSString *message, jint reason) {
  J2OBJC_NEW_IMPL(CSSTokenMgrError, initPackagePrivateWithNSString_withInt_, message, reason)
}

CSSTokenMgrError *create_CSSTokenMgrError_initPackagePrivateWithNSString_withInt_(NSString *message, jint reason) {
  J2OBJC_CREATE_IMPL(CSSTokenMgrError, initPackagePrivateWithNSString_withInt_, message, reason)
}

void CSSTokenMgrError_initPackagePrivateWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(CSSTokenMgrError *self, jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) {
  CSSTokenMgrError_initPackagePrivateWithNSString_withInt_(self, CSSTokenMgrError_LexicalErrorWithBoolean_withInt_withInt_withInt_withNSString_withChar_(EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar), reason);
}

CSSTokenMgrError *new_CSSTokenMgrError_initPackagePrivateWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) {
  J2OBJC_NEW_IMPL(CSSTokenMgrError, initPackagePrivateWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_, EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar, reason)
}

CSSTokenMgrError *create_CSSTokenMgrError_initPackagePrivateWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_(jboolean EOFSeen, jint lexState, jint errorLine, jint errorColumn, NSString *errorAfter, jchar curChar, jint reason) {
  J2OBJC_CREATE_IMPL(CSSTokenMgrError, initPackagePrivateWithBoolean_withInt_withInt_withInt_withNSString_withChar_withInt_, EOFSeen, lexState, errorLine, errorColumn, errorAfter, curChar, reason)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(CSSTokenMgrError)