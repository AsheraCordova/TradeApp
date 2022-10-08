//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\html_parser\src\repackaged\org\ccil\cowan\tagsoup\jaxp\SAX1ParserAdapter.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "SAX1ParserAdapter.h"
#include "java/io/IOException.h"
#include "java/util/Locale.h"
#include "org/xml/sax/Attributes.h"
#include "org/xml/sax/DTDHandler.h"
#include "org/xml/sax/DocumentHandler.h"
#include "org/xml/sax/EntityResolver.h"
#include "org/xml/sax/ErrorHandler.h"
#include "org/xml/sax/InputSource.h"
#include "org/xml/sax/Locator.h"
#include "org/xml/sax/SAXException.h"
#include "org/xml/sax/SAXNotSupportedException.h"
#include "org/xml/sax/XMLReader.h"


@implementation TSSAX1ParserAdapter

- (instancetype)initWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)xr {
  TSSAX1ParserAdapter_initWithOrgXmlSaxXMLReader_(self, xr);
  return self;
}

- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)source {
  @try {
    [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) parseWithOrgXmlSaxInputSource:source];
  }
  @catch (JavaIoIOException *ioe) {
    @throw create_OrgXmlSaxSAXException_initWithJavaLangException_(ioe);
  }
}

- (void)parseWithNSString:(NSString *)systemId {
  @try {
    [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) parseWithNSString:systemId];
  }
  @catch (JavaIoIOException *ioe) {
    @throw create_OrgXmlSaxSAXException_initWithJavaLangException_(ioe);
  }
}

- (void)setDocumentHandlerWithOrgXmlSaxDocumentHandler:(id<OrgXmlSaxDocumentHandler>)h {
  [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) setContentHandlerWithOrgXmlSaxContentHandler:create_TSSAX1ParserAdapter_DocHandlerWrapper_initWithOrgXmlSaxDocumentHandler_(h)];
}

- (void)setDTDHandlerWithOrgXmlSaxDTDHandler:(id<OrgXmlSaxDTDHandler>)h {
  [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) setDTDHandlerWithOrgXmlSaxDTDHandler:h];
}

- (void)setEntityResolverWithOrgXmlSaxEntityResolver:(id<OrgXmlSaxEntityResolver>)r {
  [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) setEntityResolverWithOrgXmlSaxEntityResolver:r];
}

- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)h {
  [((id<OrgXmlSaxXMLReader>) nil_chk(xmlReader_)) setErrorHandlerWithOrgXmlSaxErrorHandler:h];
}

- (void)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale {
  @throw create_OrgXmlSaxSAXNotSupportedException_initWithNSString_(@"TagSoup does not implement setLocale() method");
}

- (void)dealloc {
  RELEASE_(xmlReader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 4, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 14, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgXmlSaxXMLReader:);
  methods[1].selector = @selector(parseWithOrgXmlSaxInputSource:);
  methods[2].selector = @selector(parseWithNSString:);
  methods[3].selector = @selector(setDocumentHandlerWithOrgXmlSaxDocumentHandler:);
  methods[4].selector = @selector(setDTDHandlerWithOrgXmlSaxDTDHandler:);
  methods[5].selector = @selector(setEntityResolverWithOrgXmlSaxEntityResolver:);
  methods[6].selector = @selector(setErrorHandlerWithOrgXmlSaxErrorHandler:);
  methods[7].selector = @selector(setLocaleWithJavaUtilLocale:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "xmlReader_", "LOrgXmlSaxXMLReader;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgXmlSaxXMLReader;", "parse", "LOrgXmlSaxInputSource;", "LOrgXmlSaxSAXException;", "LNSString;", "setDocumentHandler", "LOrgXmlSaxDocumentHandler;", "setDTDHandler", "LOrgXmlSaxDTDHandler;", "setEntityResolver", "LOrgXmlSaxEntityResolver;", "setErrorHandler", "LOrgXmlSaxErrorHandler;", "setLocale", "LJavaUtilLocale;", "LTSSAX1ParserAdapter_DocHandlerWrapper;LTSSAX1ParserAdapter_AttributesWrapper;" };
  static const J2ObjcClassInfo _TSSAX1ParserAdapter = { "SAX1ParserAdapter", "repackaged.org.ccil.cowan.tagsoup.jaxp", ptrTable, methods, fields, 7, 0x1, 8, 1, -1, 15, -1, -1, -1 };
  return &_TSSAX1ParserAdapter;
}

@end

void TSSAX1ParserAdapter_initWithOrgXmlSaxXMLReader_(TSSAX1ParserAdapter *self, id<OrgXmlSaxXMLReader> xr) {
  NSObject_init(self);
  JreStrongAssign(&self->xmlReader_, xr);
}

