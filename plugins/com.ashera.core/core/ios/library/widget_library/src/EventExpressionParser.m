//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\widget\EventExpressionParser.java
//

#include "EventExpressionParser.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/PrintStream.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"

@class JavaUtilRegexPattern;
@protocol JavaUtilList;
@protocol JavaUtilMap;


@interface ASEventExpressionParser ()

+ (void)putValueToMapWithJavaUtilMap:(id<JavaUtilMap>)eventMap
                        withNSString:(NSString *)key
                        withNSString:(NSString *)value
                        withNSString:(NSString *)defaultValue;

+ (id<JavaUtilList>)evelRegExWithNSString:(NSString *)expression
                 withJavaUtilRegexPattern:(JavaUtilRegexPattern *)regEx
                             withNSString:(NSString *)message;

@end

inline JavaUtilRegexPattern *ASEventExpressionParser_get_EVENT_REGEX(void);
static JavaUtilRegexPattern *ASEventExpressionParser_EVENT_REGEX;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ASEventExpressionParser, EVENT_REGEX, JavaUtilRegexPattern *)

__attribute__((unused)) static void ASEventExpressionParser_putValueToMapWithJavaUtilMap_withNSString_withNSString_withNSString_(id<JavaUtilMap> eventMap, NSString *key, NSString *value, NSString *defaultValue);

__attribute__((unused)) static id<JavaUtilList> ASEventExpressionParser_evelRegExWithNSString_withJavaUtilRegexPattern_withNSString_(NSString *expression, JavaUtilRegexPattern *regEx, NSString *message);

J2OBJC_INITIALIZED_DEFN(ASEventExpressionParser)

NSString *ASEventExpressionParser_KEY_EVENT_ARGS = @"eventArgs";
NSString *ASEventExpressionParser_KEY_SCRIPT_NAME = @"scriptName";
NSString *ASEventExpressionParser_KEY_COMMAND_NAME = @"commandName";
NSString *ASEventExpressionParser_KEY_COMMAND_TYPE = @"commandType";
NSString *ASEventExpressionParser_KEY_EVENT = @"event";

@implementation ASEventExpressionParser

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASEventExpressionParser_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (id<JavaUtilMap>)parseEventExpressionWithNSString:(NSString *)expression
                                    withJavaUtilMap:(id<JavaUtilMap>)eventMap {
  return ASEventExpressionParser_parseEventExpressionWithNSString_withJavaUtilMap_(expression, eventMap);
}

+ (void)putValueToMapWithJavaUtilMap:(id<JavaUtilMap>)eventMap
                        withNSString:(NSString *)key
                        withNSString:(NSString *)value
                        withNSString:(NSString *)defaultValue {
  ASEventExpressionParser_putValueToMapWithJavaUtilMap_withNSString_withNSString_withNSString_(eventMap, key, value, defaultValue);
}

+ (id<JavaUtilMap>)parseEventExpressionWithNSString:(NSString *)expression {
  return ASEventExpressionParser_parseEventExpressionWithNSString_(expression);
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  ASEventExpressionParser_mainWithNSStringArray_(args);
}

