//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadOnlyFloatArrayBuffer.java
//
//  Created by retechretech on 13-4-14.
//

#import "IOSFloatArray.h"
#import "java/nio/Buffer.h"
#import "java/nio/FloatArrayBuffer.h"
#import "java/nio/FloatBuffer.h"
#import "java/nio/ReadOnlyBufferException.h"
#import "java/nio/ReadOnlyFloatArrayBuffer.h"

@implementation JavaNioReadOnlyFloatArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadOnlyFloatArrayBuffer *)copy__WithJavaNioFloatArrayBuffer:(JavaNioFloatArrayBuffer *)other
                                                               withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE {
  JavaNioReadOnlyFloatArrayBuffer *buf = [[[JavaNioReadOnlyFloatArrayBuffer alloc] initWithInt:[((JavaNioFloatArrayBuffer *) NIL_CHK(other)) capacity] withJavaLangFloatArray:((JavaNioFloatArrayBuffer *) NIL_CHK(other)).backingArray withInt:((JavaNioFloatArrayBuffer *) NIL_CHK(other)).offset] autorelease];
  ((JavaNioReadOnlyFloatArrayBuffer *) NIL_CHK(buf)).limit_ = [((JavaNioFloatArrayBuffer *) NIL_CHK(other)) limit];
  ((JavaNioReadOnlyFloatArrayBuffer *) NIL_CHK(buf)).position_ = [((JavaNioFloatArrayBuffer *) NIL_CHK(other)) position];
  ((JavaNioReadOnlyFloatArrayBuffer *) NIL_CHK(buf)).mark_ = markOfOther;
  return buf;
}

- (id)initWithInt:(int)capacity
withJavaLangFloatArray:(IOSFloatArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withJavaLangFloatArray:backingArray withInt:arrayOffset]);
}

- (JavaNioFloatBuffer *)asReadOnlyBuffer {
  return [self duplicate];
}

- (JavaNioFloatBuffer *)compact {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioFloatBuffer *)duplicate {
  return [JavaNioReadOnlyFloatArrayBuffer copy__WithJavaNioFloatArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return YES;
}

- (IOSFloatArray *)protectedArray {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (int)protectedArrayOffset {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (BOOL)protectedHasArray {
  return NO;
}

- (JavaNioFloatBuffer *)putWithFloat:(float)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioFloatBuffer *)putWithInt:(int)index
                         withFloat:(float)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioFloatBuffer *)putWithJavaNioFloatBuffer:(JavaNioFloatBuffer *)buf {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioFloatBuffer *)putWithJavaLangFloatArray:(IOSFloatArray *)src
                                          withInt:(int)off
                                          withInt:(int)len {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioFloatBuffer *)slice {
  return [[[JavaNioReadOnlyFloatArrayBuffer alloc] initWithInt:[self remaining] withJavaLangFloatArray:backingArray_ withInt:offset_ + position__] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
