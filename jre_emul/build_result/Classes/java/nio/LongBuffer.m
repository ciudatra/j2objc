//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/LongBuffer.java
//
//  Created by retechretech on 13-4-24.
//

#import "IOSClass.h"
#import "IOSLongArray.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuilder.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferFactory.h"
#import "java/nio/BufferOverflowException.h"
#import "java/nio/BufferUnderflowException.h"
#import "java/nio/ByteOrder.h"
#import "java/nio/LongBuffer.h"

@implementation JavaNioLongBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioLongBuffer *)allocateWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  if (capacity < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  return [JavaNioBufferFactory newLongBufferWithInt:capacity];
}

+ (JavaNioLongBuffer *)wrapWithJavaLangLongArray:(IOSLongArray *)array {
  return [JavaNioLongBuffer wrapWithJavaLangLongArray:array withInt:0 withInt:(int) [((IOSLongArray *) NIL_CHK(array)) count]];
}

+ (JavaNioLongBuffer *)wrapWithJavaLangLongArray:(IOSLongArray *)array
                                         withInt:(int)start
                                         withInt:(int)len {
  if (array == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (start < 0 || len < 0 || (long long int) len + (long long int) start > (int) [((IOSLongArray *) NIL_CHK(array)) count]) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  JavaNioLongBuffer *buf = [JavaNioBufferFactory newLongBufferWithJavaLangLongArray:array];
  ((JavaNioLongBuffer *) NIL_CHK(buf)).position_ = start;
  ((JavaNioLongBuffer *) NIL_CHK(buf)).limit_ = start + len;
  return buf;
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([super initWithInt:capacity]);
}

- (IOSLongArray *)array {
  return [self protectedArray];
}

- (int)arrayOffset {
  return [self protectedArrayOffset];
}

- (JavaNioLongBuffer *)asReadOnlyBuffer {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioLongBuffer *)compact {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)compareToWithId:(JavaNioLongBuffer *)otherBuffer {
  if (otherBuffer != nil && ![otherBuffer isKindOfClass:[JavaNioLongBuffer class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  int compareRemaining = ([self remaining] < [((JavaNioLongBuffer *) NIL_CHK(otherBuffer)) remaining]) ? [self remaining] : [((JavaNioLongBuffer *) NIL_CHK(otherBuffer)) remaining];
  int thisPos = position__;
  int otherPos = ((JavaNioLongBuffer *) NIL_CHK(otherBuffer)).position_;
  long long int thisByte, otherByte;
  while (compareRemaining > 0) {
    thisByte = [self getWithInt:thisPos];
    otherByte = [((JavaNioLongBuffer *) NIL_CHK(otherBuffer)) getWithInt:otherPos];
    if (thisByte != otherByte) {
      return thisByte < otherByte ? -1 : 1;
    }
    thisPos++;
    otherPos++;
    compareRemaining--;
  }
  return [self remaining] - [((JavaNioLongBuffer *) NIL_CHK(otherBuffer)) remaining];
}

- (JavaNioLongBuffer *)duplicate {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)isEqual:(id)other {
  if (!([other isKindOfClass:[JavaNioLongBuffer class]])) {
    return NO;
  }
  JavaNioLongBuffer *otherBuffer = (JavaNioLongBuffer *) other;
  if ([self remaining] != [((JavaNioLongBuffer *) NIL_CHK(otherBuffer)) remaining]) {
    return NO;
  }
  int myPosition = position__;
  int otherPosition = ((JavaNioLongBuffer *) NIL_CHK(otherBuffer)).position_;
  BOOL equalSoFar = YES;
  while (equalSoFar && (myPosition < limit__)) {
    equalSoFar = [self getWithInt:myPosition++] == [((JavaNioLongBuffer *) NIL_CHK(otherBuffer)) getWithInt:otherPosition++];
  }
  return equalSoFar;
}

- (long long int)get {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioLongBuffer *)getWithJavaLangLongArray:(IOSLongArray *)dest {
  return [self getWithJavaLangLongArray:dest withInt:0 withInt:(int) [((IOSLongArray *) NIL_CHK(dest)) count]];
}

- (JavaNioLongBuffer *)getWithJavaLangLongArray:(IOSLongArray *)dest
                                        withInt:(int)off
                                        withInt:(int)len {
  int length = (int) [((IOSLongArray *) NIL_CHK(dest)) count];
  if (off < 0 || len < 0 || (long long int) len + (long long int) off > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  for (int i = off; i < off + len; i++) {
    [((IOSLongArray *) NIL_CHK(dest)) replaceLongAtIndex:i withLong:[self get]];
  }
  return self;
}

- (long long int)getWithInt:(int)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)hasArray {
  return [self protectedHasArray];
}

- (NSUInteger)hash {
  int myPosition = position__;
  int hash_ = 0;
  long long int l;
  while (myPosition < limit__) {
    l = [self getWithInt:myPosition++];
    hash_ = hash_ + ((int) l) ^ ((int) (l >> 32));
  }
  return hash_;
}

- (BOOL)isDirect {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioByteOrder *)order {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (IOSLongArray *)protectedArray {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)protectedArrayOffset {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (BOOL)protectedHasArray {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioLongBuffer *)putWithLongInt:(long long int)l {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioLongBuffer *)putWithJavaLangLongArray:(IOSLongArray *)src {
  return [self putWithJavaLangLongArray:src withInt:0 withInt:(int) [((IOSLongArray *) NIL_CHK(src)) count]];
}

- (JavaNioLongBuffer *)putWithJavaLangLongArray:(IOSLongArray *)src
                                        withInt:(int)off
                                        withInt:(int)len {
  int length = (int) [((IOSLongArray *) NIL_CHK(src)) count];
  if (off < 0 || len < 0 || (long long int) len + (long long int) off > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  for (int i = off; i < off + len; i++) {
    [self putWithLongInt:[((IOSLongArray *) NIL_CHK(src)) longAtIndex:i]];
  }
  return self;
}

- (JavaNioLongBuffer *)putWithJavaNioLongBuffer:(JavaNioLongBuffer *)src {
  if (src == self) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  if ([((JavaNioLongBuffer *) NIL_CHK(src)) remaining] > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  IOSLongArray *contents = [[[IOSLongArray alloc] initWithLength:[((JavaNioLongBuffer *) NIL_CHK(src)) remaining]] autorelease];
  [((JavaNioLongBuffer *) NIL_CHK(src)) getWithJavaLangLongArray:contents];
  [self putWithJavaLangLongArray:contents];
  return self;
}

- (JavaNioLongBuffer *)putWithInt:(int)index
                      withLongInt:(long long int)l {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaNioLongBuffer *)slice {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  JavaLangStringBuilder *buf = [[[JavaLangStringBuilder alloc] init] autorelease];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:[[self getClass] getName]];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:@", status: capacity="];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithInt:[self capacity]];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:@" position="];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithInt:[self position]];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithNSString:@" limit="];
  [((JavaLangStringBuilder *) NIL_CHK(buf)) appendWithInt:[self limit]];
  return [((JavaLangStringBuilder *) NIL_CHK(buf)) description];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
