//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/DocumentHandler.java
//
//  Created by retechretech on 13-4-24.
//

@class IOSCharArray;
@protocol OrgXmlSaxAttributeList;
@protocol OrgXmlSaxLocator;

#import "JreEmulation.h"

@protocol OrgXmlSaxDocumentHandler < NSObject >
- (void)setDocumentLocatorWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator;
- (void)startDocument;
- (void)endDocument;
- (void)startElementWithNSString:(NSString *)name
      withOrgXmlSaxAttributeList:(id<OrgXmlSaxAttributeList>)atts;
- (void)endElementWithNSString:(NSString *)name;
- (void)charactersWithJavaLangCharacterArray:(IOSCharArray *)ch
                                     withInt:(int)start
                                     withInt:(int)length;
- (void)ignorableWhitespaceWithJavaLangCharacterArray:(IOSCharArray *)ch
                                              withInt:(int)start
                                              withInt:(int)length;
- (void)processingInstructionWithNSString:(NSString *)target
                             withNSString:(NSString *)data;
@end
