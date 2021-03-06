//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/Conversion.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSCharArray.h"
#import "IOSIntArray.h"
#import "java/lang/Character.h"
#import "java/lang/Double.h"
#import "java/lang/Integer.h"
#import "java/lang/Long.h"
#import "java/lang/Math.h"
#import "java/lang/StringBuilder.h"
#import "java/lang/System.h"
#import "java/math/BigInteger.h"
#import "java/math/BitLevel.h"
#import "java/math/Conversion.h"
#import "java/math/Division.h"

@implementation JavaMathConversion

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaMathConversion_digitFitInInt_ name:@"JavaMathConversion_digitFitInInt_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaMathConversion_bigRadices_ name:@"JavaMathConversion_bigRadices_"]];
  return result;
}

static IOSIntArray * JavaMathConversion_digitFitInInt_;
static IOSIntArray * JavaMathConversion_bigRadices_;

+ (IOSIntArray *)digitFitInInt {
  return JavaMathConversion_digitFitInInt_;
}

+ (IOSIntArray *)bigRadices {
  return JavaMathConversion_bigRadices_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (NSString *)bigInteger2StringWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                              withInt:(int)radix {
  int sign = ((JavaMathBigInteger *) NIL_CHK(val)).sign;
  int numberLength = ((JavaMathBigInteger *) NIL_CHK(val)).numberLength;
  IOSIntArray *digits = ((JavaMathBigInteger *) NIL_CHK(val)).digits;
  if (sign == 0) {
    return @"0";
  }
  if (numberLength == 1) {
    int highDigit = [((IOSIntArray *) NIL_CHK(digits)) intAtIndex:numberLength - 1];
    long long int v = highDigit & (long long) 0xFFFFFFFFLL;
    if (sign < 0) {
      v = -v;
    }
    return [JavaLangLong toStringWithLongInt:v withInt:radix];
  }
  if ((radix == 10) || (radix < JavaLangCharacter_MIN_RADIX) || (radix > JavaLangCharacter_MAX_RADIX)) {
    return [((JavaMathBigInteger *) NIL_CHK(val)) description];
  }
  double bitsForRadixDigit;
  bitsForRadixDigit = [JavaLangMath logWithDouble:radix] / [JavaLangMath logWithDouble:2];
  int resLengthInChars = (int) ([[((JavaMathBigInteger *) NIL_CHK(val)) abs] bitLength] / bitsForRadixDigit + ((sign < 0) ? 1 : 0)) + 1;
  IOSCharArray *result = [[[IOSCharArray alloc] initWithLength:resLengthInChars] autorelease];
  int currentChar = resLengthInChars;
  int resDigit;
  if (radix != 16) {
    IOSIntArray *temp = [[[IOSIntArray alloc] initWithLength:numberLength] autorelease];
    [JavaLangSystem arraycopyWithId:digits withInt:0 withId:temp withInt:0 withInt:numberLength];
    int tempLen = numberLength;
    int charsPerInt = [((IOSIntArray *) NIL_CHK(JavaMathConversion_digitFitInInt_)) intAtIndex:radix];
    int i;
    int bigRadix = [((IOSIntArray *) NIL_CHK(JavaMathConversion_bigRadices_)) intAtIndex:radix - 2];
    while (YES) {
      resDigit = [JavaMathDivision divideArrayByIntWithJavaLangIntegerArray:temp withJavaLangIntegerArray:temp withInt:tempLen withInt:bigRadix];
      int previous = currentChar;
      do {
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:[JavaLangCharacter forDigitWithInt:resDigit % radix withInt:radix]];
      }
      while (((resDigit /= radix) != 0) && (currentChar != 0));
      int delta = charsPerInt - previous + currentChar;
      for (i = 0; i < delta && currentChar > 0; i++) {
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'0'];
      }
      for (i = tempLen - 1; (i > 0) && ([((IOSIntArray *) NIL_CHK(temp)) intAtIndex:i] == 0); i--) {
        ;
      }
      tempLen = i + 1;
      if ((tempLen == 1) && ([((IOSIntArray *) NIL_CHK(temp)) intAtIndex:0] == 0)) {
        break;
      }
    }
  }
  else {
    for (int i = 0; i < numberLength; i++) {
      for (int j = 0; (j < 8) && (currentChar > 0); j++) {
        resDigit = [((IOSIntArray *) NIL_CHK(digits)) intAtIndex:i] >> (j << 2) & (int) 0xf;
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:[JavaLangCharacter forDigitWithInt:resDigit withInt:16]];
      }
    }
  }
  while ([((IOSCharArray *) NIL_CHK(result)) charAtIndex:currentChar] == '0') {
    currentChar++;
  }
  if (sign == -1) {
    [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'-'];
  }
  return [NSString stringWithCharacters:result offset:currentChar length:resLengthInChars - currentChar];
}

