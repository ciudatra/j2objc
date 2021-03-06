//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/ParserAdapter.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSCharArray.h"
#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/ClassNotFoundException.h"
#import "java/lang/IllegalAccessException.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/InstantiationException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/System.h"
#import "java/util/ArrayList.h"
#import "java/util/Enumeration.h"
#import "java/util/Iterator.h"
#import "org/xml/sax/AttributeList.h"
#import "org/xml/sax/ContentHandler.h"
#import "org/xml/sax/DTDHandler.h"
#import "org/xml/sax/EntityResolver.h"
#import "org/xml/sax/ErrorHandler.h"
#import "org/xml/sax/InputSource.h"
#import "org/xml/sax/Locator.h"
#import "org/xml/sax/Parser.h"
#import "org/xml/sax/SAXException.h"
#import "org/xml/sax/SAXNotRecognizedException.h"
#import "org/xml/sax/SAXNotSupportedException.h"
#import "org/xml/sax/SAXParseException.h"
#import "org/xml/sax/helpers/AttributesImpl.h"
#import "org/xml/sax/helpers/NamespaceSupport.h"
#import "org/xml/sax/helpers/ParserAdapter.h"
#import "org/xml/sax/helpers/ParserFactory.h"

@implementation OrgXmlSaxHelpersParserAdapter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgXmlSaxHelpersParserAdapter_FEATURES_ name:@"OrgXmlSaxHelpersParserAdapter_FEATURES_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgXmlSaxHelpersParserAdapter_NAMESPACES_ name:@"OrgXmlSaxHelpersParserAdapter_NAMESPACES_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgXmlSaxHelpersParserAdapter_NAMESPACE_PREFIXES_ name:@"OrgXmlSaxHelpersParserAdapter_NAMESPACE_PREFIXES_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:OrgXmlSaxHelpersParserAdapter_XMLNS_URIs_ name:@"OrgXmlSaxHelpersParserAdapter_XMLNS_URIs_"]];
  return result;
}

static NSString * OrgXmlSaxHelpersParserAdapter_FEATURES_ = @"http://xml.org/sax/features/";
static NSString * OrgXmlSaxHelpersParserAdapter_NAMESPACES_ = @"http://xml.org/sax/features/namespaces";
static NSString * OrgXmlSaxHelpersParserAdapter_NAMESPACE_PREFIXES_ = @"http://xml.org/sax/features/namespace-prefixes";
static NSString * OrgXmlSaxHelpersParserAdapter_XMLNS_URIs_ = @"http://xml.org/sax/features/xmlns-uris";

- (OrgXmlSaxHelpersNamespaceSupport *)nsSupport {
  return nsSupport_;
}
- (void)setNsSupport:(OrgXmlSaxHelpersNamespaceSupport *)nsSupport {
  JreOperatorRetainedAssign(&nsSupport_, nsSupport);
}
@synthesize nsSupport = nsSupport_;
- (OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *)attAdapter {
  return attAdapter_;
}
- (void)setAttAdapter:(OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *)attAdapter {
  JreOperatorRetainedAssign(&attAdapter_, attAdapter);
}
@synthesize attAdapter = attAdapter_;
@synthesize parsing = parsing_;
- (IOSObjectArray *)nameParts {
  return nameParts_;
}
- (void)setNameParts:(IOSObjectArray *)nameParts {
  JreOperatorRetainedAssign(&nameParts_, nameParts);
}
@synthesize nameParts = nameParts_;
- (id<OrgXmlSaxParser>)parser {
  return parser_;
}
- (void)setParser:(id<OrgXmlSaxParser>)parser {
  JreOperatorRetainedAssign(&parser_, parser);
}
@synthesize parser = parser_;
- (OrgXmlSaxHelpersAttributesImpl *)atts {
  return atts_;
}
- (void)setAtts:(OrgXmlSaxHelpersAttributesImpl *)atts {
  JreOperatorRetainedAssign(&atts_, atts);
}
@synthesize atts = atts_;
@synthesize namespaces = namespaces_;
@synthesize prefixes = prefixes_;
@synthesize uris = uris_;
- (id<OrgXmlSaxLocator>)locator {
  return locator_;
}
- (void)setLocator:(id<OrgXmlSaxLocator>)locator {
  JreOperatorRetainedAssign(&locator_, locator);
}
@synthesize locator = locator_;
- (id<OrgXmlSaxEntityResolver>)entityResolver {
  return entityResolver_;
}
- (void)setEntityResolver:(id<OrgXmlSaxEntityResolver>)entityResolver {
  JreOperatorRetainedAssign(&entityResolver_, entityResolver);
}
@synthesize entityResolver = entityResolver_;
- (id<OrgXmlSaxDTDHandler>)dtdHandler {
  return dtdHandler_;
}
- (void)setDtdHandler:(id<OrgXmlSaxDTDHandler>)dtdHandler {
  JreOperatorRetainedAssign(&dtdHandler_, dtdHandler);
}
@synthesize dtdHandler = dtdHandler_;
- (id<OrgXmlSaxContentHandler>)contentHandler {
  return contentHandler_;
}
- (void)setContentHandler:(id<OrgXmlSaxContentHandler>)contentHandler {
  JreOperatorRetainedAssign(&contentHandler_, contentHandler);
}
@synthesize contentHandler = contentHandler_;
- (id<OrgXmlSaxErrorHandler>)errorHandler {
  return errorHandler_;
}
- (void)setErrorHandler:(id<OrgXmlSaxErrorHandler>)errorHandler {
  JreOperatorRetainedAssign(&errorHandler_, errorHandler);
}
@synthesize errorHandler = errorHandler_;

