//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/ext/DefaultHandler2.java
//
//  Created by retechretech on 13-4-24.
//

#import "IOSCharArray.h"
#import "IOSClass.h"
#import "org/xml/sax/InputSource.h"
#import "org/xml/sax/ext/DefaultHandler2.h"

@implementation OrgXmlSaxExtDefaultHandler2

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)startCDATA {
}

- (void)endCDATA {
}

- (void)startDTDWithNSString:(NSString *)name
                withNSString:(NSString *)publicId
                withNSString:(NSString *)systemId {
}

- (void)endDTD {
}

- (void)startEntityWithNSString:(NSString *)name {
}

- (void)endEntityWithNSString:(NSString *)name {
}

- (void)commentWithJavaLangCharacterArray:(IOSCharArray *)ch
                                  withInt:(int)start
                                  withInt:(int)length {
}

- (void)attributeDeclWithNSString:(NSString *)eName
                     withNSString:(NSString *)aName
                     withNSString:(NSString *)type
                     withNSString:(NSString *)mode
                     withNSString:(NSString *)value {
}

- (void)elementDeclWithNSString:(NSString *)name
                   withNSString:(NSString *)model {
}

- (void)externalEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)publicId
                          withNSString:(NSString *)systemId {
}

- (void)internalEntityDeclWithNSString:(NSString *)name
                          withNSString:(NSString *)value {
}

- (OrgXmlSaxInputSource *)getExternalSubsetWithNSString:(NSString *)name
                                           withNSString:(NSString *)baseURI {
  return nil;
}

- (OrgXmlSaxInputSource *)resolveEntityWithNSString:(NSString *)name
                                       withNSString:(NSString *)publicId
                                       withNSString:(NSString *)baseURI
                                       withNSString:(NSString *)systemId {
  return nil;
}

- (OrgXmlSaxInputSource *)resolveEntityWithNSString:(NSString *)publicId
                                       withNSString:(NSString *)systemId {
  return [self resolveEntityWithNSString:nil withNSString:publicId withNSString:nil withNSString:systemId];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