+ (NSString *)toDecimalScaledStringWithJavaMathBigInteger:(JavaMathBigInteger *)val
                                                  withInt:(int)scale_ {
  int sign = ((JavaMathBigInteger *) NIL_CHK(val)).sign;
  int numberLength = ((JavaMathBigInteger *) NIL_CHK(val)).numberLength;
  IOSIntArray *digits = ((JavaMathBigInteger *) NIL_CHK(val)).digits;
  int resLengthInChars;
  int currentChar;
  IOSCharArray *result;
  if (sign == 0) {
    switch (scale_) {
      JavaLangStringBuilder *result1;
      case 0:
      return @"0";
      case 1:
      return @"0.0";
      case 2:
      return @"0.00";
      case 3:
      return @"0.000";
      case 4:
      return @"0.0000";
      case 5:
      return @"0.00000";
      case 6:
      return @"0.000000";
      default:
      result1 = [[[JavaLangStringBuilder alloc] init] autorelease];
      if (scale_ < 0) {
        [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithNSString:@"0E+"];
      }
      else {
        [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithNSString:@"0E"];
      }
      [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithInt:-scale_];
      return [((JavaLangStringBuilder *) NIL_CHK(result1)) description];
    }
  }
  resLengthInChars = numberLength * 10 + 1 + 7;
  result = [[[IOSCharArray alloc] initWithLength:resLengthInChars + 1] autorelease];
  currentChar = resLengthInChars;
  if (numberLength == 1) {
    int highDigit = [((IOSIntArray *) NIL_CHK(digits)) intAtIndex:0];
    if (highDigit < 0) {
      long long int v = highDigit & (long long) 0xFFFFFFFFLL;
      do {
        long long int prev = v;
        v /= 10;
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:(unichar) ((int) 0x0030 + ((int) (prev - v * 10)))];
      }
      while (v != 0);
    }
    else {
      int v = highDigit;
      do {
        int prev = v;
        v /= 10;
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:(unichar) ((int) 0x0030 + (prev - v * 10))];
      }
      while (v != 0);
    }
  }
  else {
    IOSIntArray *temp = [[[IOSIntArray alloc] initWithLength:numberLength] autorelease];
    int tempLen = numberLength;
    [JavaLangSystem arraycopyWithId:digits withInt:0 withId:temp withInt:0 withInt:tempLen];
    while (YES) {
      long long int result11 = 0;
      for (int i1 = tempLen - 1; i1 >= 0; i1--) {
        long long int temp1 = (result11 << 32) + ([((IOSIntArray *) NIL_CHK(temp)) intAtIndex:i1] & (long long) 0xFFFFFFFFLL);
        long long int res = [JavaMathConversion divideLongByBillionWithLongInt:temp1];
        [((IOSIntArray *) NIL_CHK(temp)) replaceIntAtIndex:i1 withInt:(int) res];
        result11 = (int) (res >> 32);
      }
      int resDigit = (int) result11;
      int previous = currentChar;
      do {
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:(unichar) ((int) 0x0030 + (resDigit % 10))];
      }
      while (((resDigit /= 10) != 0) && (currentChar != 0));
      int delta = 9 - previous + currentChar;
      for (int i = 0; (i < delta) && (currentChar > 0); i++) {
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'0'];
      }
      int j = tempLen - 1;
      for (; [((IOSIntArray *) NIL_CHK(temp)) intAtIndex:j] == 0; j--) {
        if (j == 0) {
          goto break_BIG_LOOP;
        }
      }
      tempLen = j + 1;
    }
    break_BIG_LOOP: ;
    while ([((IOSCharArray *) NIL_CHK(result)) charAtIndex:currentChar] == '0') {
      currentChar++;
    }
  }
  BOOL negNumber = (sign < 0);
  int exponent = resLengthInChars - currentChar - scale_ - 1;
  if (scale_ == 0) {
    if (negNumber) {
      [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'-'];
    }
    return [NSString stringWithCharacters:result offset:currentChar length:resLengthInChars - currentChar];
  }
  if ((scale_ > 0) && (exponent >= -6)) {
    if (exponent >= 0) {
      int insertPoint = currentChar + exponent;
      for (int j = resLengthInChars - 1; j >= insertPoint; j--) {
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:j + 1 withChar:[((IOSCharArray *) NIL_CHK(result)) charAtIndex:j]];
      }
      [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:++insertPoint withChar:'.'];
      if (negNumber) {
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'-'];
      }
      return [NSString stringWithCharacters:result offset:currentChar length:resLengthInChars - currentChar + 1];
    }
    for (int j = 2; j < -exponent + 1; j++) {
      [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'0'];
    }
    [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'.'];
    [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'0'];
    if (negNumber) {
      [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'-'];
    }
    return [NSString stringWithCharacters:result offset:currentChar length:resLengthInChars - currentChar];
  }
  int startPoint = currentChar + 1;
  int endPoint = resLengthInChars;
  JavaLangStringBuilder *result1 = [[[JavaLangStringBuilder alloc] initWithInt:16 + endPoint - startPoint] autorelease];
  if (negNumber) {
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:'-'];
  }
  if (endPoint - startPoint >= 1) {
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:[((IOSCharArray *) NIL_CHK(result)) charAtIndex:currentChar]];
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:'.'];
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithJavaLangCharacterArray:result withInt:currentChar + 1 withInt:resLengthInChars - currentChar - 1];
  }
  else {
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithJavaLangCharacterArray:result withInt:currentChar withInt:resLengthInChars - currentChar];
  }
  [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:'E'];
  if (exponent > 0) {
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:'+'];
  }
  [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithNSString:[JavaLangInteger toStringWithInt:exponent]];
  return [((JavaLangStringBuilder *) NIL_CHK(result1)) description];
}

