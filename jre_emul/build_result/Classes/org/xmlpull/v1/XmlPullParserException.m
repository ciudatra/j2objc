//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/xml/src/main/java/org/xmlpull/v1/XmlPullParserException.java
//
//  Created by retechretech on 13-4-24.
//

#import "java/io/PrintStream.h"
#import "java/lang/System.h"
#import "java/lang/Throwable.h"
#import "org/xmlpull/v1/XmlPullParser.h"
#import "org/xmlpull/v1/XmlPullParserException.h"

@implementation OrgXmlpullV1XmlPullParserException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaLangThrowable *)detail {
  return detail_;
}
- (void)setDetail:(JavaLangThrowable *)detail {
  JreOperatorRetainedAssign(&detail_, detail);
}
@synthesize detail = detail_;
@synthesize row = row_;
@synthesize column = column_;

- (id)initWithNSString:(NSString *)s {
  if ((self = [super initWithNSString:s])) {
    row_ = -1;
    column_ = -1;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)msg
withOrgXmlpullV1XmlPullParser:(id<OrgXmlpullV1XmlPullParser>)parser
 withJavaLangThrowable:(JavaLangThrowable *)chain {
  if ((self = [super initWithNSString:[NSString stringWithFormat:@"%@%@%@", (msg == nil ? @"" : [NSString stringWithFormat:@"%@ ", msg]), (parser == nil ? @"" : [NSString stringWithFormat:@"(position:%@) ", [((id<OrgXmlpullV1XmlPullParser>) NIL_CHK(parser)) getPositionDescription]]), (chain == nil ? @"" : [NSString stringWithFormat:@"caused by: %@", chain])]])) {
    row_ = -1;
    column_ = -1;
    if (parser != nil) {
      self.row = [parser getLineNumber];
      self.column = [parser getColumnNumber];
    }
    self.detail = chain;
    JreMemDebugAdd(self);
  }
  return self;
}

- (JavaLangThrowable *)getDetail {
  return detail_;
}

- (int)getLineNumber {
  return row_;
}

- (int)getColumnNumber {
  return column_;
}

- (void)printStackTrace {
  if (detail_ == nil) {
    [super printStackTrace];
  }
  else {
    @synchronized ([JavaLangSystem err]) {
      NSLog(@"%@", [NSString stringWithFormat:@"%@; nested exception is:", [super getMessage]]);
      [detail_ printStackTrace];
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&detail_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  OrgXmlpullV1XmlPullParserException *typedCopy = (OrgXmlpullV1XmlPullParserException *) copy;
  typedCopy.detail = detail_;
  typedCopy.row = row_;
  typedCopy.column = column_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:detail_ name:@"detail"]];
  return result;
}

@end
