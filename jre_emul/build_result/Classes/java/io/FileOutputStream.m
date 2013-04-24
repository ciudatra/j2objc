//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FileOutputStream.java
//
//  Created by retechretech on 13-4-24.
//

#import "IOSByteArray.h"
#import "java/io/File.h"
#import "java/io/FileDescriptor.h"
#import "java/io/FileNotFoundException.h"
#import "java/io/FileOutputStream.h"
#import "java/io/IOException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/NullPointerException.h"

@implementation JavaIoFileOutputStream

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaIoFileDescriptor *)fd {
  return fd_;
}
- (void)setFd:(JavaIoFileDescriptor *)fd {
  JreOperatorRetainedAssign(&fd_, fd);
}
@synthesize fd = fd_;

- (id)initWithJavaIoFile:(JavaIoFile *)file {
  return JreMemDebugAdd([self initJavaIoFileOutputStreamWithJavaIoFile:file withBOOL:NO]);
}

- (id)initJavaIoFileOutputStreamWithJavaIoFile:(JavaIoFile *)file
                                      withBOOL:(BOOL)append {
  if ((self = [super init])) {
    if ([[((JavaIoFile *) NIL_CHK(file)) getPath] isEmpty] || [((JavaIoFile *) NIL_CHK(file)) isDirectory]) {
      @throw [[[JavaIoFileNotFoundException alloc] initWithNSString:[((JavaIoFile *) NIL_CHK(file)) getAbsolutePath]] autorelease];
    }
    JreOperatorRetainedAssign(&fd_, [[[JavaIoFileDescriptor alloc] init] autorelease]);
    ((JavaIoFileDescriptor *) NIL_CHK(fd_)).readOnly = NO;
    ((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor = [self openWithNSString:[((JavaIoFile *) NIL_CHK(file)) getAbsolutePath] withBOOL:append];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaIoFile:(JavaIoFile *)file
                withBOOL:(BOOL)append {
  return [self initJavaIoFileOutputStreamWithJavaIoFile:file withBOOL:append];
}

- (long long int)openWithNSString:(NSString *)path
                         withBOOL:(BOOL)append   {
    int flags = O_WRONLY | O_CREAT | (append ? O_APPEND : O_TRUNC);
    return (long long) open([path UTF8String], flags, 0644);
  }

- (id)initWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd {
  if ((self = [super init])) {
    if (fd == nil) {
      @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"FileDescriptor is null"] autorelease];
    }
    self.fd = fd;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)filename {
  return JreMemDebugAdd([self initJavaIoFileOutputStreamWithNSString:filename withBOOL:NO]);
}

- (id)initJavaIoFileOutputStreamWithNSString:(NSString *)filename
                                    withBOOL:(BOOL)append {
  return JreMemDebugAdd([self initJavaIoFileOutputStreamWithJavaIoFile:[[[JavaIoFile alloc] initWithNSString:filename] autorelease] withBOOL:append]);
}

- (id)initWithNSString:(NSString *)filename
              withBOOL:(BOOL)append {
  return [self initJavaIoFileOutputStreamWithNSString:filename withBOOL:append];
}

- (void)close {
  if (fd_ == nil) {
    return;
  }
  @synchronized (self) {
    if (((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor >= 0) {
      [self closeWithLongInt:((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor];
      ((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor = -1;
    }
  }
}

- (void)closeWithLongInt:(long long int)descriptor   {
    close((int) descriptor);
  }

- (void)dealloc {
  JreMemDebugRemove(self);
  [self close];
  JreOperatorRetainedAssign(&fd_, nil);
  [super dealloc];
}

- (JavaIoFileDescriptor *)getFD {
  return fd_;
}

- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer {
  [self writeWithJavaLangByteArray:buffer withInt:0 withInt:(int) [((IOSByteArray *) NIL_CHK(buffer)) count]];
}

- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer
                           withInt:(int)offset
                           withInt:(int)count {
  if (buffer == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (count < 0 || offset < 0 || offset > (int) [((IOSByteArray *) NIL_CHK(buffer)) count] || count > (int) [((IOSByteArray *) NIL_CHK(buffer)) count] - offset) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (count == 0) {
    return;
  }
  [self openCheck];
  [self nativeWriteWithJavaLangByteArray:buffer withInt:offset withInt:count];
}

- (int)nativeWriteWithJavaLangByteArray:(IOSByteArray *)buffer
                                withInt:(int)offset
                                withInt:(int)count   {
    char *buf = malloc(count);
    @try {
      [buffer getBytes:buf offset:offset length:count];
      int n = write(fd_->descriptor_, buf, count);
      if (n < count) {
        JavaIoIOException *e = [[JavaIoIOException alloc] init];
        #if ! __has_feature(objc_arc)
        [e autorelease];
        #endif
        @throw e;
      }
      return n;
    }
    @finally {
      free(buf);
    }
  }

- (void)writeWithInt:(int)oneByte {
  [self openCheck];
  IOSByteArray *byteArray = [[[IOSByteArray alloc] initWithLength:1] autorelease];
  [((IOSByteArray *) NIL_CHK(byteArray)) replaceByteAtIndex:0 withByte:(char) oneByte];
  [self nativeWriteWithJavaLangByteArray:byteArray withInt:0 withInt:1];
}

- (void)openCheck {
  @synchronized(self) {
    {
      if (((JavaIoFileDescriptor *) NIL_CHK(fd_)).descriptor < 0) {
        @throw [[[JavaIoIOException alloc] init] autorelease];
      }
    }
  }
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoFileOutputStream *typedCopy = (JavaIoFileOutputStream *) copy;
  typedCopy.fd = fd_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:fd_ name:@"fd"]];
  return result;
}

@end
