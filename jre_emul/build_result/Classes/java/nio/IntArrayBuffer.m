//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/IntArrayBuffer.java
//
//  Created by retechretech on 13-4-24.
//

#import "IOSIntArray.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/System.h"
#import "java/nio/Buffer.h"
#import "java/nio/BufferUnderflowException.h"
#import "java/nio/ByteOrder.h"
#import "java/nio/IntArrayBuffer.h"
#import "java/nio/IntBuffer.h"

@implementation JavaNioIntArrayBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (IOSIntArray *)backingArray {
  return backingArray_;
}
- (void)setBackingArray:(IOSIntArray *)backingArray {
  JreOperatorRetainedAssign(&backingArray_, backingArray);
}
@synthesize backingArray = backingArray_;
@synthesize offset = offset_;

- (id)initWithJavaLangIntegerArray:(IOSIntArray *)array {
  return JreMemDebugAdd([self initJavaNioIntArrayBufferWithInt:(int) [((IOSIntArray *) NIL_CHK(array)) count] withJavaLangIntegerArray:array withInt:0]);
}

- (id)initWithInt:(int)capacity {
  return JreMemDebugAdd([self initJavaNioIntArrayBufferWithInt:capacity withJavaLangIntegerArray:[[[IOSIntArray alloc] initWithLength:capacity] autorelease] withInt:0]);
}

- (id)initJavaNioIntArrayBufferWithInt:(int)capacity
              withJavaLangIntegerArray:(IOSIntArray *)backingArray
                               withInt:(int)offset {
  if ((self = [super initWithInt:capacity])) {
    self.backingArray = backingArray;
    self.offset = offset;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity
withJavaLangIntegerArray:(IOSIntArray *)backingArray
          withInt:(int)offset {
  return [self initJavaNioIntArrayBufferWithInt:capacity withJavaLangIntegerArray:backingArray withInt:offset];
}

- (int)get {
  if (position__ == limit__) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  return [((IOSIntArray *) NIL_CHK(backingArray_)) intAtIndex:offset_ + position__++];
}

- (int)getWithInt:(int)index {
  if (index < 0 || index >= limit__) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  return [((IOSIntArray *) NIL_CHK(backingArray_)) intAtIndex:offset_ + index];
}

- (JavaNioIntBuffer *)getWithJavaLangIntegerArray:(IOSIntArray *)dest
                                          withInt:(int)off
                                          withInt:(int)len {
  int length = (int) [((IOSIntArray *) NIL_CHK(dest)) count];
  if (off < 0 || len < 0 || (long long int) len + (long long int) off > length) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (len > [self remaining]) {
    @throw [[[JavaNioBufferUnderflowException alloc] init] autorelease];
  }
  [JavaLangSystem arraycopyWithId:backingArray_ withInt:offset_ + position__ withId:dest withInt:off withInt:len];
  position__ += len;
  return self;
}

- (BOOL)isDirect {
  return NO;
}

- (JavaNioByteOrder *)order {
  return [JavaNioByteOrder nativeOrder];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&backingArray_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaNioIntArrayBuffer *typedCopy = (JavaNioIntArrayBuffer *) copy;
  typedCopy.backingArray = backingArray_;
  typedCopy.offset = offset_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:backingArray_ name:@"backingArray"]];
  return result;
}

@end
