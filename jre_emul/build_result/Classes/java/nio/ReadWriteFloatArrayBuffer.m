//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadWriteFloatArrayBuffer.java
//
//  Created by retechretech on 13-4-14.
//

#import "IOSFloatArray.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/System.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferOverflowException.h"
#import "java/nio/FloatArrayBuffer.h"
#import "java/nio/FloatBuffer.h"
#import "java/nio/ReadOnlyFloatArrayBuffer.h"
#import "java/nio/ReadWriteFloatArrayBuffer.h"

@implementation JavaNioReadWriteFloatArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadWriteFloatArrayBuffer *)copy__WithJavaNioFloatArrayBuffer:(JavaNioFloatArrayBuffer *)other
                                                                withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE {
  JavaNioReadWriteFloatArrayBuffer *buf = [[[JavaNioReadWriteFloatArrayBuffer alloc] initWithInt:[((JavaNioFloatArrayBuffer *) NIL_CHK(other)) capacity] withJavaLangFloatArray:((JavaNioFloatArrayBuffer *) NIL_CHK(other)).backingArray withInt:((JavaNioFloatArrayBuffer *) NIL_CHK(other)).offset] autorelease];
  ((JavaNioReadWriteFloatArrayBuffer *) NIL_CHK(buf)).limit_ = [((JavaNioFloatArrayBuffer *) NIL_CHK(other)) limit];
  ((JavaNioReadWriteFloatArrayBuffer *) NIL_CHK(buf)).position_ = [((JavaNioFloatArrayBuffer *) NIL_CHK(other)) position];
  ((JavaNioReadWriteFloatArrayBuffer *) NIL_CHK(buf)).mark_ = markOfOther;
  return buf;
}

- (id)initWithJavaLangFloatArray:(IOSFloatArray *)array {
  return JreMemDebugAdd([super initWithJavaLangFloatArray:array]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([super initWithInt:capacity]);
}

- (id)initWithInt:(int)capacity
withJavaLangFloatArray:(IOSFloatArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withJavaLangFloatArray:backingArray withInt:arrayOffset]);
}

- (JavaNioFloatBuffer *)asReadOnlyBuffer {
  return [JavaNioReadOnlyFloatArrayBuffer copy__WithJavaNioFloatArrayBuffer:self withInt:mark__];
}

- (JavaNioFloatBuffer *)compact {
  [JavaLangSystem arraycopyWithId:backingArray_ withInt:position__ + offset_ withId:backingArray_ withInt:offset_ withInt:[self remaining]];
  position__ = limit__ - position__;
  limit__ = capacity__;
  mark__ = JavaNioBuffer_UNSET_MARK;
  return self;
}

- (JavaNioFloatBuffer *)duplicate {
  return [JavaNioReadWriteFloatArrayBuffer copy__WithJavaNioFloatArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return NO;
}

- (IOSFloatArray *)protectedArray {
  return backingArray_;
}

- (int)protectedArrayOffset {
  return offset_;
}

- (BOOL)protectedHasArray {
  return YES;
}

- (JavaNioFloatBuffer *)putWithFloat:(float)c {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferOverflowException alloc] init] autorelease];
  }
  [((IOSFloatArray *) NIL_CHK(backingArray_)) replaceFloatAtIndex:offset_ + position__++ withFloat:c];
  return self;
}

- (JavaNioFloatBuffer *)putWithInt:(int)index
                         withFloat:(float)c {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  [((IOSFloatArray *) NIL_CHK(backingArray_)) replaceFloatAtIndex:offset_ + index withFloat:c];
  return self;
}

- (JavaNioFloatBuffer *)putWithJavaLangFloatArray:(IOSFloatArray *)src
                                          withInt:(int)off
                                          withInt:(int)len {
  int length = (int) [((IOSFloatArray *) NIL_CHK(src)) count];
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

- (JavaNioFloatBuffer *)slice {
  return [[[JavaNioReadWriteFloatArrayBuffer alloc] initWithInt:[self remaining] withJavaLangFloatArray:backingArray_ withInt:offset_ + position__] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
