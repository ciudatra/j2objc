//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/ext/Locator2Impl.java
//
//  Created by retechretech on 13-4-26.
//

#import "org/xml/sax/Locator.h"
#import "org/xml/sax/ext/Locator2.h"
#import "org/xml/sax/ext/Locator2Impl.h"

@implementation OrgXmlSaxExtLocator2Impl

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (NSString *)encoding {
  return encoding_;
}
- (void)setEncoding:(NSString *)encoding {
  JreOperatorRetainedAssign(&encoding_, encoding);
}
@synthesize encoding = encoding_;
- (NSString *)version_ {
  return version__;
}
- (void)setVersion_:(NSString *)version_ {
  JreOperatorRetainedAssign(&version__, version_);
}
@synthesize version_ = version__;

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initWithOrgXmlSaxLocator:(id<OrgXmlSaxLocator>)locator {
  if ((self = [super initWithOrgXmlSaxLocator:locator])) {
    if ([(id) locator conformsToProtocol: @protocol(OrgXmlSaxExtLocator2)]) {
      id<OrgXmlSaxExtLocator2> l2 = (id<OrgXmlSaxExtLocator2>) locator;
      JreOperatorRetainedAssign(&version__, [((id<OrgXmlSaxExtLocator2>) NIL_CHK(l2)) getXMLVersion]);
      JreOperatorRetainedAssign(&encoding_, [((id<OrgXmlSaxExtLocator2>) NIL_CHK(l2)) getEncoding]);
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (NSString *)getXMLVersion {
  return version__;
}

- (NSString *)getEncoding {
  return encoding_;
}

- (void)setXMLVersionWithNSString:(NSString *)version_ {
  self.version_ = version_;
}

- (void)setEncodingWithNSString:(NSString *)encoding {
  self.encoding = encoding;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&version__, nil);
  JreOperatorRetainedAssign(&encoding_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxExtLocator2Impl *typedCopy = (OrgXmlSaxExtLocator2Impl *) copy;
  typedCopy.encoding = encoding_;
  typedCopy.version_ = version__;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:encoding_ name:@"encoding"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:version__ name:@"version_"]];
  return result;
}

@end
