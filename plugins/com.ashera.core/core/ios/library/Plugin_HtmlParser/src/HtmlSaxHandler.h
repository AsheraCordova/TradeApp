//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: D:\Java\git\core-widget_library\Plugin_HtmlParser\src\com\ashera\parser\html\HtmlSaxHandler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_HtmlSaxHandler")
#ifdef RESTRICT_HtmlSaxHandler
#define INCLUDE_ALL_HtmlSaxHandler 0
#else
#define INCLUDE_ALL_HtmlSaxHandler 1
#endif
#undef RESTRICT_HtmlSaxHandler

#if !defined (ASHtmlSaxHandler_) && (INCLUDE_ALL_HtmlSaxHandler || defined(INCLUDE_ASHtmlSaxHandler))
#define ASHtmlSaxHandler_

#define RESTRICT_OrgXmlSaxContentHandler 1
#define INCLUDE_OrgXmlSaxContentHandler 1
#include "org/xml/sax/ContentHandler.h"

@class ASWidgetAttributeMap;
@class IOSCharArray;
@protocol ASHasWidgets;
@protocol ASIFragment;
@protocol ASIWidget;
@protocol JavaUtilMap;
@protocol OrgXmlSaxAttributes;
@protocol OrgXmlSaxLocator;

@interface ASHtmlSaxHandler : NSObject < OrgXmlSaxContentHandler >

#pragma mark Public

- (instancetype)initWithASIFragment:(id<ASIFragment>)fragment
                        withBoolean:(jboolean)template_;

- (void)addToCurrentParentWithASIWidget:(id<ASIWidget>)widget;

- (void)charactersWithCharArray:(IOSCharArray *)ch
                        withInt:(jint)start
                        withInt:(jint)length;

- (void)endCreateWidgetWithNSString:(NSString *)localName;

- (void)endDocument;

- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName;

- (void)endPrefixMappingWithNSString:(NSString *)prefix;

- (id<ASIWidget>)getRoot;

- (void)ignorableWhitespaceWithCharArray:(IOSCharArray *)ch
                                 withInt:(jint)start
                                 withInt:(jint)length;

- (void)initRootWithASHasWidgets:(id<ASHasWidgets>)parent OBJC_METHOD_FAMILY_NONE;

- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data;

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator;

- (void)skippedEntityWithNSString:(NSString *)name;

- (id<ASIWidget>)startCreateWidgetWithNSString:(NSString *)localName
                                 withASIWidget:(id<ASIWidget>)widget
                                  withNSString:(NSString *)tagName
                                  withNSString:(NSString *)id_
                                       withInt:(jint)index
                       withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts
                      withASWidgetAttributeMap:(ASWidgetAttributeMap *)widgetAttributeMap
                               withJavaUtilMap:(id<JavaUtilMap>)params;

- (void)startDocument;

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts;

- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ASHtmlSaxHandler)

FOUNDATION_EXPORT void ASHtmlSaxHandler_initWithASIFragment_withBoolean_(ASHtmlSaxHandler *self, id<ASIFragment> fragment, jboolean template_);

FOUNDATION_EXPORT ASHtmlSaxHandler *new_ASHtmlSaxHandler_initWithASIFragment_withBoolean_(id<ASIFragment> fragment, jboolean template_) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ASHtmlSaxHandler *create_ASHtmlSaxHandler_initWithASIFragment_withBoolean_(id<ASIFragment> fragment, jboolean template_);

J2OBJC_TYPE_LITERAL_HEADER(ASHtmlSaxHandler)

@compatibility_alias ComAsheraParserHtmlHtmlSaxHandler ASHtmlSaxHandler;

#endif

#pragma pop_macro("INCLUDE_ALL_HtmlSaxHandler")