+ (NSString *)FEATURES {
  return OrgXmlSaxHelpersParserAdapter_FEATURES_;
}

+ (NSString *)NAMESPACES {
  return OrgXmlSaxHelpersParserAdapter_NAMESPACES_;
}

+ (NSString *)NAMESPACE_PREFIXES {
  return OrgXmlSaxHelpersParserAdapter_NAMESPACE_PREFIXES_;
}

+ (NSString *)XMLNS_URIs {
  return OrgXmlSaxHelpersParserAdapter_XMLNS_URIs_;
}

- (id)init {
  if ((self = [super init])) {
    parsing_ = NO;
    JreOperatorRetainedAssign(&nameParts_, [[[IOSObjectArray alloc] initWithLength:3 type:[IOSClass classWithClass:[NSString class]]] autorelease]);
    JreOperatorRetainedAssign(&parser_, nil);
    JreOperatorRetainedAssign(&atts_, nil);
    namespaces_ = YES;
    prefixes_ = NO;
    uris_ = NO;
    JreOperatorRetainedAssign(&entityResolver_, nil);
    JreOperatorRetainedAssign(&dtdHandler_, nil);
    JreOperatorRetainedAssign(&contentHandler_, nil);
    JreOperatorRetainedAssign(&errorHandler_, nil);
    NSString *driver = [JavaLangSystem getPropertyWithNSString:@"org.xml.sax.parser"];
    @try {
      [self setupWithOrgXmlSaxParser:[OrgXmlSaxHelpersParserFactory makeParser]];
    }
    @catch (JavaLangClassNotFoundException *e1) {
      @throw [[[OrgXmlSaxSAXException alloc] initWithNSString:[NSString stringWithFormat:@"Cannot find SAX1 driver class %@", driver] withJavaLangException:e1] autorelease];
    }
    @catch (JavaLangIllegalAccessException *e2) {
      @throw [[[OrgXmlSaxSAXException alloc] initWithNSString:[NSString stringWithFormat:@"SAX1 driver class %@ found but cannot be loaded", driver] withJavaLangException:e2] autorelease];
    }
    @catch (JavaLangInstantiationException *e3) {
      @throw [[[OrgXmlSaxSAXException alloc] initWithNSString:[NSString stringWithFormat:@"SAX1 driver class %@ loaded but cannot be instantiated", driver] withJavaLangException:e3] autorelease];
    }
    @catch (JavaLangClassCastException *e4) {
      @throw [[[OrgXmlSaxSAXException alloc] initWithNSString:[NSString stringWithFormat:@"SAX1 driver class %@ does not implement org.xml.sax.Parser", driver]] autorelease];
    }
    @catch (JavaLangNullPointerException *e5) {
      @throw [[[OrgXmlSaxSAXException alloc] initWithNSString:@"System property org.xml.sax.parser not specified"] autorelease];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithOrgXmlSaxParser:(id<OrgXmlSaxParser>)parser {
  if ((self = [super init])) {
    parsing_ = NO;
    JreOperatorRetainedAssign(&nameParts_, [[[IOSObjectArray alloc] initWithLength:3 type:[IOSClass classWithClass:[NSString class]]] autorelease]);
    JreOperatorRetainedAssign(&parser_, nil);
    JreOperatorRetainedAssign(&atts_, nil);
    namespaces_ = YES;
    prefixes_ = NO;
    uris_ = NO;
    JreOperatorRetainedAssign(&entityResolver_, nil);
    JreOperatorRetainedAssign(&dtdHandler_, nil);
    JreOperatorRetainedAssign(&contentHandler_, nil);
    JreOperatorRetainedAssign(&errorHandler_, nil);
    [self setupWithOrgXmlSaxParser:parser];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)setupWithOrgXmlSaxParser:(id<OrgXmlSaxParser>)parser {
  if (parser == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"Parser argument must not be null"] autorelease];
  }
  self.parser = parser;
  JreOperatorRetainedAssign(&atts_, [[[OrgXmlSaxHelpersAttributesImpl alloc] init] autorelease]);
  JreOperatorRetainedAssign(&nsSupport_, [[[OrgXmlSaxHelpersNamespaceSupport alloc] init] autorelease]);
  JreOperatorRetainedAssign(&attAdapter_, [[[OrgXmlSaxHelpersParserAdapter_AttributeListAdapter alloc] initWithOrgXmlSaxHelpersParserAdapter:self] autorelease]);
}

- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)value {
  if ([NIL_CHK(name) isEqual:OrgXmlSaxHelpersParserAdapter_NAMESPACES_]) {
    [self checkNotParsingWithNSString:@"feature" withNSString:name];
    namespaces_ = value;
    if (!namespaces_ && !prefixes_) {
      prefixes_ = YES;
    }
  }
  else if ([NIL_CHK(name) isEqual:OrgXmlSaxHelpersParserAdapter_NAMESPACE_PREFIXES_]) {
    [self checkNotParsingWithNSString:@"feature" withNSString:name];
    prefixes_ = value;
    if (!prefixes_ && !namespaces_) {
      namespaces_ = YES;
    }
  }
  else if ([NIL_CHK(name) isEqual:OrgXmlSaxHelpersParserAdapter_XMLNS_URIs_]) {
    [self checkNotParsingWithNSString:@"feature" withNSString:name];
    uris_ = value;
  }
  else {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Feature: %@", name]] autorelease];
  }
}

- (BOOL)getFeatureWithNSString:(NSString *)name {
  if ([NIL_CHK(name) isEqual:OrgXmlSaxHelpersParserAdapter_NAMESPACES_]) {
    return namespaces_;
  }
  else if ([NIL_CHK(name) isEqual:OrgXmlSaxHelpersParserAdapter_NAMESPACE_PREFIXES_]) {
    return prefixes_;
  }
  else if ([NIL_CHK(name) isEqual:OrgXmlSaxHelpersParserAdapter_XMLNS_URIs_]) {
    return uris_;
  }
  else {
    @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Feature: %@", name]] autorelease];
  }
}

- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)value {
  @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Property: %@", name]] autorelease];
}

