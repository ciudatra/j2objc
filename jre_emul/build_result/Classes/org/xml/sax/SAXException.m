//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/SAXException.java
//
//  Created by retechretech on 13-4-24.
//

#import "java/lang/Exception.h"
#import "org/xml/sax/SAXException.h"

@implementation OrgXmlSaxSAXException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaLangException *)exception {
  return exception_;
}
- (void)setException:(JavaLangException *)exception {
  JreOperatorRetainedAssign(&exception_, exception);
}
@synthesize exception = exception_;

- (id)init {
  if ((self = [super init])) {
    self.exception = nil;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)message {
  if ((self = [super initWithNSString:message])) {
    self.exception = nil;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaLangException:(JavaLangException *)e {
  if ((self = [super init])) {
    self.exception = e;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)message
 withJavaLangException:(JavaLangException *)e {
  if ((self = [super initWithNSString:message])) {
    self.exception = e;
    JreMemDebugAdd(self);
  }
  return self;
}

- (NSString *)getMessage {
  NSString *message = [super getMessage];
  if (message == nil && exception_ != nil) {
    return [((JavaLangException *) NIL_CHK(exception_)) getMessage];
  }
  else {
    return message;
  }
}

- (JavaLangException *)getException {
  return exception_;
}

- (NSString *)description {
  if (exception_ != nil) {
    return [exception_ description];
  }
  else {
    return (NSString *) [super description];
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&exception_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlSaxSAXException *typedCopy = (OrgXmlSaxSAXException *) copy;
  typedCopy.exception = exception_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:exception_ name:@"exception"]];
  return result;
}

@end
