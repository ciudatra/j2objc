//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/BufferFactory.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSByteArray;
@class IOSCharArray;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSShortArray;
@class JavaNioByteBuffer;
@class JavaNioCharBuffer;
@class JavaNioDoubleBuffer;
@class JavaNioFloatBuffer;
@class JavaNioIntBuffer;
@class JavaNioLongBuffer;
@class JavaNioShortBuffer;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"

@interface JavaNioBufferFactory : NSObject {
}

+ (JavaNioByteBuffer *)newByteBufferWithJavaLangByteArray:(IOSByteArray *)array OBJC_METHOD_FAMILY_NONE;
+ (JavaNioByteBuffer *)newByteBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioCharBuffer *)newCharBufferWithJavaLangCharacterArray:(IOSCharArray *)array OBJC_METHOD_FAMILY_NONE;
+ (JavaNioCharBuffer *)newCharBufferWithJavaLangCharSequence:(id<JavaLangCharSequence>)chseq OBJC_METHOD_FAMILY_NONE;
+ (JavaNioCharBuffer *)newCharBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioByteBuffer *)newDirectByteBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioDoubleBuffer *)newDoubleBufferWithJavaLangDoubleArray:(IOSDoubleArray *)array OBJC_METHOD_FAMILY_NONE;
+ (JavaNioDoubleBuffer *)newDoubleBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioFloatBuffer *)newFloatBufferWithJavaLangFloatArray:(IOSFloatArray *)array OBJC_METHOD_FAMILY_NONE;
+ (JavaNioFloatBuffer *)newFloatBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioIntBuffer *)newIntBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioIntBuffer *)newIntBufferWithJavaLangIntegerArray:(IOSIntArray *)array OBJC_METHOD_FAMILY_NONE;
+ (JavaNioLongBuffer *)newLongBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioLongBuffer *)newLongBufferWithJavaLangLongArray:(IOSLongArray *)array OBJC_METHOD_FAMILY_NONE;
+ (JavaNioShortBuffer *)newShortBufferWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE;
+ (JavaNioShortBuffer *)newShortBufferWithJavaLangShortArray:(IOSShortArray *)array OBJC_METHOD_FAMILY_NONE;
- (id)init;
@end
