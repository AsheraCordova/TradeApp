//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\html_parser\src\repackaged\org\ccil\cowan\tagsoup\jaxp\SAX1ParserAdapter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_SAX1ParserAdapter")
#ifdef RESTRICT_SAX1ParserAdapter
#define INCLUDE_ALL_SAX1ParserAdapter 0
#else
#define INCLUDE_ALL_SAX1ParserAdapter 1
#endif
#undef RESTRICT_SAX1ParserAdapter

#if !defined (TSSAX1ParserAdapter_) && (INCLUDE_ALL_SAX1ParserAdapter || defined(INCLUDE_TSSAX1ParserAdapter))
#define TSSAX1ParserAdapter_

#define RESTRICT_OrgXmlSaxParser 1
#define INCLUDE_OrgXmlSaxParser 1
#include "org/xml/sax/Parser.h"

@class JavaUtilLocale;
@class OrgXmlSaxInputSource;
@protocol OrgXmlSaxDTDHandler;
@protocol OrgXmlSaxDocumentHandler;
@protocol OrgXmlSaxEntityResolver;
@protocol OrgXmlSaxErrorHandler;
@protocol OrgXmlSaxXMLReader;

/*!
 @brief This is a simpler adapter class that allows using SAX1 interface on top
  of basic SAX2 implementation, such as TagSoup.
 @author Tatu Saloranta (cowtowncoder@@yahoo.com)
 */
@interface TSSAX1ParserAdapter : NSObject < OrgXmlSaxParser > {
 @public
  id<OrgXmlSaxXMLReader> xmlReader_;
}

#pragma mark Public

- (instancetype)initWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)xr;

- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)source;

- (void)parseWithNSString:(NSString *)systemId;

/*!
 */
- (void)setDocumentHandlerWithOrgXmlSaxDocumentHandler:(id<OrgXmlSaxDocumentHandler>)h;

- (void)setDTDHandlerWithOrgXmlSaxDTDHandler:(id<OrgXmlSaxDTDHandler>)h;

- (void)setEntityResolverWithOrgXmlSaxEntityResolver:(id<OrgXmlSaxEntityResolver>)r;

- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)h;

- (void)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(TSSAX1ParserAdapter)

J2OBJC_FIELD_SETTER(TSSAX1ParserAdapter, xmlReader_, id<OrgXmlSaxXMLReader>)

FOUNDATION_EXPORT void TSSAX1ParserAdapter_initWithOrgXmlSaxXMLReader_(TSSAX1ParserAdapter *self, id<OrgXmlSaxXMLReader> xr);

FOUNDATION_EXPORT TSSAX1ParserAdapter *new_TSSAX1ParserAdapter_initWithOrgXmlSaxXMLReader_(id<OrgXmlSaxXMLReader> xr) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT TSSAX1ParserAdapter *create_TSSAX1ParserAdapter_initWithOrgXmlSaxXMLReader_(id<OrgXmlSaxXMLReader> xr);

J2OBJC_TYPE_LITERAL_HEADER(TSSAX1ParserAdapter)

@compatibility_alias RepackagedOrgCcilCowanTagsoupJaxpSAX1ParserAdapter TSSAX1ParserAdapter;

#endif

#if !defined (TSSAX1ParserAdapter_DocHandlerWrapper_) && (INCLUDE_ALL_SAX1ParserAdapter || defined(INCLUDE_TSSAX1ParserAdapter_DocHandlerWrapper))
#define TSSAX1ParserAdapter_DocHandlerWrapper_

#define RESTRICT_OrgXmlSaxContentHandler 1
#define INCLUDE_OrgXmlSaxContentHandler 1
#include "org/xml/sax/ContentHandler.h"

@class IOSCharArray;
@class TSSAX1ParserAdapter_AttributesWrapper;
@protocol OrgXmlSaxAttributes;
@protocol OrgXmlSaxDocumentHandler;
@protocol OrgXmlSaxLocator;

/*!
 @brief We need another helper class to deal with differences between
  Sax2 handler (content handler), and Sax1 handler (document handler)
 */
@interface TSSAX1ParserAdapter_DocHandlerWrapper : NSObject < OrgXmlSaxContentHandler > {
 @public
  id<OrgXmlSaxDocumentHandler> docHandler_;
  TSSAX1ParserAdapter_AttributesWrapper *mAttrWrapper_;
}