TSSAX1ParserAdapter *new_TSSAX1ParserAdapter_initWithOrgXmlSaxXMLReader_(id<OrgXmlSaxXMLReader> xr) {
  J2OBJC_NEW_IMPL(TSSAX1ParserAdapter, initWithOrgXmlSaxXMLReader_, xr)
}

TSSAX1ParserAdapter *create_TSSAX1ParserAdapter_initWithOrgXmlSaxXMLReader_(id<OrgXmlSaxXMLReader> xr) {
  J2OBJC_CREATE_IMPL(TSSAX1ParserAdapter, initWithOrgXmlSaxXMLReader_, xr)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(TSSAX1ParserAdapter)

@implementation TSSAX1ParserAdapter_DocHandlerWrapper

- (instancetype)initWithOrgXmlSaxDocumentHandler:(id<OrgXmlSaxDocumentHandler>)h {
  TSSAX1ParserAdapter_DocHandlerWrapper_initWithOrgXmlSaxDocumentHandler_(self, h);
  return self;
}

- (void)charactersWithCharArray:(IOSCharArray *)ch
                        withInt:(jint)start
                        withInt:(jint)length {
  [((id<OrgXmlSaxDocumentHandler>) nil_chk(docHandler_)) charactersWithCharArray:ch withInt:start withInt:length];
}

- (void)endDocument {
  [((id<OrgXmlSaxDocumentHandler>) nil_chk(docHandler_)) endDocument];
}

- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName {
  if (qName == nil) {
    qName = localName;
  }
  [((id<OrgXmlSaxDocumentHandler>) nil_chk(docHandler_)) endElementWithNSString:qName];
}

- (void)endPrefixMappingWithNSString:(NSString *)prefix {
}

- (void)ignorableWhitespaceWithCharArray:(IOSCharArray *)ch
                                 withInt:(jint)start
                                 withInt:(jint)length {
  [((id<OrgXmlSaxDocumentHandler>) nil_chk(docHandler_)) ignorableWhitespaceWithCharArray:ch withInt:start withInt:length];
}

- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data {
  [((id<OrgXmlSaxDocumentHandler>) nil_chk(docHandler_)) processingInstructionWithNSString:target withNSString:data];
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator {
  [((id<OrgXmlSaxDocumentHandler>) nil_chk(docHandler_)) setDocumentLocatorWithOrgXmlSaxLocator:locator];
}

- (void)skippedEntityWithNSString:(NSString *)name {
}

- (void)startDocument {
  [((id<OrgXmlSaxDocumentHandler>) nil_chk(docHandler_)) startDocument];
}

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attrs {
  if (qName == nil) {
    qName = localName;
  }
  [((TSSAX1ParserAdapter_AttributesWrapper *) nil_chk(mAttrWrapper_)) setAttributesWithOrgXmlSaxAttributes:attrs];
  [((id<OrgXmlSaxDocumentHandler>) nil_chk(docHandler_)) startElementWithNSString:qName withOrgXmlSaxAttributeList:mAttrWrapper_];
}

- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri {
}

- (void)dealloc {
  RELEASE_(docHandler_);
  RELEASE_(mAttrWrapper_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 9, 10, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 11, 12, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 13, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 14, 15, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 16, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgXmlSaxDocumentHandler:);
  methods[1].selector = @selector(charactersWithCharArray:withInt:withInt:);
  methods[2].selector = @selector(endDocument);
  methods[3].selector = @selector(endElementWithNSString:withNSString:withNSString:);
  methods[4].selector = @selector(endPrefixMappingWithNSString:);
  methods[5].selector = @selector(ignorableWhitespaceWithCharArray:withInt:withInt:);
  methods[6].selector = @selector(processingInstructionWithNSString:withNSString:);
  methods[7].selector = @selector(setDocumentLocatorWithOrgXmlSaxLocator:);
  methods[8].selector = @selector(skippedEntityWithNSString:);
  methods[9].selector = @selector(startDocument);
  methods[10].selector = @selector(startElementWithNSString:withNSString:withNSString:withOrgXmlSaxAttributes:);
  methods[11].selector = @selector(startPrefixMappingWithNSString:withNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "docHandler_", "LOrgXmlSaxDocumentHandler;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "mAttrWrapper_", "LTSSAX1ParserAdapter_AttributesWrapper;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgXmlSaxDocumentHandler;", "characters", "[CII", "LOrgXmlSaxSAXException;", "endElement", "LNSString;LNSString;LNSString;", "endPrefixMapping", "LNSString;", "ignorableWhitespace", "processingInstruction", "LNSString;LNSString;", "setDocumentLocator", "LOrgXmlSaxLocator;", "skippedEntity", "startElement", "LNSString;LNSString;LNSString;LOrgXmlSaxAttributes;", "startPrefixMapping", "LTSSAX1ParserAdapter;" };
  static const J2ObjcClassInfo _TSSAX1ParserAdapter_DocHandlerWrapper = { "DocHandlerWrapper", "repackaged.org.ccil.cowan.tagsoup.jaxp", ptrTable, methods, fields, 7, 0x18, 12, 2, 17, -1, -1, -1, -1 };
  return &_TSSAX1ParserAdapter_DocHandlerWrapper;
}

@end

void TSSAX1ParserAdapter_DocHandlerWrapper_initWithOrgXmlSaxDocumentHandler_(TSSAX1ParserAdapter_DocHandlerWrapper *self, id<OrgXmlSaxDocumentHandler> h) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->mAttrWrapper_, new_TSSAX1ParserAdapter_AttributesWrapper_init());
  JreStrongAssign(&self->docHandler_, h);
}

TSSAX1ParserAdapter_DocHandlerWrapper *new_TSSAX1ParserAdapter_DocHandlerWrapper_initWithOrgXmlSaxDocumentHandler_(id<OrgXmlSaxDocumentHandler> h) {
  J2OBJC_NEW_IMPL(TSSAX1ParserAdapter_DocHandlerWrapper, initWithOrgXmlSaxDocumentHandler_, h)
}

TSSAX1ParserAdapter_DocHandlerWrapper *create_TSSAX1ParserAdapter_DocHandlerWrapper_initWithOrgXmlSaxDocumentHandler_(id<OrgXmlSaxDocumentHandler> h) {
  J2OBJC_CREATE_IMPL(TSSAX1ParserAdapter_DocHandlerWrapper, initWithOrgXmlSaxDocumentHandler_, h)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(TSSAX1ParserAdapter_DocHandlerWrapper)

@implementation TSSAX1ParserAdapter_AttributesWrapper

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  TSSAX1ParserAdapter_AttributesWrapper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setAttributesWithOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)a {
  JreStrongAssign(&attrs_, a);
}

- (jint)getLength {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attrs_)) getLength];
}

