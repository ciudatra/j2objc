//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/math/src/main/java/java/math/Primality.java
//
//  Created by retechretech on 13-3-16.
//

@class IOSIntArray;
@class IOSObjectArray;
@class JavaMathBigInteger;
@class JavaUtilRandom;

#import "JreEmulation.h"

@interface JavaMathPrimality : NSObject {
}

- (id)init;
+ (IOSIntArray *)primes;
+ (IOSObjectArray *)BIprimes;
+ (IOSIntArray *)BITS;
+ (IOSObjectArray *)offsetPrimes;
+ (JavaMathBigInteger *)nextProbablePrimeWithJavaMathBigInteger:(JavaMathBigInteger *)n;
+ (JavaMathBigInteger *)consBigIntegerWithInt:(int)bitLength
                                      withInt:(int)certainty
                           withJavaUtilRandom:(JavaUtilRandom *)rnd;
+ (BOOL)isProbablePrimeWithJavaMathBigInteger:(JavaMathBigInteger *)n
                                      withInt:(int)certainty;
+ (BOOL)millerRabinWithJavaMathBigInteger:(JavaMathBigInteger *)n
                                  withInt:(int)t;
@end
