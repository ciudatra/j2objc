//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/ParserAdapter.java
//
//  Created by retechretech on 13-4-24.
//

@class IOSCharArray;
@class IOSObjectArray;
@class OrgXmlSaxHelpersAttributesImpl;
@class OrgXmlSaxHelpersNamespaceSupport;
@class OrgXmlSaxHelpersParserAdapter_AttributeListAdapter;
@class OrgXmlSaxInputSource;
@class OrgXmlSaxSAXParseException;
@protocol OrgXmlSaxAttributeList;
@protocol OrgXmlSaxContentHandler;
@protocol OrgXmlSaxDTDHandler;
@protocol OrgXmlSaxEntityResolver;
@protocol OrgXmlSaxErrorHandler;
@protocol OrgXmlSaxLocator;
@protocol OrgXmlSaxParser;

#import "JreEmulation.h"
#import "org/xml/sax/Attributes.h"
#import "org/xml/sax/DocumentHandler.h"
#import "org/xml/sax/XMLReader.h"

@interface OrgXmlSaxHelpersParserAdapter : NSObject < OrgXmlSaxXMLReader, OrgXmlSaxDocumentHandler > {
 @public
  OrgXmlSaxHelpersNamespaceSupport *nsSupport_;
  OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *attAdapter_;
  BOOL parsing_;
  IOSObjectArray *nameParts_;
  id<OrgXmlSaxParser> parser_;
  OrgXmlSaxHelpersAttributesImpl *atts_;
  BOOL namespaces_;
  BOOL prefixes_;
  BOOL uris_;
  id<OrgXmlSaxLocator> locator_;
  id<OrgXmlSaxEntityResolver> entityResolver_;
  id<OrgXmlSaxDTDHandler> dtdHandler_;
  id<OrgXmlSaxContentHandler> contentHandler_;
  id<OrgXmlSaxErrorHandler> errorHandler_;
}

@property (nonatomic, retain) OrgXmlSaxHelpersNamespaceSupport *nsSupport;
@property (nonatomic, retain) OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *attAdapter;
@property (nonatomic, assign) BOOL parsing;
@property (nonatomic, retain) IOSObjectArray *nameParts;
@property (nonatomic, retain) id<OrgXmlSaxParser> parser;
@property (nonatomic, retain) OrgXmlSaxHelpersAttributesImpl *atts;
@property (nonatomic, assign) BOOL namespaces;
@property (nonatomic, assign) BOOL prefixes;
@property (nonatomic, assign) BOOL uris;
@property (nonatomic, retain) id<OrgXmlSaxLocator> locator;
@property (nonatomic, retain) id<OrgXmlSaxEntityResolver> entityResolver;
@property (nonatomic, retain) id<OrgXmlSaxDTDHandler> dtdHandler;
@property (nonatomic, retain) id<OrgXmlSaxContentHandler> contentHandler;
@property (nonatomic, retain) id<OrgXmlSaxErrorHandler> errorHandler;

+ (NSString *)FEATURES;
+ (NSString *)NAMESPACES;
+ (NSString *)NAMESPACE_PREFIXES;
+ (NSString *)XMLNS_URIs;
- (id)init;
- (id)initWithOrgXmlSaxParser:(id<OrgXmlSaxParser>)parser;
- (void)setupWithOrgXmlSaxParser:(id<OrgXmlSaxParser>)parser;
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
- (void)parseWithNSString:(NSString *)systemId;
- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)input;
- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator;
- (void)startDocument;
- (void)endDocument;
- (void)startElementWithNSString:(NSString *)qName
      withOrgXmlSaxAttributeList:(id<OrgXmlSaxAttributeList>)qAtts;
- (void)endElementWithNSString:(NSString *)qName;
- (void)charactersWithJavaLangCharacterArray:(IOSCharArray *)ch
                                     withInt:(int)start
                                     withInt:(int)length;
- (void)ignorableWhitespaceWithJavaLangCharacterArray:(IOSCharArray *)ch
                                              withInt:(int)start
                                              withInt:(int)length;
- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data;
- (void)setupParser;
- (IOSObjectArray *)processNameWithNSString:(NSString *)qName
                                   withBOOL:(BOOL)isAttribute
                                   withBOOL:(BOOL)useException;
- (void)reportErrorWithNSString:(NSString *)message;
- (OrgXmlSaxSAXParseException *)makeExceptionWithNSString:(NSString *)message;
- (void)checkNotParsingWithNSString:(NSString *)type
                       withNSString:(NSString *)name;
@end

@interface OrgXmlSaxHelpersParserAdapter_AttributeListAdapter : NSObject < OrgXmlSaxAttributes > {
 @public
  OrgXmlSaxHelpersParserAdapter *this$0_;
  id<OrgXmlSaxAttributeList> qAtts_;
}

@property (nonatomic, assign) OrgXmlSaxHelpersParserAdapter *this$0;
@property (nonatomic, retain) id<OrgXmlSaxAttributeList> qAtts;

- (id)initWithOrgXmlSaxHelpersParserAdapter:(OrgXmlSaxHelpersParserAdapter *)outer$;
- (void)setAttributeListWithOrgXmlSaxAttributeList:(id<OrgXmlSaxAttributeList>)qAtts;
- (int)getLength;
- (NSString *)getURIWithInt:(int)i;
- (NSString *)getLocalNameWithInt:(int)i;
- (NSString *)getQNameWithInt:(int)i;
- (NSString *)getTypeWithInt:(int)i;
- (NSString *)getValueWithInt:(int)i;
- (int)getIndexWithNSString:(NSString *)uri
               withNSString:(NSString *)localName;
- (int)getIndexWithNSString:(NSString *)qName;
- (NSString *)getTypeWithNSString:(NSString *)uri
                     withNSString:(NSString *)localName;
- (NSString *)getTypeWithNSString:(NSString *)qName;
- (NSString *)getValueWithNSString:(NSString *)uri
                      withNSString:(NSString *)localName;
- (NSString *)getValueWithNSString:(NSString *)qName;
@end
