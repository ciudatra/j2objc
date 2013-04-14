//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/helpers/NamespaceSupport.java
//
//  Created by retechretech on 13-4-14.
//

@class IOSObjectArray;
@class JavaUtilArrayList;
@class JavaUtilHashtable;
@class OrgXmlSaxHelpersNamespaceSupport_Context;
@protocol JavaUtilEnumeration;

#import "JreEmulation.h"

@interface OrgXmlSaxHelpersNamespaceSupport : NSObject {
 @public
  IOSObjectArray *contexts_;
  OrgXmlSaxHelpersNamespaceSupport_Context *currentContext_;
  int contextPos_;
  BOOL namespaceDeclUris_;
}

@property (nonatomic, retain) IOSObjectArray *contexts;
@property (nonatomic, retain) OrgXmlSaxHelpersNamespaceSupport_Context *currentContext;
@property (nonatomic, assign) int contextPos;
@property (nonatomic, assign) BOOL namespaceDeclUris;

+ (NSString *)XMLNS;
+ (NSString *)NSDECL;
+ (id<JavaUtilEnumeration>)EMPTY_ENUMERATION;
- (id)init;
- (void)reset;
- (void)pushContext;
- (void)popContext;
- (BOOL)declarePrefixWithNSString:(NSString *)prefix
                     withNSString:(NSString *)uri;
- (IOSObjectArray *)processNameWithNSString:(NSString *)qName
                          withNSStringArray:(IOSObjectArray *)parts
                                   withBOOL:(BOOL)isAttribute;
- (NSString *)getURIWithNSString:(NSString *)prefix;
- (id<JavaUtilEnumeration>)getPrefixes;
- (NSString *)getPrefixWithNSString:(NSString *)uri;
- (id<JavaUtilEnumeration>)getPrefixesWithNSString:(NSString *)uri;
- (id<JavaUtilEnumeration>)getDeclaredPrefixes;
- (void)setNamespaceDeclUrisWithBOOL:(BOOL)value;
- (BOOL)isNamespaceDeclUris;
@end

@interface OrgXmlSaxHelpersNamespaceSupport_Context : NSObject {
 @public
  OrgXmlSaxHelpersNamespaceSupport *this$0_;
  JavaUtilHashtable *prefixTable_;
  JavaUtilHashtable *uriTable_;
  JavaUtilHashtable *elementNameTable_;
  JavaUtilHashtable *attributeNameTable_;
  NSString *defaultNS_;
  BOOL declsOK_;
  JavaUtilArrayList *declarations_;
  BOOL declSeen_;
  OrgXmlSaxHelpersNamespaceSupport_Context *parent_;
}

@property (nonatomic, assign) OrgXmlSaxHelpersNamespaceSupport *this$0;
@property (nonatomic, retain) JavaUtilHashtable *prefixTable;
@property (nonatomic, retain) JavaUtilHashtable *uriTable;
@property (nonatomic, retain) JavaUtilHashtable *elementNameTable;
@property (nonatomic, retain) JavaUtilHashtable *attributeNameTable;
@property (nonatomic, copy) NSString *defaultNS;
@property (nonatomic, assign) BOOL declsOK;
@property (nonatomic, retain) JavaUtilArrayList *declarations;
@property (nonatomic, assign) BOOL declSeen;
@property (nonatomic, retain) OrgXmlSaxHelpersNamespaceSupport_Context *parent;

- (id)initWithOrgXmlSaxHelpersNamespaceSupport:(OrgXmlSaxHelpersNamespaceSupport *)outer$0;
- (void)setParentWithOrgXmlSaxHelpersNamespaceSupport_Context:(OrgXmlSaxHelpersNamespaceSupport_Context *)parent;
- (void)clear;
- (void)declarePrefixWithNSString:(NSString *)prefix
                     withNSString:(NSString *)uri;
- (IOSObjectArray *)processNameWithNSString:(NSString *)qName
                                   withBOOL:(BOOL)isAttribute;
- (NSString *)getURIWithNSString:(NSString *)prefix;
- (NSString *)getPrefixWithNSString:(NSString *)uri;
- (id<JavaUtilEnumeration>)getDeclaredPrefixes;
- (id<JavaUtilEnumeration>)getPrefixes;
- (void)copyTables OBJC_METHOD_FAMILY_NONE;
@end
