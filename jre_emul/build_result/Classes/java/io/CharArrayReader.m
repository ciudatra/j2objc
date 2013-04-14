//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/CharArrayReader.java
//
//  Created by retechretech on 13-4-14.
//

#import "IOSCharArray.h"
#import "java/io/CharArrayReader.h"
#import "java/io/IOException.h"
#import "java/lang/ArrayIndexOutOfBoundsException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/System.h"

@implementation JavaIoCharArrayReader

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (IOSCharArray *)buf {
  return buf_;
}
- (void)setBuf:(IOSCharArray *)buf {
  JreOperatorRetainedAssign(&buf_, buf);
}
@synthesize buf = buf_;
@synthesize pos = pos_;
@synthesize markedPos = markedPos_;
@synthesize count = count_;

- (id)initWithJavaLangCharacterArray:(IOSCharArray *)buf {
  if ((self = [super init])) {
    markedPos_ = -1;
    self.buf = buf;
    self.count = (int) [((IOSCharArray *) NIL_CHK(buf)) count];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaLangCharacterArray:(IOSCharArray *)buf
                             withInt:(int)offset
                             withInt:(int)length {
  if ((self = [super init])) {
    markedPos_ = -1;
    if (offset < 0 || offset > (int) [((IOSCharArray *) NIL_CHK(buf)) count] || length < 0 || offset + length < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    self.buf = buf;
    self.pos = offset;
    self.markedPos = offset;
    int bufferLength = (int) [((IOSCharArray *) NIL_CHK(buf)) count];
    self.count = offset + length < bufferLength ? length : bufferLength;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
  @synchronized (lock_) {
    if ([self isOpen]) {
      JreOperatorRetainedAssign(&buf_, nil);
    }
  }
}

- (BOOL)isOpen {
  return buf_ != nil;
}

- (BOOL)isClosed {
  return buf_ == nil;
}

- (void)markWithInt:(int)readLimit {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"CharArrayReader is closed."] autorelease];
    }
    markedPos_ = pos_;
  }
}

- (BOOL)markSupported {
  return YES;
}

- (int)read {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"CharArrayReader is closed."] autorelease];
    }
    if (pos_ == count_) {
      return -1;
    }
    return [((IOSCharArray *) NIL_CHK(buf_)) charAtIndex:pos_++];
  }
}

- (int)readWithJavaLangCharacterArray:(IOSCharArray *)buffer
                              withInt:(int)offset
                              withInt:(int)len {
  if (offset < 0 || offset > (int) [((IOSCharArray *) NIL_CHK(buffer)) count]) {
    @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Offset out of bounds: %d", offset]] autorelease];
  }
  if (len < 0 || len > (int) [((IOSCharArray *) NIL_CHK(buffer)) count] - offset) {
    @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Length out of bounds: %d", len]] autorelease];
  }
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"CharArrayReader is closed."] autorelease];
    }
    if (pos_ < self.count) {
      int bytesRead = pos_ + len > self.count ? self.count - pos_ : len;
      [JavaLangSystem arraycopyWithId:self.buf withInt:pos_ withId:buffer withInt:offset withInt:bytesRead];
      pos_ += bytesRead;
      return bytesRead;
    }
    return -1;
  }
}

- (BOOL)ready {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"CharArrayReader is closed."] autorelease];
    }
    return pos_ != count_;
  }
}

- (void)reset {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"CharArrayReader is closed."] autorelease];
    }
    pos_ = markedPos_ != -1 ? markedPos_ : 0;
  }
}

- (long long int)skipWithLongInt:(long long int)n {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"CharArrayReader is closed."] autorelease];
    }
    if (n <= 0) {
      return 0;
    }
    long long int skipped = 0;
    if (n < self.count - pos_) {
      pos_ = pos_ + (int) n;
      skipped = n;
    }
    else {
      skipped = self.count - pos_;
      pos_ = self.count;
    }
    return skipped;
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&buf_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoCharArrayReader *typedCopy = (JavaIoCharArrayReader *) copy;
  typedCopy.buf = buf_;
  typedCopy.pos = pos_;
  typedCopy.markedPos = markedPos_;
  typedCopy.count = count_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:buf_ name:@"buf"]];
  return result;
}

@end
