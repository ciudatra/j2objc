//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/XMLReaderAdapter.java
//
//  Created by retechretech on 13-4-24.
//

#import "IOSCharArray.h"
#import "java/lang/NullPointerException.h"
#import "java/util/Locale.h"
#import "org/xml/sax/Attributes.h"
#import "org/xml/sax/DTDHandler.h"
#import "org/xml/sax/DocumentHandler.h"
#import "org/xml/sax/EntityResolver.h"
#import "org/xml/sax/ErrorHandler.h"
#import "org/xml/sax/InputSource.h"
#import "org/xml/sax/Locator.h"
#import "org/xml/sax/SAXException.h"
#import "org/xml/sax/SAXNotSupportedException.h"
#import "org/xml/sax/XMLReader.h"
#import "org/xml/sax/helpers/XMLReaderAdapter.h"
#import "org/xml/sax/helpers/XMLReaderFactory.h"

@implementation OrgXmlSaxHelpersXMLReaderAdapter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id<OrgXmlSaxXMLReader>)xmlReader {
  return xmlReader_;
}
- (void)setXmlReader:(id<OrgXmlSaxXMLReader>)xmlReader {
  JreOperatorRetainedAssign(&xmlReader_, xmlReader);
}
@synthesize xmlReader = xmlReader_;
- (id<OrgXmlSaxDocumentHandler>)documentHandler {
  return documentHandler_;
}
- (void)setDocumentHandler:(id<OrgXmlSaxDocumentHandler>)documentHandler {
  JreOperatorRetainedAssign(&documentHandler_, documentHandler);
}
@synthesize documentHandler = documentHandler_;
- (OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter *)qAtts {
  return qAtts_;
}
- (void)setQAtts:(OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter *)qAtts {
  JreOperatorRetainedAssign(&qAtts_, qAtts);
}
@synthesize qAtts = qAtts_;

- (id)init {
  if ((self = [super init])) {
    [self setupWithOrgXmlSaxXMLReader:[OrgXmlSaxHelpersXMLReaderFactory createXMLReader]];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)xmlReader {
  if ((self = [super init])) {
    [self setupWithOrgXmlSaxXMLReader:xmlReader];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)setupWithOrgXmlSaxXMLReader:(id<OrgXmlSaxXMLReader>)xmlReader {
  if (xmlReader == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"XMLReader must not be null"] autorelease];
  }
  self.xmlReader = xmlReader;
  JreOperatorRetainedAssign(&qAtts_, [[[OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter alloc] init] autorelease]);
}

- (void)setLocaleWithJavaUtilLocale:(JavaUtilLocale *)locale {
  @throw [[[OrgXmlSaxSAXNotSupportedException alloc] initWithNSString:@"setLocale not supported"] autorelease];
}

- (void)setEntityResolverWithOrgXmlSaxEntityResolver:(id<OrgXmlSaxEntityResolver>)resolver {
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(xmlReader_)) setEntityResolverWithOrgXmlSaxEntityResolver:resolver];
}

- (void)setDTDHandlerWithOrgXmlSaxDTDHandler:(id<OrgXmlSaxDTDHandler>)handler {
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(xmlReader_)) setDTDHandlerWithOrgXmlSaxDTDHandler:handler];
}

- (void)setDocumentHandlerWithOrgXmlSaxDocumentHandler:(id<OrgXmlSaxDocumentHandler>)handler {
  JreOperatorRetainedAssign(&documentHandler_, handler);
}

- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)handler {
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(xmlReader_)) setErrorHandlerWithOrgXmlSaxErrorHandler:handler];
}

- (void)parseWithNSString:(NSString *)systemId {
  [self parseWithOrgXmlSaxInputSource:[[[OrgXmlSaxInputSource alloc] initWithNSString:systemId] autorelease]];
}

- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)input {
  [self setupXMLReader];
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(xmlReader_)) parseWithOrgXmlSaxInputSource:input];
}

- (void)setupXMLReader {
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(xmlReader_)) setFeatureWithNSString:@"http://xml.org/sax/features/namespace-prefixes" withBOOL:YES];
  @try {
    [((id<OrgXmlSaxXMLReader>) NIL_CHK(xmlReader_)) setFeatureWithNSString:@"http://xml.org/sax/features/namespaces" withBOOL:NO];
  }
  @catch (OrgXmlSaxSAXException *e) {
  }
  [((id<OrgXmlSaxXMLReader>) NIL_CHK(xmlReader_)) setContentHandlerWithOrgXmlSaxContentHandler:self];
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator {
  if (documentHandler_ != nil) [documentHandler_ setDocumentLocatorWithOrgXmlSaxLocator:locator];
}

