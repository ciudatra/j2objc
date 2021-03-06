//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/StringBuilder.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSCharArray;
@class JavaLangStringBuffer;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/lang/Appendable.h"
#import "java/lang/CharSequence.h"

#define JavaLangStringBuilder_INITIAL_CAPACITY 16
#define JavaLangStringBuilder_serialVersionUID 4383685877147921099

@interface JavaLangStringBuilder : NSObject < JavaLangAppendable, JavaLangCharSequence, JavaIoSerializable > {
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
- (id)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)seq;
- (id)initWithNSString:(NSString *)str;
- (JavaLangStringBuilder *)appendWithBOOL:(BOOL)b;
- (JavaLangStringBuilder *)appendWithUnichar:(unichar)c;
- (JavaLangStringBuilder *)appendWithInt:(int)i;
- (JavaLangStringBuilder *)appendWithLongInt:(long long int)lng;
- (JavaLangStringBuilder *)appendWithFloat:(float)f;
- (JavaLangStringBuilder *)appendWithDouble:(double)d;
- (JavaLangStringBuilder *)appendWithId:(id)obj;
- (JavaLangStringBuilder *)appendWithNSString:(NSString *)string;
- (JavaLangStringBuilder *)appendWithJavaLangStringBuffer:(JavaLangStringBuffer *)sb;
- (JavaLangStringBuilder *)appendWithJavaLangCharacterArray:(IOSCharArray *)ch;
- (JavaLangStringBuilder *)appendWithJavaLangCharacterArray:(IOSCharArray *)str
                                                    withInt:(int)offset
                                                    withInt:(int)len;
- (JavaLangStringBuilder *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq;
- (JavaLangStringBuilder *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                                  withInt:(int)start
                                                  withInt:(int)end;
- (JavaLangStringBuilder *)appendCodePointWithInt:(int)codePoint;
- (JavaLangStringBuilder *)delete__WithInt:(int)start
                                   withInt:(int)end;
- (JavaLangStringBuilder *)deleteCharAtWithInt:(int)index;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                                withBOOL:(BOOL)b;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                             withUnichar:(unichar)c;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                                 withInt:(int)i;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                             withLongInt:(long long int)l;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                               withFloat:(float)f;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                              withDouble:(double)d;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                                  withId:(id)obj;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                            withNSString:(NSString *)str;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
              withJavaLangCharacterArray:(IOSCharArray *)ch;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
              withJavaLangCharacterArray:(IOSCharArray *)str
                                 withInt:(int)strOffset
                                 withInt:(int)strLen;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                withJavaLangCharSequence:(id<JavaLangCharSequence>)s;
- (JavaLangStringBuilder *)insertWithInt:(int)offset
                withJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                 withInt:(int)start
                                 withInt:(int)end;
- (JavaLangStringBuilder *)replaceWithInt:(int)start
                                  withInt:(int)end
                             withNSString:(NSString *)str;
- (JavaLangStringBuilder *)reverse;
- (void)enlargeBufferWithInt:(int)min;
- (void)appendNull;
- (void)append0WithJavaLangCharacterArray:(IOSCharArray *)chars;
- (void)append0WithJavaLangCharacterArray:(IOSCharArray *)chars
                                  withInt:(int)offset
                                  withInt:(int)length;
- (void)append0WithUnichar:(unichar)ch;
- (void)append0WithJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                withInt:(int)start
                                withInt:(int)end;
- (int)capacity;
- (unichar)charAtWithInt:(int)index;
- (void)ensureCapacityWithInt:(int)min;
- (void)getCharsWithInt:(int)start
                withInt:(int)end
withJavaLangCharacterArray:(IOSCharArray *)dest
                withInt:(int)destStart;
- (void)insert0WithInt:(int)index
withJavaLangCharacterArray:(IOSCharArray *)chars;
- (void)insert0WithInt:(int)index
withJavaLangCharacterArray:(IOSCharArray *)chars
               withInt:(int)start
               withInt:(int)length;
- (void)insert0WithInt:(int)index
           withUnichar:(unichar)ch;
- (void)insert0WithInt:(int)index
          withNSString:(NSString *)string;
- (void)insert0WithInt:(int)index
withJavaLangCharSequence:(id<JavaLangCharSequence>)s
               withInt:(int)start
               withInt:(int)end;
- (int)sequenceLength;
- (void)moveWithInt:(int)size
            withInt:(int)index;
- (void)replace0WithInt:(int)start
                withInt:(int)end
           withNSString:(NSString *)string;
- (void)reverse0;
- (void)setCharAtWithInt:(int)index
             withUnichar:(unichar)ch;
- (void)setLengthWithInt:(int)length;
- (NSString *)substringWithInt:(int)start;
- (NSString *)substringWithInt:(int)start
                       withInt:(int)end;
- (NSString *)sequenceDescription;
- (id<JavaLangCharSequence>)subSequenceFrom:(int)start to:(int)end;
- (int)indexOfWithNSString:(NSString *)string;
- (int)indexOfWithNSString:(NSString *)subString
                   withInt:(int)start;
- (int)lastIndexOfWithNSString:(NSString *)string;
- (int)lastIndexOfWithNSString:(NSString *)subString
                       withInt:(int)start;
- (void)trimToSize;
- (IOSCharArray *)getValue;
@end
