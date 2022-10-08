//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\widget_library\src\com\ashera\model\Error.java
//

#include "BaseWidget.h"
#include "Error.h"
#include "IOSClass.h"
#include "IWidget.h"
#include "J2ObjC_source.h"
#include "WidgetAttribute.h"
#include "java/io/IOException.h"
#include "java/io/PrintWriter.h"
#include "java/io/StringWriter.h"
#include "java/lang/Exception.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Map.h"


@interface ASError () {
 @public
  NSString *path_;
  NSString *description__;
  NSString *stackTrace_;
}

@end

J2OBJC_FIELD_SETTER(ASError, path_, NSString *)
J2OBJC_FIELD_SETTER(ASError, description__, NSString *)
J2OBJC_FIELD_SETTER(ASError, stackTrace_, NSString *)

@implementation ASError

- (NSString *)getPath {
  return path_;
}

- (void)setPathWithNSString:(NSString *)path {
  JreStrongAssign(&self->path_, path);
}

- (NSString *)getDescription {
  return description__;
}

- (void)setDescriptionWithNSString:(NSString *)description_ {
  JreStrongAssign(&self->description__, description_);
}

- (NSString *)getStackTrace {
  return stackTrace_;
}

- (void)setStackTraceWithNSString:(NSString *)stackTrace {
  JreStrongAssign(&self->stackTrace_, stackTrace);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ASError_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithASWidgetAttribute:(ASWidgetAttribute *)widgetAttribute
                            withASIWidget:(id<ASIWidget>)widget
                    withJavaLangException:(JavaLangException *)e {
  ASError_initWithASWidgetAttribute_withASIWidget_withJavaLangException_(self, widgetAttribute, widget, e);
  return self;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)map
                   withASBaseWidget:(ASBaseWidget *)widget
              withJavaLangException:(JavaLangException *)e {
  ASError_initWithJavaUtilMap_withASBaseWidget_withJavaLangException_(self, map, widget, e);
  return self;
}

- (void)dealloc {
  RELEASE_(path_);
  RELEASE_(description__);
  RELEASE_(stackTrace_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 4, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 5, -1, 6, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getPath);
  methods[1].selector = @selector(setPathWithNSString:);
  methods[2].selector = @selector(getDescription);
  methods[3].selector = @selector(setDescriptionWithNSString:);
  methods[4].selector = @selector(getStackTrace);
  methods[5].selector = @selector(setStackTraceWithNSString:);
  methods[6].selector = @selector(init);
  methods[7].selector = @selector(initWithASWidgetAttribute:withASIWidget:withJavaLangException:);
  methods[8].selector = @selector(initWithJavaUtilMap:withASBaseWidget:withJavaLangException:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "path_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "description__", "LNSString;", .constantValue.asLong = 0, 0x2, 7, -1, -1, -1 },
    { "stackTrace_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setPath", "LNSString;", "setDescription", "setStackTrace", "LASWidgetAttribute;LASIWidget;LJavaLangException;", "LJavaUtilMap;LASBaseWidget;LJavaLangException;", "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Lcom/ashera/widget/BaseWidget;Ljava/lang/Exception;)V", "description" };
  static const J2ObjcClassInfo _ASError = { "Error", "com.ashera.model", ptrTable, methods, fields, 7, 0x1, 9, 3, -1, -1, -1, -1, -1 };
  return &_ASError;
}

@end

void ASError_init(ASError *self) {
  NSObject_init(self);
}

ASError *new_ASError_init() {
  J2OBJC_NEW_IMPL(ASError, init)
}

ASError *create_ASError_init() {
  J2OBJC_CREATE_IMPL(ASError, init)
}

void ASError_initWithASWidgetAttribute_withASIWidget_withJavaLangException_(ASError *self, ASWidgetAttribute *widgetAttribute, id<ASIWidget> widget, JavaLangException *e) {
  NSObject_init(self);
  JavaLangStringBuilder *stringBuilder = create_JavaLangStringBuilder_initWithNSString_([((id<ASIWidget>) nil_chk(widget)) getLocalName]);
  if ([widget getId] != nil) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([stringBuilder appendWithNSString:@"["])) appendWithNSString:[widget getId]])) appendWithNSString:@"]"];
  }
  if (widgetAttribute != nil) {
    [((JavaLangStringBuilder *) nil_chk([stringBuilder appendWithNSString:@"/@"])) appendWithNSString:[widgetAttribute getAttributeName]];
  }
  JreStrongAssign(&self->path_, [stringBuilder description]);
  JreStrongAssign(&self->description__, [((JavaLangException *) nil_chk(e)) getMessage]);
  if ([e getMessage] == nil) {
    JreStrongAssign(&self->description__, [[e java_getClass] getName]);
  }
  JavaIoStringWriter *stringWriter = nil;
  JavaIoPrintWriter *p = nil;
  @try {
    stringWriter = create_JavaIoStringWriter_init();
    p = create_JavaIoPrintWriter_initWithJavaIoWriter_(stringWriter);
    [e printStackTraceWithJavaIoPrintWriter:p];
    JreStrongAssign(&self->stackTrace_, [stringWriter description]);
  }
  @finally {
    @try {
      [((JavaIoStringWriter *) nil_chk(stringWriter)) close];
    }
    @catch (JavaIoIOException *e1) {
    }
    [((JavaIoPrintWriter *) nil_chk(p)) close];
  }
}

