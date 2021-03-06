//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FileDescriptor.java
//
//  Created by retechretech on 13-4-26.
//

#import "java/io/FileDescriptor.h"

@implementation JavaIoFileDescriptor

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaIoFileDescriptor_in_ name:@"JavaIoFileDescriptor_in_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaIoFileDescriptor_out_ name:@"JavaIoFileDescriptor_out_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaIoFileDescriptor_err_ name:@"JavaIoFileDescriptor_err_"]];
  return result;
}

static JavaIoFileDescriptor * JavaIoFileDescriptor_in_;
static JavaIoFileDescriptor * JavaIoFileDescriptor_out_;
static JavaIoFileDescriptor * JavaIoFileDescriptor_err_;

@synthesize descriptor = descriptor_;
@synthesize readOnly = readOnly_;

+ (JavaIoFileDescriptor *)in {
  return JavaIoFileDescriptor_in_;
}

+ (JavaIoFileDescriptor *)out {
  return JavaIoFileDescriptor_out_;
}

+ (JavaIoFileDescriptor *)err {
  return JavaIoFileDescriptor_err_;
}

+ (long long int)getStdInDescriptor   {
    return (long) fcntl(STDIN_FILENO, F_DUPFD, 0);
  }

+ (long long int)getStdOutDescriptor   {
    return (long) fcntl(STDOUT_FILENO, F_DUPFD, 0);
  }

+ (long long int)getStdErrDescriptor   {
    return (long) fcntl(STDERR_FILENO, F_DUPFD, 0);
  }

- (id)init {
  if ((self = [super init])) {
    descriptor_ = -1;
    readOnly_ = NO;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)sync {
  if (!readOnly_) {
    [self syncImpl];
  }
}

- (void)syncImpl   {
    fsync((int) descriptor_);
  }

- (BOOL)valid {
  return descriptor_ != -1;
}

+ (void)initialize {
  if (self == [JavaIoFileDescriptor class]) {
    JreOperatorRetainedAssign(&JavaIoFileDescriptor_in_, [[[JavaIoFileDescriptor alloc] init] autorelease]);
    JreOperatorRetainedAssign(&JavaIoFileDescriptor_out_, [[[JavaIoFileDescriptor alloc] init] autorelease]);
    JreOperatorRetainedAssign(&JavaIoFileDescriptor_err_, [[[JavaIoFileDescriptor alloc] init] autorelease]);
    {
      ((JavaIoFileDescriptor *) NIL_CHK(JavaIoFileDescriptor_in_)).descriptor = [JavaIoFileDescriptor getStdInDescriptor];
      ((JavaIoFileDescriptor *) NIL_CHK(JavaIoFileDescriptor_out_)).descriptor = [JavaIoFileDescriptor getStdOutDescriptor];
      ((JavaIoFileDescriptor *) NIL_CHK(JavaIoFileDescriptor_err_)).descriptor = [JavaIoFileDescriptor getStdErrDescriptor];
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoFileDescriptor *typedCopy = (JavaIoFileDescriptor *) copy;
  typedCopy.descriptor = descriptor_;
  typedCopy.readOnly = readOnly_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
