//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/math/src/main/java/java/math/BigInteger.java
//
//  Created by retechretech on 13-3-16.
//

@class IOSByteArray;
@class IOSIntArray;
@class IOSObjectArray;
@class JavaUtilRandom;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/lang/Comparable.h"

#define JavaMathBigInteger_EQUALS 0
#define JavaMathBigInteger_GREATER 1
#define JavaMathBigInteger_LESS -1
#define JavaMathBigInteger_serialVersionUID -8287574255936472291

@interface JavaMathBigInteger : NSNumber < JavaLangComparable, JavaIoSerializable > {
 @public
  IOSIntArray *digits_;
  int numberLength_;
  int sign_;
  int firstNonzeroDigit_;
  int signum__;
  IOSByteArray *magnitude_;
  int hashCode__;
}

@property (nonatomic, retain) IOSIntArray *digits;
@property (nonatomic, assign) int numberLength;
@property (nonatomic, assign) int sign;
@property (nonatomic, assign) int firstNonzeroDigit;
@property (nonatomic, assign) int signum_;
@property (nonatomic, retain) IOSByteArray *magnitude;
@property (nonatomic, assign) int hashCode_;

+ (JavaMathBigInteger *)ZERO;
+ (JavaMathBigInteger *)ONE;
+ (JavaMathBigInteger *)TEN;
+ (JavaMathBigInteger *)MINUS_ONE;
+ (int)EQUALS;
+ (int)GREATER;
+ (int)LESS;
+ (IOSObjectArray *)SMALL_VALUES;
+ (IOSObjectArray *)TWO_POWS;
- (id)initWithInt:(int)numBits
withJavaUtilRandom:(JavaUtilRandom *)rnd;
- (id)initWithInt:(int)bitLength
          withInt:(int)certainty
withJavaUtilRandom:(JavaUtilRandom *)rnd;
- (id)initWithNSString:(NSString *)val;
- (id)initWithNSString:(NSString *)val
               withInt:(int)radix;
- (id)initWithInt:(int)signum
withJavaLangByteArray:(IOSByteArray *)magnitude;
- (id)initWithJavaLangByteArray:(IOSByteArray *)val;
- (id)initWithInt:(int)sign
          withInt:(int)value;
- (id)initWithInt:(int)sign
          withInt:(int)numberLength
withJavaLangIntegerArray:(IOSIntArray *)digits;
- (id)initWithInt:(int)sign
      withLongInt:(long long int)val;
- (id)initWithInt:(int)signum
withJavaLangIntegerArray:(IOSIntArray *)digits;
+ (JavaMathBigInteger *)valueOfWithLongInt:(long long int)val;
- (IOSByteArray *)toByteArray;
+ (void)setFromStringWithJavaMathBigInteger:(JavaMathBigInteger *)bi
                               withNSString:(NSString *)val
                                    withInt:(int)radix;
- (JavaMathBigInteger *)abs;
- (JavaMathBigInteger *)negate;
- (JavaMathBigInteger *)addWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (JavaMathBigInteger *)subtractWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (int)signum;
- (JavaMathBigInteger *)shiftRightWithInt:(int)n;
- (JavaMathBigInteger *)shiftLeftWithInt:(int)n;
- (JavaMathBigInteger *)shiftLeftOneBit;
- (int)bitLength;
- (BOOL)testBitWithInt:(int)n;
- (JavaMathBigInteger *)setBitWithInt:(int)n;
- (JavaMathBigInteger *)clearBitWithInt:(int)n;
- (JavaMathBigInteger *)flipBitWithInt:(int)n;
- (int)getLowestSetBit;
- (int)bitCount;
- (JavaMathBigInteger *)not__;
- (JavaMathBigInteger *)andWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (JavaMathBigInteger *)orWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (JavaMathBigInteger *)xorWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (JavaMathBigInteger *)andNotWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (int)intValue;
- (long long int)longValue;
- (float)floatValue;
- (double)doubleValue;
- (int)compareToWithId:(JavaMathBigInteger *)val;
- (JavaMathBigInteger *)minWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (JavaMathBigInteger *)maxWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (NSUInteger)hash;
- (BOOL)isEqual:(id)x;
- (BOOL)equalsArraysWithJavaLangIntegerArray:(IOSIntArray *)b;
- (NSString *)description;
- (NSString *)toStringWithInt:(int)radix;
- (JavaMathBigInteger *)gcdWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (JavaMathBigInteger *)multiplyWithJavaMathBigInteger:(JavaMathBigInteger *)val;
- (JavaMathBigInteger *)powWithInt:(int)exp;
- (IOSObjectArray *)divideAndRemainderWithJavaMathBigInteger:(JavaMathBigInteger *)divisor;
- (JavaMathBigInteger *)divideWithJavaMathBigInteger:(JavaMathBigInteger *)divisor;
- (JavaMathBigInteger *)remainderWithJavaMathBigInteger:(JavaMathBigInteger *)divisor;
- (JavaMathBigInteger *)modInverseWithJavaMathBigInteger:(JavaMathBigInteger *)m;
- (JavaMathBigInteger *)modPowWithJavaMathBigInteger:(JavaMathBigInteger *)exponent
                              withJavaMathBigInteger:(JavaMathBigInteger *)m;
- (JavaMathBigInteger *)modWithJavaMathBigInteger:(JavaMathBigInteger *)m;
- (BOOL)isProbablePrimeWithInt:(int)certainty;
- (JavaMathBigInteger *)nextProbablePrime;
+ (JavaMathBigInteger *)probablePrimeWithInt:(int)bitLength
                          withJavaUtilRandom:(JavaUtilRandom *)rnd;
- (void)cutOffLeadingZeroes;
- (BOOL)isOne;
- (void)putBytesPositiveToIntegersWithJavaLangByteArray:(IOSByteArray *)byteValues;
- (void)putBytesNegativeToIntegersWithJavaLangByteArray:(IOSByteArray *)byteValues;
- (int)getFirstNonzeroDigit;
- (JavaMathBigInteger *)copy__ OBJC_METHOD_FAMILY_NONE;
- (void)unCache;
+ (JavaMathBigInteger *)getPowerOfTwoWithInt:(int)exp;
@end
