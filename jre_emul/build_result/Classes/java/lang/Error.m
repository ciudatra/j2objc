//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Error.java
//
//  Created by retechretech on 13-4-14.
//

#import "java/lang/Error.h"
#import "java/lang/Throwable.h"

@implementation JavaLangError

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initWithNSString:(NSString *)detailMessage {
  return JreMemDebugAdd([super initWithNSString:detailMessage]);
}

- (id)initWithNSString:(NSString *)detailMessage
 withJavaLangThrowable:(JavaLangThrowable *)throwable {
  return JreMemDebugAdd([super initWithNSString:detailMessage withJavaLangThrowable:throwable]);
}

- (id)initWithJavaLangThrowable:(JavaLangThrowable *)throwable {
  return JreMemDebugAdd([super initWithJavaLangThrowable:throwable]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