- (id)getPropertyWithNSString:(NSString *)name {
  @throw [[[OrgXmlSaxSAXNotRecognizedException alloc] initWithNSString:[NSString stringWithFormat:@"Property: %@", name]] autorelease];
}

- (void)setEntityResolverWithOrgXmlSaxEntityResolver:(id<OrgXmlSaxEntityResolver>)resolver {
  JreOperatorRetainedAssign(&entityResolver_, resolver);
}

- (id<OrgXmlSaxEntityResolver>)getEntityResolver {
  return entityResolver_;
}

- (void)setDTDHandlerWithOrgXmlSaxDTDHandler:(id<OrgXmlSaxDTDHandler>)handler {
  JreOperatorRetainedAssign(&dtdHandler_, handler);
}

- (id<OrgXmlSaxDTDHandler>)getDTDHandler {
  return dtdHandler_;
}

- (void)setContentHandlerWithOrgXmlSaxContentHandler:(id<OrgXmlSaxContentHandler>)handler {
  JreOperatorRetainedAssign(&contentHandler_, handler);
}

- (id<OrgXmlSaxContentHandler>)getContentHandler {
  return contentHandler_;
}

- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)handler {
  JreOperatorRetainedAssign(&errorHandler_, handler);
}

- (id<OrgXmlSaxErrorHandler>)getErrorHandler {
  return errorHandler_;
}