- (NSString *)getNameWithInt:(jint)i {
  NSString *n = JreRetainedLocalValue([((id<OrgXmlSaxAttributes>) nil_chk(attrs_)) getQNameWithInt:i]);
  return (n == nil) ? [((id<OrgXmlSaxAttributes>) nil_chk(attrs_)) getLocalNameWithInt:i] : n;
}

- (NSString *)getTypeWithInt:(jint)i {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attrs_)) getTypeWithInt:i];
}

- (NSString *)getTypeWithNSString:(NSString *)name {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attrs_)) getTypeWithNSString:name];
}

- (NSString *)getValueWithInt:(jint)i {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attrs_)) getValueWithInt:i];
}

- (NSString *)getValueWithNSString:(NSString *)name {
  return [((id<OrgXmlSaxAttributes>) nil_chk(attrs_)) getValueWithNSString:name];
}

- (void)dealloc {
  RELEASE_(attrs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 5, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setAttributesWithOrgXmlSaxAttributes:);
  methods[2].selector = @selector(getLength);
  methods[3].selector = @selector(getNameWithInt:);
  methods[4].selector = @selector(getTypeWithInt:);
  methods[5].selector = @selector(getTypeWithNSString:);
  methods[6].selector = @selector(getValueWithInt:);
  methods[7].selector = @selector(getValueWithNSString:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "attrs_", "LOrgXmlSaxAttributes;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setAttributes", "LOrgXmlSaxAttributes;", "getName", "I", "getType", "LNSString;", "getValue", "LTSSAX1ParserAdapter;" };
  static const J2ObjcClassInfo _TSSAX1ParserAdapter_AttributesWrapper = { "AttributesWrapper", "repackaged.org.ccil.cowan.tagsoup.jaxp", ptrTable, methods, fields, 7, 0x18, 8, 1, 7, -1, -1, -1, -1 };
  return &_TSSAX1ParserAdapter_AttributesWrapper;
}

@end

void TSSAX1ParserAdapter_AttributesWrapper_init(TSSAX1ParserAdapter_AttributesWrapper *self) {
  NSObject_init(self);
}

TSSAX1ParserAdapter_AttributesWrapper *new_TSSAX1ParserAdapter_AttributesWrapper_init() {
  J2OBJC_NEW_IMPL(TSSAX1ParserAdapter_AttributesWrapper, init)
}

TSSAX1ParserAdapter_AttributesWrapper *create_TSSAX1ParserAdapter_AttributesWrapper_init() {
  J2OBJC_CREATE_IMPL(TSSAX1ParserAdapter_AttributesWrapper, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(TSSAX1ParserAdapter_AttributesWrapper)