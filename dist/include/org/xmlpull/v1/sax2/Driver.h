//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/xml/src/main/java/org/xmlpull/v1/sax2/Driver.java
//
//  Created by retechretech on 13-4-26.
//

@class OrgXmlSaxInputSource;
@protocol OrgXmlSaxContentHandler;
@protocol OrgXmlSaxDTDHandler;
@protocol OrgXmlSaxEntityResolver;
@protocol OrgXmlSaxErrorHandler;
@protocol OrgXmlpullV1XmlPullParser;

#import "JreEmulation.h"
#import "org/xml/sax/Attributes.h"
#import "org/xml/sax/Locator.h"
#import "org/xml/sax/XMLReader.h"

@interface OrgXmlpullV1Sax2Driver : NSObject < OrgXmlSaxLocator, OrgXmlSaxXMLReader, OrgXmlSaxAttributes > {
 @public
  id<OrgXmlSaxContentHandler> contentHandler_;
  id<OrgXmlSaxErrorHandler> errorHandler_;
  NSString *systemId_;
  id<OrgXmlpullV1XmlPullParser> pp_;
}

@property (nonatomic, retain) id<OrgXmlSaxContentHandler> contentHandler;
@property (nonatomic, retain) id<OrgXmlSaxErrorHandler> errorHandler;
@property (nonatomic, copy) NSString *systemId;
@property (nonatomic, retain) id<OrgXmlpullV1XmlPullParser> pp;

+ (NSString *)DECLARATION_HANDLER_PROPERTY;
+ (NSString *)LEXICAL_HANDLER_PROPERTY;
+ (NSString *)NAMESPACES_FEATURE;
+ (NSString *)NAMESPACE_PREFIXES_FEATURE;
+ (NSString *)VALIDATION_FEATURE;
+ (NSString *)APACHE_SCHEMA_VALIDATION_FEATURE;
+ (NSString *)APACHE_DYNAMIC_VALIDATION_FEATURE;
- (id)init;
- (id)initWithOrgXmlpullV1XmlPullParser:(id<OrgXmlpullV1XmlPullParser>)pp;
- (int)getLength;
- (NSString *)getURIWithInt:(int)index;
- (NSString *)getLocalNameWithInt:(int)index;
- (NSString *)getQNameWithInt:(int)index;
- (NSString *)getTypeWithInt:(int)index;
- (NSString *)getValueWithInt:(int)index;
- (int)getIndexWithNSString:(NSString *)uri
               withNSString:(NSString *)localName;
- (int)getIndexWithNSString:(NSString *)qName;
- (NSString *)getTypeWithNSString:(NSString *)uri
                     withNSString:(NSString *)localName;
- (NSString *)getTypeWithNSString:(NSString *)qName;
- (NSString *)getValueWithNSString:(NSString *)uri
                      withNSString:(NSString *)localName;
- (NSString *)getValueWithNSString:(NSString *)qName;
- (NSString *)getPublicId;
- (NSString *)getSystemId;
- (int)getLineNumber;
- (int)getColumnNumber;
- (BOOL)getFeatureWithNSString:(NSString *)name;
- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)value;
- (id)getPropertyWithNSString:(NSString *)name;
- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)value;
- (void)setEntityResolverWithOrgXmlSaxEntityResolver:(id<OrgXmlSaxEntityResolver>)resolver;
- (id<OrgXmlSaxEntityResolver>)getEntityResolver;
- (void)setDTDHandlerWithOrgXmlSaxDTDHandler:(id<OrgXmlSaxDTDHandler>)handler;
- (id<OrgXmlSaxDTDHandler>)getDTDHandler;
- (void)setContentHandlerWithOrgXmlSaxContentHandler:(id<OrgXmlSaxContentHandler>)handler;
- (id<OrgXmlSaxContentHandler>)getContentHandler;
- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)handler;
- (id<OrgXmlSaxErrorHandler>)getErrorHandler;
- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)source;
- (void)parseWithNSString:(NSString *)systemId;
- (void)parseSubTreeWithOrgXmlpullV1XmlPullParser:(id<OrgXmlpullV1XmlPullParser>)pp;
- (void)startElementWithNSString:(NSString *)namespace_
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName;
@end