- (void)parseWithNSString:(NSString *)systemId {
  [self parseWithOrgXmlSaxInputSource:[[[OrgXmlSaxInputSource alloc] initWithNSString:systemId] autorelease]];
}

- (void)parseWithOrgXmlSaxInputSource:(OrgXmlSaxInputSource *)input {
  if (parsing_) {
    @throw [[[OrgXmlSaxSAXException alloc] initWithNSString:@"Parser is already in use"] autorelease];
  }
  [self setupParser];
  parsing_ = YES;
  @try {
    [((id<OrgXmlSaxParser>) NIL_CHK(parser_)) parseWithOrgXmlSaxInputSource:input];
  }
  @finally {
    parsing_ = NO;
  }
  parsing_ = NO;
}

- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator {
  self.locator = locator;
  if (contentHandler_ != nil) {
    [contentHandler_ setDocumentLocatorWithOrgXmlSaxLocator:locator];
  }
}

- (void)startDocument {
  if (contentHandler_ != nil) {
    [contentHandler_ startDocument];
  }
}

- (void)endDocument {
  if (contentHandler_ != nil) {
    [contentHandler_ endDocument];
  }
}

- (void)startElementWithNSString:(NSString *)qName
      withOrgXmlSaxAttributeList:(id<OrgXmlSaxAttributeList>)qAtts {
  JavaUtilArrayList *exceptions = nil;
  if (!namespaces_) {
    if (contentHandler_ != nil) {
      [((OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *) NIL_CHK(attAdapter_)) setAttributeListWithOrgXmlSaxAttributeList:qAtts];
      [contentHandler_ startElementWithNSString:@"" withNSString:@"" withNSString:[NIL_CHK(qName) intern] withOrgXmlSaxAttributes:attAdapter_];
    }
    return;
  }
  [((OrgXmlSaxHelpersNamespaceSupport *) NIL_CHK(nsSupport_)) pushContext];
  int length = [((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts)) getLength];
  for (int i = 0; i < length; i++) {
    NSString *attQName = [((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts)) getNameWithInt:i];
    if (![NIL_CHK(attQName) hasPrefix:@"xmlns"]) continue;
    NSString *prefix;
    int n = [NIL_CHK(attQName) indexOf:':'];
    if (n == -1 && [NIL_CHK(attQName) length] == 5) {
      prefix = @"";
    }
    else if (n != 5) {
      continue;
    }
    else prefix = [NIL_CHK(attQName) substring:n + 1];
    NSString *value = [((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts)) getValueWithInt:i];
    if (![((OrgXmlSaxHelpersNamespaceSupport *) NIL_CHK(nsSupport_)) declarePrefixWithNSString:prefix withNSString:value]) {
      [self reportErrorWithNSString:[NSString stringWithFormat:@"Illegal Namespace prefix: %@", prefix]];
      continue;
    }
    if (contentHandler_ != nil) [contentHandler_ startPrefixMappingWithNSString:prefix withNSString:value];
  }
  [((OrgXmlSaxHelpersAttributesImpl *) NIL_CHK(atts_)) clear];
  for (int i = 0; i < length; i++) {
    NSString *attQName = [((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts)) getNameWithInt:i];
    NSString *type = [((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts)) getTypeWithInt:i];
    NSString *value = [((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts)) getValueWithInt:i];
    if ([NIL_CHK(attQName) hasPrefix:@"xmlns"]) {
      NSString *prefix;
      int n = [NIL_CHK(attQName) indexOf:':'];
      if (n == -1 && [NIL_CHK(attQName) length] == 5) {
        prefix = @"";
      }
      else if (n != 5) {
        prefix = nil;
      }
      else {
        prefix = [NIL_CHK(attQName) substring:6];
      }
      if (prefix != nil) {
        if (prefixes_) {
          if (uris_) [((OrgXmlSaxHelpersAttributesImpl *) NIL_CHK(atts_)) addAttributeWithNSString:[OrgXmlSaxHelpersNamespaceSupport XMLNS] withNSString:prefix withNSString:[NIL_CHK(attQName) intern] withNSString:type withNSString:value];
          else [((OrgXmlSaxHelpersAttributesImpl *) NIL_CHK(atts_)) addAttributeWithNSString:@"" withNSString:@"" withNSString:[NIL_CHK(attQName) intern] withNSString:type withNSString:value];
        }
        continue;
      }
    }
    @try {
      IOSObjectArray *attName = [self processNameWithNSString:attQName withBOOL:YES withBOOL:YES];
      [((OrgXmlSaxHelpersAttributesImpl *) NIL_CHK(atts_)) addAttributeWithNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(attName)) objectAtIndex:0]) withNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(attName)) objectAtIndex:1]) withNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(attName)) objectAtIndex:2]) withNSString:type withNSString:value];
    }
    @catch (OrgXmlSaxSAXException *e) {
      if (exceptions == nil) {
        exceptions = [[[JavaUtilArrayList alloc] init] autorelease];
      }
      [((JavaUtilArrayList *) NIL_CHK(exceptions)) addWithId:(OrgXmlSaxSAXParseException *) e];
      [((OrgXmlSaxHelpersAttributesImpl *) NIL_CHK(atts_)) addAttributeWithNSString:@"" withNSString:attQName withNSString:attQName withNSString:type withNSString:value];
    }
  }
  if (exceptions != nil && errorHandler_ != nil) {
    {
      id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((JavaUtilArrayList *) NIL_CHK(exceptions)) iterator]);
      while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
        OrgXmlSaxSAXParseException *ex = ((OrgXmlSaxSAXParseException *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
        [((id<OrgXmlSaxErrorHandler>) NIL_CHK(errorHandler_)) errorWithOrgXmlSaxSAXParseException:ex];
      }
    }
  }
  if (contentHandler_ != nil) {
    IOSObjectArray *name = [self processNameWithNSString:qName withBOOL:NO withBOOL:NO];
    [contentHandler_ startElementWithNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(name)) objectAtIndex:0]) withNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(name)) objectAtIndex:1]) withNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(name)) objectAtIndex:2]) withOrgXmlSaxAttributes:atts_];
  }
}

