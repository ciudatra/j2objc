//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/io/Libcore.java
//
//  Created by retechretech on 13-4-26.
//

#import "libcore/io/Libcore.h"
#import "libcore/io/Os.h"
#import "libcore/io/Posix.h"

@implementation LibcoreIoLibcore

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:LibcoreIoLibcore_os_ name:@"LibcoreIoLibcore_os_"]];
  return result;
}

static id<LibcoreIoOs> LibcoreIoLibcore_os_;

+ (id<LibcoreIoOs>)os {
  return LibcoreIoLibcore_os_;
}

+ (void)setOs:(id<LibcoreIoOs>)os {
  JreOperatorRetainedAssign(&LibcoreIoLibcore_os_, os);
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (void)initialize {
  if (self == [LibcoreIoLibcore class]) {
    JreOperatorRetainedAssign(&LibcoreIoLibcore_os_, [[[LibcoreIoPosix alloc] init] autorelease]);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
