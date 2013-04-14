//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/ByteArrayOutputStream.java
//
//  Created by retechretech on 13-4-14.
//

#import "IOSByteArray.h"
#import "IOSCharArray.h"
#import "java/io/ByteArrayOutputStream.h"
#import "java/io/OutputStream.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/System.h"

@implementation JavaIoByteArrayOutputStream

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (IOSByteArray *)buf {
  return buf_;
}
- (void)setBuf:(IOSByteArray *)buf {
  JreOperatorRetainedAssign(&buf_, buf);
}
@synthesize buf = buf_;
@synthesize count = count_;

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&buf_, [[[IOSByteArray alloc] initWithLength:32] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)size {
  if ((self = [super init])) {
    if (size >= 0) {
      JreOperatorRetainedAssign(&buf_, [[[IOSByteArray alloc] initWithLength:size] autorelease]);
    }
    else {
      @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"size must be >= 0"] autorelease];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
  [super close];
}

- (void)expandWithInt:(int)i {
  if (count_ + i <= (int) [((IOSByteArray *) NIL_CHK(buf_)) count]) {
    return;
  }
  IOSByteArray *newbuf = [[[IOSByteArray alloc] initWithLength:(count_ + i) * 2] autorelease];
  [JavaLangSystem arraycopyWithId:buf_ withInt:0 withId:newbuf withInt:0 withInt:count_];
  JreOperatorRetainedAssign(&buf_, newbuf);
}

- (void)reset {
  @synchronized(self) {
    {
      count_ = 0;
    }
  }
}

- (int)size {
  return count_;
}

- (IOSByteArray *)toByteArray {
  @synchronized(self) {
    {
      IOSByteArray *newArray = [[[IOSByteArray alloc] initWithLength:count_] autorelease];
      [JavaLangSystem arraycopyWithId:buf_ withInt:0 withId:newArray withInt:0 withInt:count_];
      return newArray;
    }
  }
}

- (NSString *)description {
  return [NSString stringWithBytes:buf_ offset:0 length:count_];
}

- (NSString *)toStringWithInt:(int)hibyte {
  IOSCharArray *newBuf = [[[IOSCharArray alloc] initWithLength:[self size]] autorelease];
  for (int i = 0; i < (int) [((IOSCharArray *) NIL_CHK(newBuf)) count]; i++) {
    [((IOSCharArray *) NIL_CHK(newBuf)) replaceCharAtIndex:i withChar:(unichar) (((hibyte & (int) 0xff) << 8) | ([((IOSByteArray *) NIL_CHK(buf_)) byteAtIndex:i] & (int) 0xff))];
  }
  return [NSString stringWithCharacters:newBuf];
}

- (NSString *)toStringWithNSString:(NSString *)enc {
  return [NSString stringWithBytes:buf_ offset:0 length:count_ charsetName:enc];
}

- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer
                           withInt:(int)offset
                           withInt:(int)len {
  @synchronized(self) {
    {
      if (offset < 0 || offset > (int) [((IOSByteArray *) NIL_CHK(buffer)) count] || len < 0 || len > (int) [((IOSByteArray *) NIL_CHK(buffer)) count] - offset) {
        @throw [[[JavaLangIndexOutOfBoundsException alloc] initWithNSString:@"Arguments out of bounds"] autorelease];
      }
      if (len == 0) {
        return;
      }
      [self expandWithInt:len];
      [JavaLangSystem arraycopyWithId:buffer withInt:offset withId:buf_ withInt:self.count withInt:len];
      self.count += len;
    }
  }
}

- (void)writeWithInt:(int)oneByte {
  @synchronized(self) {
    {
      if (count_ == (int) [((IOSByteArray *) NIL_CHK(buf_)) count]) {
        [self expandWithInt:1];
      }
      [((IOSByteArray *) NIL_CHK(buf_)) replaceByteAtIndex:count_++ withByte:(char) oneByte];
    }
  }
}

- (void)writeToWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  @synchronized(self) {
    {
      [((JavaIoOutputStream *) NIL_CHK(outArg)) writeWithJavaLangByteArray:buf_ withInt:0 withInt:count_];
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&buf_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoByteArrayOutputStream *typedCopy = (JavaIoByteArrayOutputStream *) copy;
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
