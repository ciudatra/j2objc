//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadWriteLongArrayBuffer.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSLongArray.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/System.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferOverflowException.h"
#import "java/nio/LongArrayBuffer.h"
#import "java/nio/LongBuffer.h"
#import "java/nio/ReadOnlyLongArrayBuffer.h"
#import "java/nio/ReadWriteLongArrayBuffer.h"

@implementation JavaNioReadWriteLongArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadWriteLongArrayBuffer *)copy__WithJavaNioLongArrayBuffer:(JavaNioLongArrayBuffer *)other
                                                              withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE {
  JavaNioReadWriteLongArrayBuffer *buf = [[[JavaNioReadWriteLongArrayBuffer alloc] initWithInt:[((JavaNioLongArrayBuffer *) NIL_CHK(other)) capacity] withJavaLangLongArray:((JavaNioLongArrayBuffer *) NIL_CHK(other)).backingArray withInt:((JavaNioLongArrayBuffer *) NIL_CHK(other)).offset] autorelease];
  ((JavaNioReadWriteLongArrayBuffer *) NIL_CHK(buf)).limit_ = [((JavaNioLongArrayBuffer *) NIL_CHK(other)) limit];
  ((JavaNioReadWriteLongArrayBuffer *) NIL_CHK(buf)).position_ = [((JavaNioLongArrayBuffer *) NIL_CHK(other)) position];
  ((JavaNioReadWriteLongArrayBuffer *) NIL_CHK(buf)).mark_ = markOfOther;
  return buf;
}

- (id)initWithJavaLangLongArray:(IOSLongArray *)array {
  return JreMemDebugAdd([super initWithJavaLangLongArray:array]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([super initWithInt:capacity]);
}

- (id)initWithInt:(int)capacity
withJavaLangLongArray:(IOSLongArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withJavaLangLongArray:backingArray withInt:arrayOffset]);
}

- (JavaNioLongBuffer *)asReadOnlyBuffer {
  return [JavaNioReadOnlyLongArrayBuffer copy__WithJavaNioLongArrayBuffer:self withInt:mark__];
}

- (JavaNioLongBuffer *)compact {
  [JavaLangSystem arraycopyWithId:backingArray_ withInt:position__ + offset_ withId:backingArray_ withInt:offset_ withInt:[self remaining]];
  position__ = limit__ - position__;
  limit__ = capacity__;
  mark__ = JavaNioBuffer_UNSET_MARK;
  return self;
}

- (JavaNioLongBuffer *)duplicate {
  return [JavaNioReadWriteLongArrayBuffer copy__WithJavaNioLongArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return NO;
}

- (IOSLongArray *)protectedArray {
  return backingArray_;
}

- (int)protectedArrayOffset {
  return offset_;
}

- (BOOL)protectedHasArray {
  return YES;
}

- (JavaNioLongBuffer *)putWithLongInt:(long long int)c {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  [((IOSLongArray *) NIL_CHK(backingArray_)) replaceLongAtIndex:offset_ + position__++ withLong:c];
  return self;
}

- (JavaNioLongBuffer *)putWithInt:(int)index
                      withLongInt:(long long int)c {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  [((IOSLongArray *) NIL_CHK(backingArray_)) replaceLongAtIndex:offset_ + index withLong:c];
  return self;
}

- (JavaNioLongBuffer *)putWithJavaLangLongArray:(IOSLongArray *)src
                                        withInt:(int)off
                                        withInt:(int)len {
  int length = (int) [((IOSLongArray *) NIL_CHK(src)) count];
  if (off < 0 || len < 0 || (long long int) off + (long long int) len > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  [JavaLangSystem arraycopyWithId:src withInt:off withId:backingArray_ withInt:offset_ + position__ withInt:len];
  position__ += len;
  return self;
}

- (JavaNioLongBuffer *)slice {
  return [[[JavaNioReadWriteLongArrayBuffer alloc] initWithInt:[self remaining] withJavaLangLongArray:backingArray_ withInt:offset_ + position__] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
