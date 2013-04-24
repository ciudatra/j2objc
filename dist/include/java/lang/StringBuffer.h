//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/StringBuffer.java
//
//  Created by retechretech on 13-4-24.
//

@class IOSCharArray;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/lang/Appendable.h"
#import "java/lang/CharSequence.h"

#define JavaLangStringBuffer_INITIAL_CAPACITY 16
#define JavaLangStringBuffer_serialVersionUID 3388685877147921107

@interface JavaLangStringBuffer : NSObject < JavaLangAppendable, JavaIoSerializable, JavaLangCharSequence > {
 @public
  IOSCharArray *value_;
  int count_;
  BOOL shared_;
}

@property (nonatomic, retain) IOSCharArray *value;
@property (nonatomic, assign) int count;
@property (nonatomic, assign) BOOL shared;

+ (int)INITIAL_CAPACITY;
- (id)init;
- (id)initWithInt:(int)capacity;
- (id)initWithNSString:(NSString *)string;
- (id)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)cs;
- (JavaLangStringBuffer *)appendWithBOOL:(BOOL)b;
- (JavaLangStringBuffer *)appendWithUnichar:(unichar)ch;
- (JavaLangStringBuffer *)appendWithDouble:(double)d;
- (JavaLangStringBuffer *)appendWithFloat:(float)f;
- (JavaLangStringBuffer *)appendWithInt:(int)i;
- (JavaLangStringBuffer *)appendWithLongInt:(long long int)l;
- (JavaLangStringBuffer *)appendWithId:(id)obj;
- (JavaLangStringBuffer *)appendWithNSString:(NSString *)string;
- (JavaLangStringBuffer *)appendWithJavaLangStringBuffer:(JavaLangStringBuffer *)sb;
- (JavaLangStringBuffer *)appendWithJavaLangCharacterArray:(IOSCharArray *)chars;
- (JavaLangStringBuffer *)appendWithJavaLangCharacterArray:(IOSCharArray *)chars
                                                   withInt:(int)start
                                                   withInt:(int)length;
- (JavaLangStringBuffer *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)s;
- (JavaLangStringBuffer *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                                 withInt:(int)start
                                                 withInt:(int)end;
- (JavaLangStringBuffer *)appendCodePointWithInt:(int)codePoint;
- (unichar)charAtWithInt:(int)index;
- (JavaLangStringBuffer *)delete__WithInt:(int)start
                                  withInt:(int)end;
- (JavaLangStringBuffer *)deleteCharAtWithInt:(int)index;
- (void)ensureCapacityWithInt:(int)min;
- (void)getCharsWithInt:(int)start
                withInt:(int)end
withJavaLangCharacterArray:(IOSCharArray *)dest
                withInt:(int)destStart;
- (int)indexOfWithNSString:(NSString *)subString
                   withInt:(int)start;
- (JavaLangStringBuffer *)insertWithInt:(int)index
                            withUnichar:(unichar)ch;
- (JavaLangStringBuffer *)insertWithInt:(int)index
                               withBOOL:(BOOL)b;
- (JavaLangStringBuffer *)insertWithInt:(int)index
                                withInt:(int)i;
- (JavaLangStringBuffer *)insertWithInt:(int)index
                            withLongInt:(long long int)l;
- (JavaLangStringBuffer *)insertWithInt:(int)index
                             withDouble:(double)d;
- (JavaLangStringBuffer *)insertWithInt:(int)index
                              withFloat:(float)f;
- (JavaLangStringBuffer *)insertWithInt:(int)index
                                 withId:(id)obj;
- (JavaLangStringBuffer *)insertWithInt:(int)index
                           withNSString:(NSString *)string;
- (JavaLangStringBuffer *)insertWithInt:(int)index
             withJavaLangCharacterArray:(IOSCharArray *)chars;
- (JavaLangStringBuffer *)insertWithInt:(int)index
             withJavaLangCharacterArray:(IOSCharArray *)chars
                                withInt:(int)start
                                withInt:(int)length;
- (JavaLangStringBuffer *)insertWithInt:(int)index
               withJavaLangCharSequence:(id<JavaLangCharSequence>)s;
- (JavaLangStringBuffer *)insertWithInt:(int)index
               withJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                withInt:(int)start
                                withInt:(int)end;
- (JavaLangStringBuffer *)replaceWithInt:(int)start
                                 withInt:(int)end
                            withNSString:(NSString *)string;
- (JavaLangStringBuffer *)reverse;
- (void)enlargeBufferWithInt:(int)min;
- (void)appendNull;
- (int)capacity;
- (int)sequenceLength;
- (void)moveWithInt:(int)size
            withInt:(int)index;
- (void)setCharAtWithInt:(int)index
             withUnichar:(unichar)ch;
- (void)setLengthWithInt:(int)length;
- (NSString *)substringWithInt:(int)start;
- (NSString *)substringWithInt:(int)start
                       withInt:(int)end;
- (NSString *)sequenceDescription;
- (id<JavaLangCharSequence>)subSequenceFrom:(int)start to:(int)end;
- (int)indexOfWithNSString:(NSString *)string;
- (int)lastIndexOfWithNSString:(NSString *)string;
- (int)lastIndexOfWithNSString:(NSString *)subString
                       withInt:(int)start;
- (void)trimToSize;
- (IOSCharArray *)getValue;
@end