+ (NSString *)toDecimalScaledStringWithLongInt:(long long int)value
                                       withInt:(int)scale_ {
  int resLengthInChars;
  int currentChar;
  IOSCharArray *result;
  BOOL negNumber = value < 0;
  if (negNumber) {
    value = -value;
  }
  if (value == 0) {
    switch (scale_) {
      JavaLangStringBuilder *result1;
      case 0:
      return @"0";
      case 1:
      return @"0.0";
      case 2:
      return @"0.00";
      case 3:
      return @"0.000";
      case 4:
      return @"0.0000";
      case 5:
      return @"0.00000";
      case 6:
      return @"0.000000";
      default:
      result1 = [[[JavaLangStringBuilder alloc] init] autorelease];
      if (scale_ < 0) {
        [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithNSString:@"0E+"];
      }
      else {
        [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithNSString:@"0E"];
      }
      [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithNSString:(scale_ == JavaLangInteger_MIN_VALUE) ? @"2147483648" : [JavaLangInteger toStringWithInt:-scale_]];
      return [((JavaLangStringBuilder *) NIL_CHK(result1)) description];
    }
  }
  resLengthInChars = 18;
  result = [[[IOSCharArray alloc] initWithLength:resLengthInChars + 1] autorelease];
  currentChar = resLengthInChars;
  long long int v = value;
  do {
    long long int prev = v;
    v /= 10;
    [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:(unichar) ((int) 0x0030 + (prev - v * 10))];
  }
  while (v != 0);
  long long int exponent = (long long int) resLengthInChars - (long long int) currentChar - scale_ - 1LL;
  if (scale_ == 0) {
    if (negNumber) {
      [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'-'];
    }
    return [NSString stringWithCharacters:result offset:currentChar length:resLengthInChars - currentChar];
  }
  if (scale_ > 0 && exponent >= -6) {
    if (exponent >= 0) {
      int insertPoint = currentChar + (int) exponent;
      for (int j = resLengthInChars - 1; j >= insertPoint; j--) {
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:j + 1 withChar:[((IOSCharArray *) NIL_CHK(result)) charAtIndex:j]];
      }
      [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:++insertPoint withChar:'.'];
      if (negNumber) {
        [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'-'];
      }
      return [NSString stringWithCharacters:result offset:currentChar length:resLengthInChars - currentChar + 1];
    }
    for (int j = 2; j < -exponent + 1; j++) {
      [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'0'];
    }
    [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'.'];
    [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'0'];
    if (negNumber) {
      [((IOSCharArray *) NIL_CHK(result)) replaceCharAtIndex:--currentChar withChar:'-'];
    }
    return [NSString stringWithCharacters:result offset:currentChar length:resLengthInChars - currentChar];
  }
  int startPoint = currentChar + 1;
  int endPoint = resLengthInChars;
  JavaLangStringBuilder *result1 = [[[JavaLangStringBuilder alloc] initWithInt:16 + endPoint - startPoint] autorelease];
  if (negNumber) {
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:'-'];
  }
  if (endPoint - startPoint >= 1) {
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:[((IOSCharArray *) NIL_CHK(result)) charAtIndex:currentChar]];
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:'.'];
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithJavaLangCharacterArray:result withInt:currentChar + 1 withInt:resLengthInChars - currentChar - 1];
  }
  else {
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithJavaLangCharacterArray:result withInt:currentChar withInt:resLengthInChars - currentChar];
  }
  [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:'E'];
  if (exponent > 0) {
    [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithUnichar:'+'];
  }
  [((JavaLangStringBuilder *) NIL_CHK(result1)) appendWithNSString:[JavaLangLong toStringWithLongInt:exponent]];
  return [((JavaLangStringBuilder *) NIL_CHK(result1)) description];
}

