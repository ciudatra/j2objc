//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/Division.java
//
//  Created by retechretech on 13-4-19.
//

@class IOSIntArray;
@class IOSObjectArray;
@class JavaMathBigInteger;

#import "JreEmulation.h"

@interface JavaMathDivision : NSObject {
}

+ (IOSIntArray *)divideWithJavaLangIntegerArray:(IOSIntArray *)quot
                                        withInt:(int)quotLength
                       withJavaLangIntegerArray:(IOSIntArray *)a
                                        withInt:(int)aLength
                       withJavaLangIntegerArray:(IOSIntArray *)b
                                        withInt:(int)bLength;
+ (int)divideArrayByIntWithJavaLangIntegerArray:(IOSIntArray *)dest
                       withJavaLangIntegerArray:(IOSIntArray *)src
                                        withInt:(int)srcLength
                                        withInt:(int)divisor;
+ (int)remainderArrayByIntWithJavaLangIntegerArray:(IOSIntArray *)src
                                           withInt:(int)srcLength
                                           withInt:(int)divisor;
+ (int)remainderWithJavaMathBigInteger:(JavaMathBigInteger *)dividend
                               withInt:(int)divisor;
+ (long long int)divideLongByIntWithLongInt:(long long int)a
                                    withInt:(int)b;
+ (IOSObjectArray *)divideAndRemainderByIntegerWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                                              withInt:(int)divisor
                                                              withInt:(int)divisorSign;
+ (int)multiplyAndSubtractWithJavaLangIntegerArray:(IOSIntArray *)a
                                           withInt:(int)start
                          withJavaLangIntegerArray:(IOSIntArray *)b
                                           withInt:(int)bLen
                                           withInt:(int)c;
+ (JavaMathBigInteger *)gcdBinaryWithJavaMathBigInteger:(JavaMathBigInteger *)op1
                                 withJavaMathBigInteger:(JavaMathBigInteger *)op2;
+ (long long int)gcdBinaryWithLongInt:(long long int)op1
                          withLongInt:(long long int)op2;
+ (JavaMathBigInteger *)modInverseMontgomeryWithJavaMathBigInteger:(JavaMathBigInteger *)a
                                            withJavaMathBigInteger:(JavaMathBigInteger *)p;
+ (int)calcNWithJavaMathBigInteger:(JavaMathBigInteger *)a;
+ (JavaMathBigInteger *)squareAndMultiplyWithJavaMathBigInteger:(JavaMathBigInteger *)x2
                                         withJavaMathBigInteger:(JavaMathBigInteger *)a2
                                         withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                         withJavaMathBigInteger:(JavaMathBigInteger *)modulus
                                                        withInt:(int)n2;
+ (JavaMathBigInteger *)modInverseHarsWithJavaMathBigInteger:(JavaMathBigInteger *)a
                                      withJavaMathBigInteger:(JavaMathBigInteger *)m;
+ (JavaMathBigInteger *)slidingWindowWithJavaMathBigInteger:(JavaMathBigInteger *)x2
                                     withJavaMathBigInteger:(JavaMathBigInteger *)a2
                                     withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                     withJavaMathBigInteger:(JavaMathBigInteger *)modulus
                                                    withInt:(int)n2;
+ (JavaMathBigInteger *)oddModPowWithJavaMathBigInteger:(JavaMathBigInteger *)base
                                 withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                 withJavaMathBigInteger:(JavaMathBigInteger *)modulus;
+ (JavaMathBigInteger *)evenModPowWithJavaMathBigInteger:(JavaMathBigInteger *)base
                                  withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                  withJavaMathBigInteger:(JavaMathBigInteger *)modulus;
+ (JavaMathBigInteger *)pow2ModPowWithJavaMathBigInteger:(JavaMathBigInteger *)base
                                  withJavaMathBigInteger:(JavaMathBigInteger *)exponent
                                                 withInt:(int)j;
+ (void)monReductionWithJavaLangIntegerArray:(IOSIntArray *)res
                      withJavaMathBigInteger:(JavaMathBigInteger *)modulus
                                     withInt:(int)n2;
+ (JavaMathBigInteger *)monProWithJavaMathBigInteger:(JavaMathBigInteger *)a
                              withJavaMathBigInteger:(JavaMathBigInteger *)b
                              withJavaMathBigInteger:(JavaMathBigInteger *)modulus
                                             withInt:(int)n2;
+ (JavaMathBigInteger *)finalSubtractionWithJavaLangIntegerArray:(IOSIntArray *)res
                                          withJavaMathBigInteger:(JavaMathBigInteger *)modulus;
+ (JavaMathBigInteger *)modPow2InverseWithJavaMathBigInteger:(JavaMathBigInteger *)x
                                                     withInt:(int)n;
+ (void)inplaceModPow2WithJavaMathBigInteger:(JavaMathBigInteger *)x
                                     withInt:(int)n;
- (id)init;
@end