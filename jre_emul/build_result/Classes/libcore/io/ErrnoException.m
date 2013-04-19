//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/io/ErrnoException.java
//
//  Created by retechretech on 13-4-19.
//

#import "java/io/IOException.h"
#import "java/lang/Throwable.h"
#import "libcore/io/ErrnoException.h"
#import "libcore/io/Libcore.h"
#import "libcore/io/Os.h"
#import "libcore/io/OsConstants.h"

@implementation LibcoreIoErrnoException

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (NSString *)functionName {
  return functionName_;
}
- (void)setFunctionName:(NSString *)functionName {
  JreOperatorRetainedAssign(&functionName_, functionName);
}
@synthesize functionName = functionName_;
@synthesize errno_ = errno__;

- (id)initWithNSString:(NSString *)functionName
               withInt:(int)errno_ {
  if ((self = [super init])) {
    self.functionName = functionName;
    self.errno_ = errno_;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)functionName
               withInt:(int)errno_
 withJavaLangThrowable:(JavaLangThrowable *)cause {
  if ((self = [super initWithJavaLangThrowable:cause])) {
    self.functionName = functionName;
    self.errno_ = errno_;
    JreMemDebugAdd(self);
  }
  return self;
}

- (NSString *)getMessage {
  NSString *errnoName = [LibcoreIoOsConstants errnoNameWithInt:errno__];
  if (errnoName == nil) {
    errnoName = [NSString stringWithFormat:@"errno %d", errno__];
  }
  NSString *description_ = [((id<LibcoreIoOs>) NIL_CHK([LibcoreIoLibcore os])) strerrorWithInt:errno__];
  return [NSString stringWithFormat:@"%@ failed: %@ (%@)", functionName_, errnoName, description_];
}

- (JavaIoIOException *)rethrowAsIOException {
  JavaIoIOException *newException = [[[JavaIoIOException alloc] initWithNSString:[self getMessage]] autorelease];
  [((JavaIoIOException *) NIL_CHK(newException)) initCauseWithJavaLangThrowable:self];
  @throw newException;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&functionName_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  LibcoreIoErrnoException *typedCopy = (LibcoreIoErrnoException *) copy;
  typedCopy.functionName = functionName_;
  typedCopy.errno_ = errno__;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:functionName_ name:@"functionName"]];
  return result;
}

@end