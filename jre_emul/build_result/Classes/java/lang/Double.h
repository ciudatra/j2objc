//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Double.java
//
//  Created by retechretech on 13-4-26.
//

#import "JreEmulation.h"
#import "java/lang/Comparable.h"

#define JavaLangDouble_MAX_VALUE __DBL_MAX__
#define JavaLangDouble_MIN_VALUE __DBL_MIN__
#define JavaLangDouble_NEGATIVE_INFINITY -INFINITY
#define JavaLangDouble_NaN NAN
#define JavaLangDouble_POSITIVE_INFINITY INFINITY
#define JavaLangDouble_SIZE 64

@interface JavaLangDouble : NSNumber < JavaLangComparable > {
 @public
  double value_;
}

@property (nonatomic, assign) double value;

+ (double)MAX_VALUE;
+ (double)MIN_VALUE;
+ (double)NaN;
+ (double)POSITIVE_INFINITY;
+ (double)NEGATIVE_INFINITY;
+ (IOSClass *)TYPE;
+ (int)SIZE;
- (id)initWithDouble:(double)value;
- (id)initWithNSString:(NSString *)string;
- (int)compareToWithId:(JavaLangDouble *)object;
- (char)byteValue;
+ (long long int)doubleToLongBitsWithDouble:(double)value;
+ (long long int)doubleToRawLongBitsWithDouble:(double)value;
- (double)doubleValue;
- (BOOL)isEqual:(id)object;
- (float)floatValue;
- (NSUInteger)hash;
- (int)intValue;
- (BOOL)isInfinite;
+ (BOOL)isInfiniteWithDouble:(double)d;
- (BOOL)isNaN;
+ (BOOL)isNaNWithDouble:(double)d;
+ (double)longBitsToDoubleWithLongInt:(long long int)bits;
- (long long int)longLongValue;
+ (double)parseDoubleWithNSString:(NSString *)string;
- (short int)shortValue;
- (NSString *)description;
+ (NSString *)toStringWithDouble:(double)d;
+ (JavaLangDouble *)valueOfWithNSString:(NSString *)string;
+ (int)compareWithDouble:(double)double1
              withDouble:(double)double2;
+ (JavaLangDouble *)valueOfWithDouble:(double)d;
+ (NSString *)toHexStringWithDouble:(double)d;
@end
