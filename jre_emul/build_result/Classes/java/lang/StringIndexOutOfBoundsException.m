//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/StringIndexOutOfBoundsException.java
//
//  Created by retechretech on 13-4-24.
//

#import "java/lang/StringIndexOutOfBoundsException.h"

@implementation JavaLangStringIndexOutOfBoundsException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (id)initWithInt:(int)index {
  return JreMemDebugAdd([super initWithNSString:[NSString stringWithFormat:@"String index out of range: %d", index]]);
}

- (id)initWithNSString:(NSString *)detailMessage {
  return JreMemDebugAdd([super initWithNSString:detailMessage]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