- (void)endElementWithNSString:(NSString *)qName {
  if (!namespaces_) {
    if (contentHandler_ != nil) {
      [contentHandler_ endElementWithNSString:@"" withNSString:@"" withNSString:[NIL_CHK(qName) intern]];
    }
    return;
  }
  IOSObjectArray *names = [self processNameWithNSString:qName withBOOL:NO withBOOL:NO];
  if (contentHandler_ != nil) {
    [contentHandler_ endElementWithNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(names)) objectAtIndex:0]) withNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(names)) objectAtIndex:1]) withNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(names)) objectAtIndex:2])];
    id<JavaUtilEnumeration> prefixes = [((OrgXmlSaxHelpersNamespaceSupport *) NIL_CHK(nsSupport_)) getDeclaredPrefixes];
    while ([((id<JavaUtilEnumeration>) NIL_CHK(prefixes)) hasMoreElements]) {
      NSString *prefix = (NSString *) [((id<JavaUtilEnumeration>) NIL_CHK(prefixes)) nextElement];
      [contentHandler_ endPrefixMappingWithNSString:prefix];
    }
  }
  [((OrgXmlSaxHelpersNamespaceSupport *) NIL_CHK(nsSupport_)) popContext];
}

- (void)charactersWithJavaLangCharacterArray:(IOSCharArray *)ch
                                     withInt:(int)start
                                     withInt:(int)length {
  if (contentHandler_ != nil) {
    [contentHandler_ charactersWithJavaLangCharacterArray:ch withInt:start withInt:length];
  }
}

