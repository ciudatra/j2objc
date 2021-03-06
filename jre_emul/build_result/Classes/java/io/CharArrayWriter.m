//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/CharArrayWriter.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSCharArray.h"
#import "java/io/CharArrayWriter.h"
#import "java/io/Writer.h"
#import "java/lang/CharSequence.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/Math.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringIndexOutOfBoundsException.h"
#import "java/lang/System.h"

@implementation JavaIoCharArrayWriter

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
@synthesize count = count_;

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&buf_, [[[IOSCharArray alloc] initWithLength:32] autorelease]);
    JreOperatorRetainedAssign(&lock_, buf_);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)initialSize {
  if ((self = [super init])) {
    if (initialSize < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"size must be >= 0"] autorelease];
    }
    JreOperatorRetainedAssign(&buf_, [[[IOSCharArray alloc] initWithLength:initialSize] autorelease]);
    JreOperatorRetainedAssign(&lock_, buf_);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
}

- (void)expandWithInt:(int)i {
  if (count_ + i <= (int) [((IOSCharArray *) NIL_CHK(buf_)) count]) {
    return;
  }
  int newLen = [JavaLangMath maxWithInt:2 * (int) [((IOSCharArray *) NIL_CHK(buf_)) count] withInt:count_ + i];
  IOSCharArray *newbuf = [[[IOSCharArray alloc] initWithLength:newLen] autorelease];
  [JavaLangSystem arraycopyWithId:buf_ withInt:0 withId:newbuf withInt:0 withInt:count_];
  JreOperatorRetainedAssign(&buf_, newbuf);
}

- (void)flush {
}

- (void)reset {
  @synchronized (lock_) {
    count_ = 0;
  }
}

- (int)size {
  @synchronized (lock_) {
    return count_;
  }
}

- (IOSCharArray *)toCharArray {
  @synchronized (lock_) {
    IOSCharArray *result = [[[IOSCharArray alloc] initWithLength:count_] autorelease];
    [JavaLangSystem arraycopyWithId:buf_ withInt:0 withId:result withInt:0 withInt:count_];
    return result;
  }
}

- (NSString *)description {
  @synchronized (lock_) {
    return [NSString stringWithCharacters:buf_ offset:0 length:count_];
  }
}

- (void)writeWithJavaLangCharacterArray:(IOSCharArray *)c
                                withInt:(int)offset
                                withInt:(int)len {
  if (offset < 0 || offset > (int) [((IOSCharArray *) NIL_CHK(c)) count] || len < 0 || len > (int) [((IOSCharArray *) NIL_CHK(c)) count] - offset) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  @synchronized (lock_) {
    [self expandWithInt:len];
    [JavaLangSystem arraycopyWithId:c withInt:offset withId:self.buf withInt:self.count withInt:len];
    self.count += len;
  }
}

- (void)writeWithInt:(int)oneChar {
  @synchronized (lock_) {
    [self expandWithInt:1];
    [((IOSCharArray *) NIL_CHK(buf_)) replaceCharAtIndex:count_++ withChar:(unichar) oneChar];
  }
}

- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)len {
  if (str == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"buffer is null"] autorelease];
  }
  if (offset < 0 || offset > [NIL_CHK(str) length] || len < 0 || len > [NIL_CHK(str) length] - offset) {
    @throw [[[JavaLangStringIndexOutOfBoundsException alloc] init] autorelease];
  }
  @synchronized (lock_) {
    [self expandWithInt:len];
    [NIL_CHK(str) getChars:offset sourceEnd:offset + len destination:buf_ destinationBegin:self.count];
    self.count += len;
  }
}

- (void)writeToWithJavaIoWriter:(JavaIoWriter *)outArg {
  @synchronized (lock_) {
    [((JavaIoWriter *) NIL_CHK(outArg)) writeWithJavaLangCharacterArray:buf_ withInt:0 withInt:count_];
  }
}

- (JavaIoCharArrayWriter *)appendWithUnichar:(unichar)c {
  [self writeWithInt:c];
  return self;
}

- (JavaIoCharArrayWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq {
  if (nil == csq) {
    [self appendWithJavaLangCharSequence:[JavaIoWriter TOKEN_NULL] withInt:0 withInt:[NIL_CHK([JavaIoWriter TOKEN_NULL]) length]];
  }
  else {
    [self appendWithJavaLangCharSequence:csq withInt:0 withInt:[csq sequenceLength]];
  }
  return self;
}

- (JavaIoCharArrayWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                                  withInt:(int)start
                                                  withInt:(int)end {
  if (nil == csq) {
    csq = [JavaIoWriter TOKEN_NULL];
  }
  NSString *output = [((id<JavaLangCharSequence>) [((id<JavaLangCharSequence>) NIL_CHK(csq)) subSequenceFrom:start to:end]) sequenceDescription];
  [self writeWithNSString:output withInt:0 withInt:[NIL_CHK(output) length]];
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&buf_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoCharArrayWriter *typedCopy = (JavaIoCharArrayWriter *) copy;
  typedCopy.buf = buf_;
  typedCopy.count = count_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:buf_ name:@"buf"]];
  return result;
}

@end
