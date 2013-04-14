//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ReadOnlyHeapByteBuffer.java
//
//  Created by retechretech on 13-4-14.
//

@class IOSByteArray;
@class JavaNioByteBuffer;

#import "JreEmulation.h"
#import "java/nio/HeapByteBuffer.h"

@interface JavaNioReadOnlyHeapByteBuffer : JavaNioHeapByteBuffer {
}

+ (JavaNioReadOnlyHeapByteBuffer *)copy__WithJavaNioHeapByteBuffer:(JavaNioHeapByteBuffer *)other
                                                           withInt:(int)markOfOther OBJC_METHOD_FAMILY_NONE;
- (id)initWithJavaLangByteArray:(IOSByteArray *)backingArray
                        withInt:(int)capacity
                        withInt:(int)arrayOffset;
- (JavaNioByteBuffer *)asReadOnlyBuffer;
- (JavaNioByteBuffer *)compact;
- (JavaNioByteBuffer *)duplicate;
- (BOOL)isReadOnly;
- (IOSByteArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioByteBuffer *)putWithChar:(char)b;
- (JavaNioByteBuffer *)putWithInt:(int)index
                         withChar:(char)b;
- (JavaNioByteBuffer *)putWithJavaLangByteArray:(IOSByteArray *)src
                                        withInt:(int)off
                                        withInt:(int)len;
- (JavaNioByteBuffer *)putDoubleWithDouble:(double)value;
- (JavaNioByteBuffer *)putDoubleWithInt:(int)index
                             withDouble:(double)value;
- (JavaNioByteBuffer *)putFloatWithFloat:(float)value;
- (JavaNioByteBuffer *)putFloatWithInt:(int)index
                             withFloat:(float)value;
- (JavaNioByteBuffer *)putIntWithInt:(int)value;
- (JavaNioByteBuffer *)putIntWithInt:(int)index
                             withInt:(int)value;
- (JavaNioByteBuffer *)putLongWithInt:(int)index
                          withLongInt:(long long int)value;
- (JavaNioByteBuffer *)putLongWithLongInt:(long long int)value;
- (JavaNioByteBuffer *)putShortWithInt:(int)index
                          withShortInt:(short int)value;
- (JavaNioByteBuffer *)putShortWithShortInt:(short int)value;
- (JavaNioByteBuffer *)putWithJavaNioByteBuffer:(JavaNioByteBuffer *)buf;
- (JavaNioByteBuffer *)slice;
@end
