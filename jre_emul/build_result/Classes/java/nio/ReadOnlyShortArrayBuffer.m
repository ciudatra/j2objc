//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadOnlyShortArrayBuffer.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSShortArray.h"
#import "java/nio/Buffer.h"
#import "java/nio/ReadOnlyBufferException.h"
#import "java/nio/ReadOnlyShortArrayBuffer.h"
#import "java/nio/ShortArrayBuffer.h"
#import "java/nio/ShortBuffer.h"

@implementation JavaNioReadOnlyShortArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

+ (JavaNioReadOnlyShortArrayBuffer *)copy__WithJavaNioShortArrayBuffer:(JavaNioShortArrayBuffer *)other
                                                               withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE {
  JavaNioReadOnlyShortArrayBuffer *buf = [[[JavaNioReadOnlyShortArrayBuffer alloc] initWithInt:[((JavaNioShortArrayBuffer *) NIL_CHK(other)) capacity] withJavaLangShortArray:((JavaNioShortArrayBuffer *) NIL_CHK(other)).backingArray withInt:((JavaNioShortArrayBuffer *) NIL_CHK(other)).offset] autorelease];
  ((JavaNioReadOnlyShortArrayBuffer *) NIL_CHK(buf)).limit_ = [((JavaNioShortArrayBuffer *) NIL_CHK(other)) limit];
  ((JavaNioReadOnlyShortArrayBuffer *) NIL_CHK(buf)).position_ = [((JavaNioShortArrayBuffer *) NIL_CHK(other)) position];
  ((JavaNioReadOnlyShortArrayBuffer *) NIL_CHK(buf)).mark_ = markOfOther;
  return buf;
}

- (id)initWithInt:(int)capacity
withJavaLangShortArray:(IOSShortArray *)backingArray
          withInt:(int)arrayOffset {
  return JreMemDebugAdd([super initWithInt:capacity withJavaLangShortArray:backingArray withInt:arrayOffset]);
}

- (JavaNioShortBuffer *)asReadOnlyBuffer {
  return [self duplicate];
}

- (JavaNioShortBuffer *)compact {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)duplicate {
  return [JavaNioReadOnlyShortArrayBuffer copy__WithJavaNioShortArrayBuffer:self withInt:mark__];
}

- (BOOL)isReadOnly {
  return YES;
}

- (IOSShortArray *)protectedArray {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (int)protectedArrayOffset {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (BOOL)protectedHasArray {
  return NO;
}

- (JavaNioShortBuffer *)putWithJavaNioShortBuffer:(JavaNioShortBuffer *)buf {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)putWithShortInt:(short int)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)putWithInt:(int)index
                      withShortInt:(short int)c {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)putWithJavaLangShortArray:(IOSShortArray *)src
                                          withInt:(int)off
                                          withInt:(int)len {
  @throw [[[JavaNioReadOnlyBufferException alloc] init] autorelease];
}

- (JavaNioShortBuffer *)slice {
  return [[[JavaNioReadOnlyShortArrayBuffer alloc] initWithInt:[self remaining] withJavaLangShortArray:backingArray_ withInt:offset_ + position__] autorelease];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
