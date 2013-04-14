//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadWriteIntArrayBuffer.java
//
//  Created by retechretech on 13-4-14.
//

#import "IOSIntArray.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/System.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferOverflowException.h"
#import "java/nio/IntArrayBuffer.h"
#import "java/nio/IntBuffer.h"
#import "java/nio/ReadOnlyIntArrayBuffer.h"
#import "java/nio/ReadWriteIntArrayBuffer.h"

@implementation JavaNioReadWriteIntArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadWriteIntArrayBuffer *)copy__WithJavaNioIntArrayBuffer:(JavaNioIntArrayBuffer *)other
                                                            withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE {
  JavaNioReadWriteIntArrayBuffer *buf = [[[JavaNioReadWriteIntArrayBuffer alloc] initWithInt:[((JavaNioIntArrayBuffer *) NIL_CHK(other)) capacity] withJavaLangIntegerArray:((JavaNioIntArrayBuffer *) NIL_CHK(other)).backingArray withInt:((JavaNioIntArrayBuffer *) NIL_CHK(other)).offset] autorelease];
  ((JavaNioReadWriteIntArrayBuffer *) NIL_CHK(buf)).limit_ = [((JavaNioIntArrayBuffer *) NIL_CHK(other)) limit];
  ((JavaNioReadWriteIntArrayBuffer *) NIL_CHK(buf)).position_ = [((JavaNioIntArrayBuffer *) NIL_CHK(other)) position];
  ((JavaNioReadWriteIntArrayBuffer *) NIL_CHK(buf)).mark_ = markOfOther;
  return buf;
}

- (id)initWithJavaLangIntegerArray:(IOSIntArray *)array {
  return JreMemDebugAdd([super initWithJavaLangIntegerArray:array]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([super initWithInt:capacity]);
}

- (id)initWithInt:(int)capacity
withJavaLangIntegerArray:(IOSIntArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withJavaLangIntegerArray:backingArray withInt:arrayOffset]);
}

- (JavaNioIntBuffer *)asReadOnlyBuffer {
  return [JavaNioReadOnlyIntArrayBuffer copy__WithJavaNioIntArrayBuffer:self withInt:mark__];
}

- (JavaNioIntBuffer *)compact {
  [JavaLangSystem arraycopyWithId:backingArray_ withInt:position__ + offset_ withId:backingArray_ withInt:offset_ withInt:[self remaining]];
  position__ = limit__ - position__;
  limit__ = capacity__;
  mark__ = JavaNioBuffer_UNSET_MARK;
  return self;
}

- (JavaNioIntBuffer *)duplicate {
  return [JavaNioReadWriteIntArrayBuffer copy__WithJavaNioIntArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return NO;
}

- (IOSIntArray *)protectedArray {
  return backingArray_;
}

- (int)protectedArrayOffset {
  return offset_;
}

- (BOOL)protectedHasArray {
  return YES;
}

- (JavaNioIntBuffer *)putWithInt:(int)c {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  [((IOSIntArray *) NIL_CHK(backingArray_)) replaceIntAtIndex:offset_ + position__++ withInt:c];
  return self;
}

- (JavaNioIntBuffer *)putWithInt:(int)index
                         withInt:(int)c {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  [((IOSIntArray *) NIL_CHK(backingArray_)) replaceIntAtIndex:offset_ + index withInt:c];
  return self;
}

- (JavaNioIntBuffer *)putWithJavaLangIntegerArray:(IOSIntArray *)src
                                          withInt:(int)off
                                          withInt:(int)len {
  int length = (int) [((IOSIntArray *) NIL_CHK(src)) count];
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

- (JavaNioIntBuffer *)slice {
  return [[[JavaNioReadWriteIntArrayBuffer alloc] initWithInt:[self remaining] withJavaLangIntegerArray:backingArray_ withInt:offset_ + position__] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
