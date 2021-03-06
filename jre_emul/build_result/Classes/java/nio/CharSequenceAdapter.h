//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/CharSequenceAdapter.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSCharArray;
@class JavaNioByteOrder;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"
#import "java/nio/CharBuffer.h"

@interface JavaNioCharSequenceAdapter : JavaNioCharBuffer {
 @public
  id<JavaLangCharSequence> sequence_;
}

@property (nonatomic, retain) id<JavaLangCharSequence> sequence;

+ (JavaNioCharSequenceAdapter *)copy__WithJavaNioCharSequenceAdapter:(JavaNioCharSequenceAdapter *)other OBJC_METHOD_FAMILY_NONE;
- (id)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)chseq;
- (JavaNioCharBuffer *)asReadOnlyBuffer;
- (JavaNioCharBuffer *)compact;
- (JavaNioCharBuffer *)duplicate;
- (unichar)get;
- (unichar)getWithInt:(int)index;
- (JavaNioCharBuffer *)getWithJavaLangCharacterArray:(IOSCharArray *)dest
                                             withInt:(int)off
                                             withInt:(int)len;
- (BOOL)isDirect;
- (BOOL)isReadOnly;
- (JavaNioByteOrder *)order;
- (IOSCharArray *)protectedArray;
- (int)protectedArrayOffset;
- (BOOL)protectedHasArray;
- (JavaNioCharBuffer *)putWithUnichar:(unichar)c;
- (JavaNioCharBuffer *)putWithInt:(int)index
                      withUnichar:(unichar)c;
- (JavaNioCharBuffer *)putWithJavaLangCharacterArray:(IOSCharArray *)src
                                             withInt:(int)off
                                             withInt:(int)len;
- (JavaNioCharBuffer *)putWithNSString:(NSString *)src
                               withInt:(int)start
                               withInt:(int)end;
- (JavaNioCharBuffer *)slice;
- (id<JavaLangCharSequence>)subSequenceFrom:(int)start to:(int)end;
@end