#pragma mark Public

- (void)charactersWithCharArray:(IOSCharArray *)ch
                        withInt:(jint)start
                        withInt:(jint)length;

- (void)endDocument;

- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName;

- (void)endPrefixMappingWithNSString:(NSString *)prefix;

- (void)ignorableWhitespaceWithCharArray:(IOSCharArray *)ch
                                 withInt:(jint)start
                                 withInt:(jint)length;

- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data;

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator;

- (void)skippedEntityWithNSString:(NSString *)name;

- (void)startDocument;

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attrs;

- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri;

#pragma mark Package-Private

/*!
 */
- (instancetype)initWithOrgXmlSaxDocumentHandler:(id<OrgXmlSaxDocumentHandler>)h;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(TSSAX1ParserAdapter_DocHandlerWrapper)

J2OBJC_FIELD_SETTER(TSSAX1ParserAdapter_DocHandlerWrapper, docHandler_, id<OrgXmlSaxDocumentHandler>)
J2OBJC_FIELD_SETTER(TSSAX1ParserAdapter_DocHandlerWrapper, mAttrWrapper_, TSSAX1ParserAdapter_AttributesWrapper *)

FOUNDATION_EXPORT void TSSAX1ParserAdapter_DocHandlerWrapper_initWithOrgXmlSaxDocumentHandler_(TSSAX1ParserAdapter_DocHandlerWrapper *self, id<OrgXmlSaxDocumentHandler> h);

FOUNDATION_EXPORT TSSAX1ParserAdapter_DocHandlerWrapper *new_TSSAX1ParserAdapter_DocHandlerWrapper_initWithOrgXmlSaxDocumentHandler_(id<OrgXmlSaxDocumentHandler> h) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT TSSAX1ParserAdapter_DocHandlerWrapper *create_TSSAX1ParserAdapter_DocHandlerWrapper_initWithOrgXmlSaxDocumentHandler_(id<OrgXmlSaxDocumentHandler> h);

J2OBJC_TYPE_LITERAL_HEADER(TSSAX1ParserAdapter_DocHandlerWrapper)

#endif

#if !defined (TSSAX1ParserAdapter_AttributesWrapper_) && (INCLUDE_ALL_SAX1ParserAdapter || defined(INCLUDE_TSSAX1ParserAdapter_AttributesWrapper))
#define TSSAX1ParserAdapter_AttributesWrapper_

#define RESTRICT_OrgXmlSaxAttributeList 1
#define INCLUDE_OrgXmlSaxAttributeList 1
#include "org/xml/sax/AttributeList.h"

@protocol OrgXmlSaxAttributes;

/*!
 @brief And one more helper to deal with attribute access differences
 */
@interface TSSAX1ParserAdapter_AttributesWrapper : NSObject < OrgXmlSaxAttributeList > {
 @public
  id<OrgXmlSaxAttributes> attrs_;
}

#pragma mark Public

- (instancetype)init;

- (jint)getLength;

- (NSString *)getNameWithInt:(jint)i;

- (NSString *)getTypeWithInt:(jint)i;

- (NSString *)getTypeWithNSString:(NSString *)name;

- (NSString *)getValueWithInt:(jint)i;

- (NSString *)getValueWithNSString:(NSString *)name;

- (void)setAttributesWithOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)a;

@end

J2OBJC_EMPTY_STATIC_INIT(TSSAX1ParserAdapter_AttributesWrapper)

J2OBJC_FIELD_SETTER(TSSAX1ParserAdapter_AttributesWrapper, attrs_, id<OrgXmlSaxAttributes>)

FOUNDATION_EXPORT void TSSAX1ParserAdapter_AttributesWrapper_init(TSSAX1ParserAdapter_AttributesWrapper *self);

FOUNDATION_EXPORT TSSAX1ParserAdapter_AttributesWrapper *new_TSSAX1ParserAdapter_AttributesWrapper_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT TSSAX1ParserAdapter_AttributesWrapper *create_TSSAX1ParserAdapter_AttributesWrapper_init(void);

J2OBJC_TYPE_LITERAL_HEADER(TSSAX1ParserAdapter_AttributesWrapper)

#endif

#pragma pop_macro("INCLUDE_ALL_SAX1ParserAdapter")
