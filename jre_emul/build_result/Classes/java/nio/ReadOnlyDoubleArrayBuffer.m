//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadOnlyDoubleArrayBuffer.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSDoubleArray.h"
#import "java/nio/Buffer.h"
#import "java/nio/DoubleArrayBuffer.h"
#import "java/nio/DoubleBuffer.h"
#import "java/nio/ReadOnlyBufferException.h"
#import "java/nio/ReadOnlyDoubleArrayBuffer.h"

@implementation JavaNioReadOnlyDoubleArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadOnlyDoubleArrayBuffer *)copy__WithJavaNioDoubleArrayBuffer:(JavaNioDoubleArrayBuffer *)other
                                                                 withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE {
  JavaNioReadOnlyDoubleArrayBuffer *buf = [[[JavaNioReadOnlyDoubleArrayBuffer alloc] initWithInt:[((JavaNioDoubleArrayBuffer *) NIL_CHK(other)) capacity] withJavaLangDoubleArray:((JavaNioDoubleArrayBuffer *) NIL_CHK(other)).backingArray withInt:((JavaNioDoubleArrayBuffer *) NIL_CHK(other)).offset] autorelease];
  ((JavaNioReadOnlyDoubleArrayBuffer *) NIL_CHK(buf)).limit_ = [((JavaNioDoubleArrayBuffer *) NIL_CHK(other)) limit];
  ((JavaNioReadOnlyDoubleArrayBuffer *) NIL_CHK(buf)).position_ = [((JavaNioDoubleArrayBuffer *) NIL_CHK(other)) position];
  ((JavaNioReadOnlyDoubleArrayBuffer *) NIL_CHK(buf)).mark_ = markOfOther;
  return buf;
}

- (id)initWithInt:(int)capacity
withJavaLangDoubleArray:(IOSDoubleArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withJavaLangDoubleArray:backingArray withInt:arrayOffset]);
}

- (JavaNioDoubleBuffer *)asReadOnlyBuffer {
  return [self duplicate];
}

- (JavaNioDoubleBuffer *)compact {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioDoubleBuffer *)duplicate {
  return [JavaNioReadOnlyDoubleArrayBuffer copy__WithJavaNioDoubleArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return YES;
}

- (IOSDoubleArray *)protectedArray {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (int)protectedArrayOffset {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (BOOL)protectedHasArray {
  return NO;
}

- (JavaNioDoubleBuffer *)putWithDouble:(double)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioDoubleBuffer *)putWithInt:(int)index
                         withDouble:(double)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioDoubleBuffer *)putWithJavaLangDoubleArray:(IOSDoubleArray *)src
                                            withInt:(int)off
                                            withInt:(int)len {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioDoubleBuffer *)putWithJavaNioDoubleBuffer:(JavaNioDoubleBuffer *)buf {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioDoubleBuffer *)slice {
  return [[[JavaNioReadOnlyDoubleArrayBuffer alloc] initWithInt:[self remaining] withJavaLangDoubleArray:backingArray_ withInt:offset_ + position__] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