- (void)ignorableWhitespaceWithJavaLangCharacterArray:(IOSCharArray *)ch
                                              withInt:(int)start
                                              withInt:(int)length {
  if (contentHandler_ != nil) {
    [contentHandler_ ignorableWhitespaceWithJavaLangCharacterArray:ch withInt:start withInt:length];
  }
}

- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data {
  if (contentHandler_ != nil) {
    [contentHandler_ processingInstructionWithNSString:target withNSString:data];
  }
}

- (void)setupParser {
  if (!prefixes_ && !namespaces_) @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  [((OrgXmlSaxHelpersNamespaceSupport *) NIL_CHK(nsSupport_)) reset];
  if (uris_) [((OrgXmlSaxHelpersNamespaceSupport *) NIL_CHK(nsSupport_)) setNamespaceDeclUrisWithBOOL:YES];
  if (entityResolver_ != nil) {
    [((id<OrgXmlSaxParser>) NIL_CHK(parser_)) setEntityResolverWithOrgXmlSaxEntityResolver:entityResolver_];
  }
  if (dtdHandler_ != nil) {
    [((id<OrgXmlSaxParser>) NIL_CHK(parser_)) setDTDHandlerWithOrgXmlSaxDTDHandler:dtdHandler_];
  }
  if (errorHandler_ != nil) {
    [((id<OrgXmlSaxParser>) NIL_CHK(parser_)) setErrorHandlerWithOrgXmlSaxErrorHandler:errorHandler_];
  }
  [((id<OrgXmlSaxParser>) NIL_CHK(parser_)) setDocumentHandlerWithOrgXmlSaxDocumentHandler:self];
  JreOperatorRetainedAssign(&locator_, nil);
}

- (IOSObjectArray *)processNameWithNSString:(NSString *)qName
                                   withBOOL:(BOOL)isAttribute
                                   withBOOL:(BOOL)useException {
  IOSObjectArray *parts = [((OrgXmlSaxHelpersNamespaceSupport *) NIL_CHK(nsSupport_)) processNameWithNSString:qName withNSStringArray:nameParts_ withBOOL:isAttribute];
  if (parts == nil) {
    if (useException) @throw [self makeExceptionWithNSString:[NSString stringWithFormat:@"Undeclared prefix: %@", qName]];
    [self reportErrorWithNSString:[NSString stringWithFormat:@"Undeclared prefix: %@", qName]];
    parts = [[[IOSObjectArray alloc] initWithLength:3 type:[IOSClass classWithClass:[NSString class]]] autorelease];
    [parts replaceObjectAtIndex:0 withObject:[parts replaceObjectAtIndex:1 withObject:@""]];
    [parts replaceObjectAtIndex:2 withObject:[NIL_CHK(qName) intern]];
  }
  return parts;
}

- (void)reportErrorWithNSString:(NSString *)message {
  if (errorHandler_ != nil) [errorHandler_ errorWithOrgXmlSaxSAXParseException:[self makeExceptionWithNSString:message]];
}

- (OrgXmlSaxSAXParseException *)makeExceptionWithNSString:(NSString *)message {
  if (locator_ != nil) {
    return [[[OrgXmlSaxSAXParseException alloc] initWithNSString:message withOrgXmlSaxLocator:locator_] autorelease];
  }
  else {
    return [[[OrgXmlSaxSAXParseException alloc] initWithNSString:message withNSString:nil withNSString:nil withInt:-1 withInt:-1] autorelease];
  }
}

