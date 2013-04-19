//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/XMLFilterImpl.java
//
//  Created by retechretech on 13-4-19.
//

@class IOSCharArray;
@class OrgXmlSaxInputSource;
@class OrgXmlSaxSAXParseException;
@protocol OrgXmlSaxAttributes;
@protocol OrgXmlSaxLocator;
@protocol OrgXmlSaxXMLReader;

#import "JreEmulation.h"
#import "org/xml/sax/ContentHandler.h"
#import "org/xml/sax/DTDHandler.h"
#import "org/xml/sax/EntityResolver.h"
#import "org/xml/sax/ErrorHandler.h"
#import "org/xml/sax/XMLFilter.h"

@interface OrgXmlSaxHelpersXMLFilterImpl : NSObject < OrgXmlSaxXMLFilter, OrgXmlSaxEntityResolver, OrgXmlSaxDTDHandler, OrgXmlSaxContentHandler, OrgXmlSaxErrorHandler > {
 @public
  id<OrgXmlSaxXMLReader> parent_;
  id<OrgXmlSaxLocator> locator_;
  id<OrgXmlSaxEntityResolver> entityResolver_;
  id<OrgXmlSaxDTDHandler> dtdHandler_;
  id<OrgXmlSaxContentHandler> contentHandler_;
  id<OrgXmlSaxErrorHandler> errorHandler_;
}

@property (nonatomic, retain) id<OrgXmlSaxXMLReader> parent;
@property (nonatomic, retain) id<OrgXmlSaxLocator> locator;
@property (nonatomic, retain) id<OrgXmlSaxEntityResolver> entityResolver;
@property (nonatomic, retain) id<OrgXmlSaxDTDHandler> dtdHandler;
@property (nonatomic, retain) id<OrgXmlSaxContentHandler> contentHandler;
@property (nonatomic, retain) id<OrgXmlSaxErrorHandler> errorHandler;

- (id)init;
- (id)initWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)parent;
- (void)setParentWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)parent;
- (id<OrgXmlSaxXMLReader>)getParent;
- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)value;
- (BOOL)getFeatureWithNSString:(NSString *)name;
- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)value;
- (id)getPropertyWithNSString:(NSString *)name;
- (void)setEntityResolverWithOrgXmlSaxEntityResolver:(id<OrgXmlSaxEntityResolver>)resolver;
- (id<OrgXmlSaxEntityResolver>)getEntityResolver;
- (void)setDTDHandlerWithOrgXmlSaxDTDHandler:(id<OrgXmlSaxDTDHandler>)handler;
- (id<OrgXmlSaxDTDHandler>)getDTDHandler;
- (void)setContentHandlerWithOrgXmlSaxContentHandler:(id<OrgXmlSaxContentHandler>)handler;
- (id<OrgXmlSaxContentHandler>)getContentHandler;
- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)handler;
- (id<OrgXmlSaxErrorHandler>)getErrorHandler;
- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)input;
- (void)parseWithNSString:(NSString *)systemId;
- (OrgXmlSaxInputSource *)resolveEntityWithNSString:(NSString *)publicId
                                       withNSString:(NSString *)systemId;
- (void)notationDeclWithNSString:(NSString *)name
                    withNSString:(NSString *)publicId
                    withNSString:(NSString *)systemId;
- (void)unparsedEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)publicId
                          withNSString:(NSString *)systemId
                          withNSString:(NSString *)notationName;
- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator;
- (void)startDocument;
- (void)endDocument;
- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri;
- (void)endPrefixMappingWithNSString:(NSString *)prefix;
- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts;
- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName;
- (void)charactersWithJavaLangCharacterArray:(IOSCharArray *)ch
                                     withInt:(int)start
                                     withInt:(int)length;
- (void)ignorableWhitespaceWithJavaLangCharacterArray:(IOSCharArray *)ch
                                              withInt:(int)start
                                              withInt:(int)length;
- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data;
- (void)skippedEntityWithNSString:(NSString *)name;
- (void)warningWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e;
- (void)errorWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e;
- (void)fatalErrorWithOrgXmlSaxSAXParseException:(OrgXmlSaxSAXParseException *)e;
- (void)setupParse;
@end