//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadWriteShortArrayBuffer.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSShortArray;
@class JavaNioShortBuffer;

#import "JreEmulation.h"
#import "java/nio/ShortArrayBuffer.h"

@interface JavaNioReadWriteShortArrayBuffer : JavaNioShortArrayBuffer {
}

+ (JavaNioReadWriteShortArrayBuffer *)copy__WithJavaNioShortArrayBuffer:(JavaNioShortArrayBuffer *)other
                                                                withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithJavaLangShortArray:(IOSShortArray *)array;
- (id)initWithInt:(int)capacity;
- (id)initWithInt:(int)capacity
withJavaLangShortArray:(IOSShortArray *)backingArray
          withInt:(int)arrayOffset;
- (JavaNioShortBuffer *)asReadOnlyBuffer;
- (JavaNioShortBuffer *)compact;
- (JavaNioShortBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSShortArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioShortBuffer *)putWithShortInt:(short int)c;
- (JavaNioShortBuffer *)putWithInt:(int)index
                      withShortInt:(short int)c;
- (JavaNioShortBuffer *)putWithJavaLangShortArray:(IOSShortArray *)src
                                          withInt:(int)off
                                          withInt:(int)len;
- (JavaNioShortBuffer *)slice;
@end