- (void)startDocument {
  if (documentHandler_ != nil) [documentHandler_ startDocument];
}

- (void)endDocument {
  if (documentHandler_ != nil) [documentHandler_ endDocument];
}

- (void)startPrefixMappingWithNSString:(NSString *)prefix
                          withNSString:(NSString *)uri {
}

- (void)endPrefixMappingWithNSString:(NSString *)prefix {
}

- (void)startElementWithNSString:(NSString *)uri
                    withNSString:(NSString *)localName
                    withNSString:(NSString *)qName
         withOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)atts {
  if (documentHandler_ != nil) {
    [((OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter *) NIL_CHK(qAtts_)) setAttributesWithOrgXmlSaxAttributes:atts];
    [documentHandler_ startElementWithNSString:qName withOrgXmlSaxAttributeList:qAtts_];
  }
}

- (void)endElementWithNSString:(NSString *)uri
                  withNSString:(NSString *)localName
                  withNSString:(NSString *)qName {
  if (documentHandler_ != nil) [documentHandler_ endElementWithNSString:qName];
}

- (void)charactersWithJavaLangCharacterArray:(IOSCharArray *)ch
                                     withInt:(int)start
                                     withInt:(int)length {
  if (documentHandler_ != nil) [documentHandler_ charactersWithJavaLangCharacterArray:ch withInt:start withInt:length];
}

- (void)ignorableWhitespaceWithJavaLangCharacterArray:(IOSCharArray *)ch
                                              withInt:(int)start
                                              withInt:(int)length {
  if (documentHandler_ != nil) [documentHandler_ ignorableWhitespaceWithJavaLangCharacterArray:ch withInt:start withInt:length];
}

- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data {
  if (documentHandler_ != nil) [documentHandler_ processingInstructionWithNSString:target withNSString:data];
}

- (void)skippedEntityWithNSString:(NSString *)name {
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&qAtts_, nil);
  JreOperatorRetainedAssign(&documentHandler_, nil);
  JreOperatorRetainedAssign(&xmlReader_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxHelpersXMLReaderAdapter *typedCopy = (OrgXmlSaxHelpersXMLReaderAdapter *) copy;
  typedCopy.xmlReader = xmlReader_;
  typedCopy.documentHandler = documentHandler_;
  typedCopy.qAtts = qAtts_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:xmlReader_ name:@"xmlReader"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:documentHandler_ name:@"documentHandler"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:qAtts_ name:@"qAtts"]];
  return result;
}

@end
@implementation OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id<OrgXmlSaxAttributes>)attributes {
  return attributes_;
}
- (void)setAttributes:(id<OrgXmlSaxAttributes>)attributes {
  JreOperatorRetainedAssign(&attributes_, attributes);
}
@synthesize attributes = attributes_;

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)setAttributesWithOrgXmlSaxAttributes:(id<OrgXmlSaxAttributes>)attributes {
  self.attributes = attributes;
}

- (int)getLength {
  return [((id<OrgXmlSaxAttributes>) NIL_CHK(attributes_)) getLength];
}

- (NSString *)getNameWithInt:(int)i {
  return [((id<OrgXmlSaxAttributes>) NIL_CHK(attributes_)) getQNameWithInt:i];
}

- (NSString *)getTypeWithInt:(int)i {
  return [((id<OrgXmlSaxAttributes>) NIL_CHK(attributes_)) getTypeWithInt:i];
}

- (NSString *)getValueWithInt:(int)i {
  return [((id<OrgXmlSaxAttributes>) NIL_CHK(attributes_)) getValueWithInt:i];
}

- (NSString *)getTypeWithNSString:(NSString *)qName {
  return [((id<OrgXmlSaxAttributes>) NIL_CHK(attributes_)) getTypeWithNSString:qName];
}

- (NSString *)getValueWithNSString:(NSString *)qName {
  return [((id<OrgXmlSaxAttributes>) NIL_CHK(attributes_)) getValueWithNSString:qName];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&attributes_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter *typedCopy = (OrgXmlSaxHelpersXMLReaderAdapter_AttributesAdapter *) copy;
  typedCopy.attributes = attributes_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:attributes_ name:@"attributes"]];
  return result;
}

@end