- (void)checkNotParsingWithNSString:(NSString *)type
                       withNSString:(NSString *)name {
  if (parsing_) {
    @throw [[[OrgXmlSaxSAXNotSupportedException alloc] initWithNSString:[NSString stringWithFormat:@"Cannot change %@ %@ while parsing", type, name]] autorelease];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&errorHandler_, nil);
  JreOperatorRetainedAssign(&contentHandler_, nil);
  JreOperatorRetainedAssign(&dtdHandler_, nil);
  JreOperatorRetainedAssign(&entityResolver_, nil);
  JreOperatorRetainedAssign(&locator_, nil);
  JreOperatorRetainedAssign(&atts_, nil);
  JreOperatorRetainedAssign(&parser_, nil);
  JreOperatorRetainedAssign(&nameParts_, nil);
  JreOperatorRetainedAssign(&attAdapter_, nil);
  JreOperatorRetainedAssign(&nsSupport_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxHelpersParserAdapter *typedCopy = (OrgXmlSaxHelpersParserAdapter *) copy;
  typedCopy.nsSupport = nsSupport_;
  typedCopy.attAdapter = attAdapter_;
  typedCopy.parsing = parsing_;
  typedCopy.nameParts = nameParts_;
  typedCopy.parser = parser_;
  typedCopy.atts = atts_;
  typedCopy.namespaces = namespaces_;
  typedCopy.prefixes = prefixes_;
  typedCopy.uris = uris_;
  typedCopy.locator = locator_;
  typedCopy.entityResolver = entityResolver_;
  typedCopy.dtdHandler = dtdHandler_;
  typedCopy.contentHandler = contentHandler_;
  typedCopy.errorHandler = errorHandler_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:nsSupport_ name:@"nsSupport"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:attAdapter_ name:@"attAdapter"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:nameParts_ name:@"nameParts"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:parser_ name:@"parser"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:atts_ name:@"atts"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:locator_ name:@"locator"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:entityResolver_ name:@"entityResolver"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:dtdHandler_ name:@"dtdHandler"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:contentHandler_ name:@"contentHandler"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:errorHandler_ name:@"errorHandler"]];
  return result;
}

@end
@implementation OrgXmlSaxHelpersParserAdapter_AttributeListAdapter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (OrgXmlSaxHelpersParserAdapter *)this$0 {
  return this$0_;
}
@synthesize this$0 = this$0_;
- (id<OrgXmlSaxAttributeList>)qAtts {
  return qAtts_;
}
- (void)setQAtts:(id<OrgXmlSaxAttributeList>)qAtts {
  JreOperatorRetainedAssign(&qAtts_, qAtts);
}
@synthesize qAtts = qAtts_;

- (id)initWithOrgXmlSaxHelpersParserAdapter:(OrgXmlSaxHelpersParserAdapter *)outer$ {
  if ((self = [super init])) {
    this$0_ = outer$;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)setAttributeListWithOrgXmlSaxAttributeList:(id<OrgXmlSaxAttributeList>)qAtts {
  self.qAtts = qAtts;
}

- (int)getLength {
  return [((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts_)) getLength];
}

- (NSString *)getURIWithInt:(int)i {
  return @"";
}

- (NSString *)getLocalNameWithInt:(int)i {
  return @"";
}

- (NSString *)getQNameWithInt:(int)i {
  return [[((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts_)) getNameWithInt:i] intern];
}

- (NSString *)getTypeWithInt:(int)i {
  return [[((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts_)) getTypeWithInt:i] intern];
}

- (NSString *)getValueWithInt:(int)i {
  return [((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts_)) getValueWithInt:i];
}

- (int)getIndexWithNSString:(NSString *)uri
               withNSString:(NSString *)localName {
  return -1;
}

- (int)getIndexWithNSString:(NSString *)qName {
  int max = [((OrgXmlSaxHelpersAttributesImpl *) NIL_CHK(this$0_.atts)) getLength];
  for (int i = 0; i < max; i++) {
    if ([[((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts_)) getNameWithInt:i] isEqual:qName]) {
      return i;
    }
  }
  return -1;
}

- (NSString *)getTypeWithNSString:(NSString *)uri
                     withNSString:(NSString *)localName {
  return nil;
}

- (NSString *)getTypeWithNSString:(NSString *)qName {
  return [[((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts_)) getTypeWithNSString:qName] intern];
}

- (NSString *)getValueWithNSString:(NSString *)uri
                      withNSString:(NSString *)localName {
  return nil;
}

- (NSString *)getValueWithNSString:(NSString *)qName {
  return [((id<OrgXmlSaxAttributeList>) NIL_CHK(qAtts_)) getValueWithNSString:qName];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&qAtts_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *typedCopy = (OrgXmlSaxHelpersParserAdapter_AttributeListAdapter *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.qAtts = qAtts_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