ASError *new_ASError_initWithASWidgetAttribute_withASIWidget_withJavaLangException_(ASWidgetAttribute *widgetAttribute, id<ASIWidget> widget, JavaLangException *e) {
  J2OBJC_NEW_IMPL(ASError, initWithASWidgetAttribute_withASIWidget_withJavaLangException_, widgetAttribute, widget, e)
}

ASError *create_ASError_initWithASWidgetAttribute_withASIWidget_withJavaLangException_(ASWidgetAttribute *widgetAttribute, id<ASIWidget> widget, JavaLangException *e) {
  J2OBJC_CREATE_IMPL(ASError, initWithASWidgetAttribute_withASIWidget_withJavaLangException_, widgetAttribute, widget, e)
}

void ASError_initWithJavaUtilMap_withASBaseWidget_withJavaLangException_(ASError *self, id<JavaUtilMap> map, ASBaseWidget *widget, JavaLangException *e) {
  NSObject_init(self);
  JavaLangStringBuilder *stringBuilder = create_JavaLangStringBuilder_initWithNSString_([((ASBaseWidget *) nil_chk(widget)) getLocalName]);
  if (map != nil) {
    [stringBuilder appendWithId:map];
  }
  JreStrongAssign(&self->path_, [stringBuilder description]);
  JreStrongAssign(&self->description__, [((JavaLangException *) nil_chk(e)) getMessage]);
  if ([e getMessage] == nil) {
    JreStrongAssign(&self->description__, [[e java_getClass] getName]);
  }
  JavaIoStringWriter *stringWriter = create_JavaIoStringWriter_init();
  [e printStackTraceWithJavaIoPrintWriter:create_JavaIoPrintWriter_initWithJavaIoWriter_(stringWriter)];
  JreStrongAssign(&self->stackTrace_, [stringWriter description]);
}

ASError *new_ASError_initWithJavaUtilMap_withASBaseWidget_withJavaLangException_(id<JavaUtilMap> map, ASBaseWidget *widget, JavaLangException *e) {
  J2OBJC_NEW_IMPL(ASError, initWithJavaUtilMap_withASBaseWidget_withJavaLangException_, map, widget, e)
}

ASError *create_ASError_initWithJavaUtilMap_withASBaseWidget_withJavaLangException_(id<JavaUtilMap> map, ASBaseWidget *widget, JavaLangException *e) {
  J2OBJC_CREATE_IMPL(ASError, initWithJavaUtilMap_withASBaseWidget_withJavaLangException_, map, widget, e)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ASError)
