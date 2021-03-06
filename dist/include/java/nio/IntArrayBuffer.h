//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/IntArrayBuffer.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSIntArray;
@class JavaNioByteOrder;

#import "JreEmulation.h"
#import "java/nio/IntBuffer.h"

@interface JavaNioIntArrayBuffer : JavaNioIntBuffer {
 @public
  IOSIntArray *backingArray_;
  int offset_;
}

@property (nonatomic, retain) IOSIntArray *backingArray;
@property (nonatomic, assign) int offset;

- (id)initWithJavaLangIntegerArray:(IOSIntArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
withJavaLangIntegerArray:(IOSIntArray *)backingArray
          withInt:(int)offset;
- (int)get;
- (int)getWithInt:(int)index;
- (JavaNioIntBuffer *)getWithJavaLangIntegerArray:(IOSIntArray *)dest
                                          withInt:(int)off
                                          withInt:(int)len;
- (BOOL)isDirect;
- (JavaNioByteOrder *)order;
@end