+ (long long int)divideLongByBillionWithLongInt:(long long int)a {
  long long int quot;
  long long int rem;
  if (a >= 0) {
    long long int bLong = 1000000000LL;
    quot = (a / bLong);
    rem = (a % bLong);
  }
  else {
    long long int aPos = (long long) (((unsigned long long) a) >> 1);
    long long int bPos = (long long) (((unsigned long long) 1000000000LL) >> 1);
    quot = aPos / bPos;
    rem = aPos % bPos;
    rem = (rem << 1) + (a & 1);
  }
  return ((rem << 32) | (quot & (long long) 0xFFFFFFFFLL));
}

+ (double)bigInteger2DoubleWithJavaMathBigInteger:(JavaMathBigInteger *)val {
  if ((((JavaMathBigInteger *) NIL_CHK(val)).numberLength < 2) || ((((JavaMathBigInteger *) NIL_CHK(val)).numberLength == 2) && ([((IOSIntArray *) NIL_CHK(val.digits)) intAtIndex:1] > 0))) {
    return [((JavaMathBigInteger *) NIL_CHK(val)) longValue];
  }
  if (((JavaMathBigInteger *) NIL_CHK(val)).numberLength > 32) {
    return ((((JavaMathBigInteger *) NIL_CHK(val)).sign > 0) ? JavaLangDouble_POSITIVE_INFINITY : JavaLangDouble_NEGATIVE_INFINITY);
  }
  int bitLen = [[((JavaMathBigInteger *) NIL_CHK(val)) abs] bitLength];
  long long int exponent = bitLen - 1;
  int delta = bitLen - 54;
  long long int lVal = [[[((JavaMathBigInteger *) NIL_CHK(val)) abs] shiftRightWithInt:delta] longValue];
  long long int mantissa = lVal & (long long) 0x1FFFFFFFFFFFFFLL;
  if (exponent == 1023) {
    if (mantissa == 0X1FFFFFFFFFFFFFLL) {
      return ((((JavaMathBigInteger *) NIL_CHK(val)).sign > 0) ? JavaLangDouble_POSITIVE_INFINITY : JavaLangDouble_NEGATIVE_INFINITY);
    }
    if (mantissa == (long long) 0x1FFFFFFFFFFFFELL) {
      return ((((JavaMathBigInteger *) NIL_CHK(val)).sign > 0) ? JavaLangDouble_MAX_VALUE : -JavaLangDouble_MAX_VALUE);
    }
  }
  if (((mantissa & 1) == 1) && (((mantissa & 2) == 2) || [JavaMathBitLevel nonZeroDroppedBitsWithInt:delta withJavaLangIntegerArray:((JavaMathBigInteger *) NIL_CHK(val)).digits])) {
    mantissa += 2;
  }
  mantissa >>= 1;
  long long int resSign = (((JavaMathBigInteger *) NIL_CHK(val)).sign < 0) ? -0x7fffffffffffffffLL - 1 : 0;
  exponent = ((1023 + exponent) << 52) & (long long) 0x7FF0000000000000LL;
  long long int result = resSign | exponent | mantissa;
  return [JavaLangDouble longBitsToDoubleWithLongInt:result];
}

+ (void)initialize {
  if (self == [JavaMathConversion class]) {
    JreOperatorRetainedAssign(&JavaMathConversion_digitFitInInt_, [IOSIntArray arrayWithInts:(int[]){ -1, -1, 31, 19, 15, 13, 11, 11, 10, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5 } count:37]);
    JreOperatorRetainedAssign(&JavaMathConversion_bigRadices_, [IOSIntArray arrayWithInts:(int[]){ -0x7fffffff - 1, 1162261467, 1073741824, 1220703125, 362797056, 1977326743, 1073741824, 387420489, 1000000000, 214358881, 429981696, 815730721, 1475789056, 170859375, 268435456, 410338673, 612220032, 893871739, 1280000000, 1801088541, 113379904, 148035889, 191102976, 244140625, 308915776, 387420489, 481890304, 594823321, 729000000, 887503681, 1073741824, 1291467969, 1544804416, 1838265625, 60466176 } count:35]);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