+ (id<JavaUtilList>)evelRegExWithNSString:(NSString *)expression
                 withJavaUtilRegexPattern:(JavaUtilRegexPattern *)regEx
                             withNSString:(NSString *)message {
  return ASEventExpressionParser_evelRegExWithNSString_withJavaUtilRegexPattern_withNSString_(expression, regEx, message);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x9, 0, 1, -1, 2, -1, -1 },
    { NULL, "V", 0xa, 3, 4, -1, 5, -1, -1 },
    { NULL, "LJavaUtilMap;", 0x9, 0, 6, -1, 7, -1, -1 },
    { NULL, "V", 0x9, 8, 9, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0xa, 10, 11, -1, 12, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(parseEventExpressionWithNSString:withJavaUtilMap:);
  methods[2].selector = @selector(putValueToMapWithJavaUtilMap:withNSString:withNSString:withNSString:);
  methods[3].selector = @selector(parseEventExpressionWithNSString:);
  methods[4].selector = @selector(mainWithNSStringArray:);
  methods[5].selector = @selector(evelRegExWithNSString:withJavaUtilRegexPattern:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "KEY_EVENT_ARGS", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "KEY_SCRIPT_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
    { "KEY_COMMAND_NAME", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "KEY_COMMAND_TYPE", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
    { "KEY_EVENT", "LNSString;", .constantValue.asLong = 0, 0x19, -1, 17, -1, -1 },
    { "EVENT_REGEX", "LJavaUtilRegexPattern;", .constantValue.asLong = 0, 0x1a, -1, 18, -1, -1 },
  };
  static const void *ptrTable[] = { "parseEventExpression", "LNSString;LJavaUtilMap;", "(Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;", "putValueToMap", "LJavaUtilMap;LNSString;LNSString;LNSString;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "LNSString;", "(Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;", "main", "[LNSString;", "evelRegEx", "LNSString;LJavaUtilRegexPattern;LNSString;", "(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;", &ASEventExpressionParser_KEY_EVENT_ARGS, &ASEventExpressionParser_KEY_SCRIPT_NAME, &ASEventExpressionParser_KEY_COMMAND_NAME, &ASEventExpressionParser_KEY_COMMAND_TYPE, &ASEventExpressionParser_KEY_EVENT, &ASEventExpressionParser_EVENT_REGEX };
  static const J2ObjcClassInfo _ASEventExpressionParser = { "EventExpressionParser", "com.ashera.widget", ptrTable, methods, fields, 7, 0x1, 6, 6, -1, -1, -1, -1, -1 };
  return &_ASEventExpressionParser;
}

+ (void)initialize {
  if (self == [ASEventExpressionParser class]) {
    JreStrongAssign(&ASEventExpressionParser_EVENT_REGEX, JavaUtilRegexPattern_compileWithNSString_(@"(\\w*)(\\+|\\:)?(\\w*)#?(\\w*)?\\(?([^)]*)\\)?"));
    J2OBJC_SET_INITIALIZED(ASEventExpressionParser)
  }
}

@end

void ASEventExpressionParser_init(ASEventExpressionParser *self) {
  NSObject_init(self);
}

ASEventExpressionParser *new_ASEventExpressionParser_init() {
  J2OBJC_NEW_IMPL(ASEventExpressionParser, init)
}

ASEventExpressionParser *create_ASEventExpressionParser_init() {
  J2OBJC_CREATE_IMPL(ASEventExpressionParser, init)
}

id<JavaUtilMap> ASEventExpressionParser_parseEventExpressionWithNSString_withJavaUtilMap_(NSString *expression, id<JavaUtilMap> eventMap) {
  ASEventExpressionParser_initialize();
  id<JavaUtilList> eventArr = ASEventExpressionParser_evelRegExWithNSString_withJavaUtilRegexPattern_withNSString_(expression, ASEventExpressionParser_EVENT_REGEX, @"Invalid expression. e.g. onClick+freemarket#test(...)");
  NSString *javascriptEvent = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(eventArr)) getWithInt:0]);
  [((id<JavaUtilMap>) nil_chk(eventMap)) putWithId:ASEventExpressionParser_KEY_EVENT withId:javascriptEvent];
  ASEventExpressionParser_putValueToMapWithJavaUtilMap_withNSString_withNSString_withNSString_(eventMap, ASEventExpressionParser_KEY_COMMAND_TYPE, [eventArr getWithInt:1], @"");
  ASEventExpressionParser_putValueToMapWithJavaUtilMap_withNSString_withNSString_withNSString_(eventMap, ASEventExpressionParser_KEY_COMMAND_NAME, [eventArr getWithInt:2], @"java");
  ASEventExpressionParser_putValueToMapWithJavaUtilMap_withNSString_withNSString_withNSString_(eventMap, ASEventExpressionParser_KEY_SCRIPT_NAME, [eventArr getWithInt:3], javascriptEvent);
  ASEventExpressionParser_putValueToMapWithJavaUtilMap_withNSString_withNSString_withNSString_(eventMap, ASEventExpressionParser_KEY_EVENT_ARGS, [eventArr getWithInt:4], @"");
  return eventMap;
}

void ASEventExpressionParser_putValueToMapWithJavaUtilMap_withNSString_withNSString_withNSString_(id<JavaUtilMap> eventMap, NSString *key, NSString *value, NSString *defaultValue) {
  ASEventExpressionParser_initialize();
  [((id<JavaUtilMap>) nil_chk(eventMap)) putWithId:key withId:value == nil || [value java_isEmpty] ? defaultValue : value];
}

id<JavaUtilMap> ASEventExpressionParser_parseEventExpressionWithNSString_(NSString *expression) {
  ASEventExpressionParser_initialize();
  id<JavaUtilMap> eventMap = create_JavaUtilHashMap_init();
  return ASEventExpressionParser_parseEventExpressionWithNSString_withJavaUtilMap_(expression, eventMap);
}

void ASEventExpressionParser_mainWithNSStringArray_(IOSObjectArray *args) {
  ASEventExpressionParser_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithId:ASEventExpressionParser_parseEventExpressionWithNSString_(@"setXml(xml = getFileAsset{.} from xml->view)")];
}

id<JavaUtilList> ASEventExpressionParser_evelRegExWithNSString_withJavaUtilRegexPattern_withNSString_(NSString *expression, JavaUtilRegexPattern *regEx, NSString *message) {
  ASEventExpressionParser_initialize();
  JavaUtilRegexMatcher *m = JreRetainedLocalValue([((JavaUtilRegexPattern *) nil_chk(regEx)) matcherWithJavaLangCharSequence:expression]);
  jboolean b = [((JavaUtilRegexMatcher *) nil_chk(m)) matches];
  id<JavaUtilList> groups = create_JavaUtilArrayList_init();
  if (b) {
    for (jint i = 1; i <= [m groupCount]; i++) {
      [groups addWithId:[m groupWithInt:i]];
    }
  }
  else {
    @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$$$", message, @" : ", expression));
  }
  return groups;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASEventExpressionParser)