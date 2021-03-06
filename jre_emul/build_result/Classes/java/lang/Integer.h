//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Integer.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSObjectArray;

#import "JreEmulation.h"
#import "java/lang/Comparable.h"

#define JavaLangInteger_MAX_VALUE 2147483647
#define JavaLangInteger_MIN_VALUE -0x7fffffff - 1
#define JavaLangInteger_SIZE 32

@interface JavaLangInteger : NSNumber < JavaLangComparable > {
 @public
  int value_;
}

@property (nonatomic, assign) int value;

+ (int)MAX_VALUE;
+ (int)MIN_VALUE;
+ (int)SIZE;
+ (IOSClass *)TYPE;
- (id)initWithInt:(int)value;
- (id)initWithNSString:(NSString *)string;
- (char)byteValue;
- (int)compareToWithId:(JavaLangInteger *)object;
+ (JavaLangInteger *)decodeWithNSString:(NSString *)string;
- (double)doubleValue;
- (BOOL)isEqual:(id)o;
- (float)floatValue;
+ (JavaLangInteger *)getIntegerWithNSString:(NSString *)string;
+ (JavaLangInteger *)getIntegerWithNSString:(NSString *)string
                                    withInt:(int)defaultValue;
+ (JavaLangInteger *)getIntegerWithNSString:(NSString *)string
                        withJavaLangInteger:(JavaLangInteger *)defaultValue;
- (NSUInteger)hash;
- (int)intValue;
- (long long int)longLongValue;
+ (int)parseIntWithNSString:(NSString *)string;
+ (int)parseIntWithNSString:(NSString *)string
                    withInt:(int)radix;
+ (int)parseWithNSString:(NSString *)string
                 withInt:(int)offset
                 withInt:(int)radix
                withBOOL:(BOOL)negative;
- (short int)shortValue;
+ (NSString *)toBinaryStringWithInt:(int)i;
+ (NSString *)toHexStringWithInt:(int)i;
+ (NSString *)toOctalStringWithInt:(int)i;
- (NSString *)description;
+ (NSString *)toStringWithInt:(int)value;
+ (NSString *)toStringWithInt:(int)i
                      withInt:(int)radix;
+ (JavaLangInteger *)valueOfWithNSString:(NSString *)string;
+ (JavaLangInteger *)valueOfWithNSString:(NSString *)string
                                 withInt:(int)radix;
+ (int)highestOneBitWithInt:(int)i;
+ (int)lowestOneBitWithInt:(int)i;
+ (int)numberOfLeadingZerosWithInt:(int)i;
+ (int)numberOfTrailingZerosWithInt:(int)i;
+ (int)bitCountWithInt:(int)i;
+ (int)rotateLeftWithInt:(int)i
                 withInt:(int)distance;
+ (int)rotateRightWithInt:(int)i
                  withInt:(int)distance;
+ (int)reverseBytesWithInt:(int)i;
+ (int)reverseWithInt:(int)i;
+ (int)signumWithInt:(int)i;
+ (JavaLangInteger *)valueOfWithInt:(int)i;
@end

@interface JavaLangInteger_valueOfCache : NSObject {
}

+ (IOSObjectArray *)CACHE;
- (id)init;
@end
