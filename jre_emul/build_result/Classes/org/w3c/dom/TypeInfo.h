//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/w3c/dom/TypeInfo.java
//
//  Created by retechretech on 13-4-26.
//

#import "JreEmulation.h"

#define OrgW3cDomTypeInfo_DERIVATION_EXTENSION 2
#define OrgW3cDomTypeInfo_DERIVATION_LIST 8
#define OrgW3cDomTypeInfo_DERIVATION_RESTRICTION 1
#define OrgW3cDomTypeInfo_DERIVATION_UNION 4

@protocol OrgW3cDomTypeInfo < NSObject >
- (NSString *)getTypeName;
- (NSString *)getTypeNamespace;
- (BOOL)isDerivedFromWithNSString:(NSString *)typeNamespaceArg
                     withNSString:(NSString *)typeNameArg
                          withInt:(int)derivationMethod;
@end

@interface OrgW3cDomTypeInfo : NSObject {
}
+ (int)DERIVATION_RESTRICTION;
+ (int)DERIVATION_EXTENSION;
+ (int)DERIVATION_UNION;
+ (int)DERIVATION_LIST;
@end
