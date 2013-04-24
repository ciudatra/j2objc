//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Long.java
//
//  Created by retechretech on 13-4-24.
//

#import "IOSCharArray.h"
#import "IOSClass.h"
#import "IOSLongArray.h"
#import "IOSObjectArray.h"
#import "java/lang/Character.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/Long.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/NumberFormatException.h"
#import "java/lang/System.h"

@implementation JavaLangLong

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangLong_TYPE_ name:@"JavaLangLong_TYPE_"]];
  return result;
}

static IOSClass * JavaLangLong_TYPE_;

@synthesize value = value_;

+ (long long int)MAX_VALUE {
  return JavaLangLong_MAX_VALUE;
}

+ (long long int)MIN_VALUE {
  return JavaLangLong_MIN_VALUE;
}

+ (IOSClass *)TYPE {
  return JavaLangLong_TYPE_;
}

+ (int)SIZE {
  return JavaLangLong_SIZE;
}

- (id)initJavaLangLongWithLongInt:(long long int)value {
  if ((self = [super init])) {
    self.value = value;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithLongInt:(long long int)value {
  return [self initJavaLangLongWithLongInt:value];
}

- (id)initWithNSString:(NSString *)string {
  return JreMemDebugAdd([self initJavaLangLongWithLongInt:[JavaLangLong parseLongWithNSString:string]]);
}

- (char)byteValue {
  return (char) value_;
}

- (int)compareToWithId:(JavaLangLong *)object {
  if (object != nil && ![object isKindOfClass:[JavaLangLong class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  if (object == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  return value_ > ((JavaLangLong *) NIL_CHK(object)).value ? 1 : (value_ < ((JavaLangLong *) NIL_CHK(object)).value ? -1 : 0);
}

+ (JavaLangLong *)decodeWithNSString:(NSString *)string {
  if (string == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  int length = [NIL_CHK(string) length], i = 0;
  if (length == 0) {
    @throw [[[JavaLangNumberFormatException alloc] init] autorelease];
  }
  unichar firstDigit = [NIL_CHK(string) charAtWithInt:i];
  BOOL negative = firstDigit == '-';
  if (negative) {
    if (length == 1) {
      @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
    }
    firstDigit = [NIL_CHK(string) charAtWithInt:++i];
  }
  int base = 10;
  if (firstDigit == '0') {
    if (++i == length) {
      return [JavaLangLong valueOfWithLongInt:0LL];
    }
    if ((firstDigit = [NIL_CHK(string) charAtWithInt:i]) == 'x' || firstDigit == 'X') {
      if (i == length) {
        @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
      }
      i++;
      base = 16;
    }
    else {
      base = 8;
    }
  }
  else if (firstDigit == '#') {
    if (i == length) {
      @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
    }
    i++;
    base = 16;
  }
  long long int result = [JavaLangLong parseWithNSString:string withInt:i withInt:base withBOOL:negative];
  return [JavaLangLong valueOfWithLongInt:result];
}

- (double)doubleValue {
  return value_;
}

- (BOOL)isEqual:(id)o {
  return ([o isKindOfClass:[JavaLangLong class]]) && (value_ == ((JavaLangLong *) o).value);
}

- (float)floatValue {
  return value_;
}

+ (JavaLangLong *)getLongWithNSString:(NSString *)string {
  if (string == nil || [NIL_CHK(string) length] == 0) {
    return nil;
  }
  NSString *prop = [JavaLangSystem getPropertyWithNSString:string];
  if (prop == nil) {
    return nil;
  }
  @try {
    return [JavaLangLong decodeWithNSString:prop];
  }
  @catch (JavaLangNumberFormatException *ex) {
    return nil;
  }
}

+ (JavaLangLong *)getLongWithNSString:(NSString *)string
                          withLongInt:(long long int)defaultValue {
  if (string == nil || [NIL_CHK(string) length] == 0) {
    return [JavaLangLong valueOfWithLongInt:defaultValue];
  }
  NSString *prop = [JavaLangSystem getPropertyWithNSString:string];
  if (prop == nil) {
    return [JavaLangLong valueOfWithLongInt:defaultValue];
  }
  @try {
    return [JavaLangLong decodeWithNSString:prop];
  }
  @catch (JavaLangNumberFormatException *ex) {
    return [JavaLangLong valueOfWithLongInt:defaultValue];
  }
}

+ (JavaLangLong *)getLongWithNSString:(NSString *)string
                     withJavaLangLong:(JavaLangLong *)defaultValue {
  if (string == nil || [NIL_CHK(string) length] == 0) {
    return defaultValue;
  }
  NSString *prop = [JavaLangSystem getPropertyWithNSString:string];
  if (prop == nil) {
    return defaultValue;
  }
  @try {
    return [JavaLangLong decodeWithNSString:prop];
  }
  @catch (JavaLangNumberFormatException *ex) {
    return defaultValue;
  }
}

- (NSUInteger)hash {
  return (int) (value_ ^ ((long long) (((unsigned long long) value_) >> 32)));
}

- (int)intValue {
  return (int) value_;
}

- (long long int)longLongValue {
  return value_;
}

+ (long long int)parseLongWithNSString:(NSString *)string {
  return [JavaLangLong parseLongWithNSString:string withInt:10];
}

+ (long long int)parseLongWithNSString:(NSString *)string
                               withInt:(int)radix {
  if (string == nil || radix < JavaLangCharacter_MIN_RADIX || radix > JavaLangCharacter_MAX_RADIX) {
    @throw [[[JavaLangNumberFormatException alloc] init] autorelease];
  }
  int length = [NIL_CHK(string) length], i = 0;
  if (length == 0) {
    @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
  }
  BOOL negative = [NIL_CHK(string) charAtWithInt:i] == '-';
  if (negative && ++i == length) {
    @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
  }
  return [JavaLangLong parseWithNSString:string withInt:i withInt:radix withBOOL:negative];
}

+ (long long int)parseWithNSString:(NSString *)string
                           withInt:(int)offset
                           withInt:(int)radix
                          withBOOL:(BOOL)negative {
  long long int max = (negative ? JavaLangLong_MIN_VALUE : -JavaLangLong_MAX_VALUE) / radix;
  long long int result = 0, length = [NIL_CHK(string) length];
  while (offset < length) {
    int digit = [JavaLangCharacter digitWithUnichar:[NIL_CHK(string) charAtWithInt:offset++] withInt:radix];
    if (digit == -1) {
      @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
    }
    if (max > result) {
      @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
    }
    long long int next = result * radix - digit;
    if (next > result) {
      @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
    }
    result = next;
  }
  if (!negative) {
    result = -result;
    if (result < 0) {
      @throw [[[JavaLangNumberFormatException alloc] initWithNSString:string] autorelease];
    }
  }
  return result;
}

- (short int)shortValue {
  return (short int) value_;
}

+ (NSString *)toBinaryStringWithLongInt:(long long int)l {
  int count = 1;
  long long int j = l;
  if (l < 0) {
    count = 64;
  }
  else {
    while ((j >>= 1) != 0) {
      count++;
    }
  }
  IOSCharArray *buffer = [[[IOSCharArray alloc] initWithLength:count] autorelease];
  do {
    [((IOSCharArray *) NIL_CHK(buffer)) replaceCharAtIndex:--count withChar:(unichar) ((l & 1) + '0')];
    l >>= 1;
  }
  while (count > 0);
  return [NSString stringWithOffset:0 length:(int) [((IOSCharArray *) NIL_CHK(buffer)) count] characters:buffer];
}

+ (NSString *)toHexStringWithLongInt:(long long int)l {
  int count = 1;
  long long int j = l;
  if (l < 0) {
    count = 16;
  }
  else {
    while ((j >>= 4) != 0) {
      count++;
    }
  }
  IOSCharArray *buffer = [[[IOSCharArray alloc] initWithLength:count] autorelease];
  do {
    int t = (int) (l & 15);
    if (t > 9) {
      t = t - 10 + 'a';
    }
    else {
      t += '0';
    }
    [((IOSCharArray *) NIL_CHK(buffer)) replaceCharAtIndex:--count withChar:(unichar) t];
    l >>= 4;
  }
  while (count > 0);
  return [NSString stringWithOffset:0 length:(int) [((IOSCharArray *) NIL_CHK(buffer)) count] characters:buffer];
}

+ (NSString *)toOctalStringWithLongInt:(long long int)l {
  int count = 1;
  long long int j = l;
  if (l < 0) {
    count = 22;
  }
  else {
    while ((j = (long long) (((unsigned long long) j) >> 3)) != 0) {
      count++;
    }
  }
  IOSCharArray *buffer = [[[IOSCharArray alloc] initWithLength:count] autorelease];
  do {
    [((IOSCharArray *) NIL_CHK(buffer)) replaceCharAtIndex:--count withChar:(unichar) ((l & 7) + '0')];
    l = (long long) (((unsigned long long) l) >> 3);
  }
  while (count > 0);
  return [NSString stringWithOffset:0 length:(int) [((IOSCharArray *) NIL_CHK(buffer)) count] characters:buffer];
}

- (NSString *)description {
  return [JavaLangLong toStringWithLongInt:value_];
}

+ (NSString *)toStringWithLongInt:(long long int)l {
  return [JavaLangLong toStringWithLongInt:l withInt:10];
}

+ (NSString *)toStringWithLongInt:(long long int)l
                          withInt:(int)radix {
  if (radix < JavaLangCharacter_MIN_RADIX || radix > JavaLangCharacter_MAX_RADIX) {
    radix = 10;
  }
  if (l == 0) {
    return @"0";
  }
  int count = 2;
  long long int j = l;
  BOOL negative = l < 0;
  if (!negative) {
    count = 1;
    j = -l;
  }
  while ((l /= radix) != 0) {
    count++;
  }
  IOSCharArray *buffer = [[[IOSCharArray alloc] initWithLength:count] autorelease];
  do {
    int ch = 0 - (int) (j % radix);
    if (ch > 9) {
      ch = ch - 10 + 'a';
    }
    else {
      ch += '0';
    }
    [((IOSCharArray *) NIL_CHK(buffer)) replaceCharAtIndex:--count withChar:(unichar) ch];
  }
  while ((j /= radix) != 0);
  if (negative) {
    [((IOSCharArray *) NIL_CHK(buffer)) replaceCharAtIndex:0 withChar:'-'];
  }
  return [NSString stringWithOffset:0 length:(int) [((IOSCharArray *) NIL_CHK(buffer)) count] characters:buffer];
}

+ (JavaLangLong *)valueOfWithNSString:(NSString *)string {
  return [JavaLangLong valueOfWithLongInt:[JavaLangLong parseLongWithNSString:string]];
}

+ (JavaLangLong *)valueOfWithNSString:(NSString *)string
                              withInt:(int)radix {
  return [JavaLangLong valueOfWithLongInt:[JavaLangLong parseLongWithNSString:string withInt:radix]];
}

+ (long long int)highestOneBitWithLongInt:(long long int)lng {
  lng |= (lng >> 1);
  lng |= (lng >> 2);
  lng |= (lng >> 4);
  lng |= (lng >> 8);
  lng |= (lng >> 16);
  lng |= (lng >> 32);
  return (lng & ~((long long) (((unsigned long long) lng) >> 1)));
}

+ (long long int)lowestOneBitWithLongInt:(long long int)lng {
  return (lng & (-lng));
}

+ (int)numberOfLeadingZerosWithLongInt:(long long int)lng {
  lng |= lng >> 1;
  lng |= lng >> 2;
  lng |= lng >> 4;
  lng |= lng >> 8;
  lng |= lng >> 16;
  lng |= lng >> 32;
  return [JavaLangLong bitCountWithLongInt:~lng];
}

+ (int)numberOfTrailingZerosWithLongInt:(long long int)lng {
  return [JavaLangLong bitCountWithLongInt:(lng & -lng) - 1];
}

+ (int)bitCountWithLongInt:(long long int)lng {
  lng = (lng & (long long) 0x5555555555555555LL) + ((lng >> 1) & (long long) 0x5555555555555555LL);
  lng = (lng & (long long) 0x3333333333333333LL) + ((lng >> 2) & (long long) 0x3333333333333333LL);
  int i = (int) (((long long) (((unsigned long long) lng) >> 32)) + lng);
  i = (i & (int) 0x0F0F0F0F) + ((i >> 4) & (int) 0x0F0F0F0F);
  i = (i & (int) 0x00FF00FF) + ((i >> 8) & (int) 0x00FF00FF);
  i = (i & (int) 0x0000FFFF) + ((i >> 16) & (int) 0x0000FFFF);
  return i;
}

+ (long long int)rotateLeftWithLongInt:(long long int)lng
                               withInt:(int)distance {
  if (distance == 0) {
    return lng;
  }
  return ((lng << distance) | ((long long) (((unsigned long long) lng) >> (-distance))));
}

+ (long long int)rotateRightWithLongInt:(long long int)lng
                                withInt:(int)distance {
  if (distance == 0) {
    return lng;
  }
  return (((long long) (((unsigned long long) lng) >> distance)) | (lng << (-distance)));
}

+ (long long int)reverseBytesWithLongInt:(long long int)lng {
  long long int b7 = (long long) (((unsigned long long) lng) >> 56);
  long long int b6 = ((long long) (((unsigned long long) lng) >> 40)) & (long long) 0xFF00LL;
  long long int b5 = ((long long) (((unsigned long long) lng) >> 24)) & (long long) 0xFF0000LL;
  long long int b4 = ((long long) (((unsigned long long) lng) >> 8)) & (long long) 0xFF000000LL;
  long long int b3 = (lng & (long long) 0xFF000000LL) << 8;
  long long int b2 = (lng & (long long) 0xFF0000LL) << 24;
  long long int b1 = (lng & (long long) 0xFF00LL) << 40;
  long long int b0 = lng << 56;
  return (b0 | b1 | b2 | b3 | b4 | b5 | b6 | b7);
}

+ (long long int)reverseWithLongInt:(long long int)lng {
  lng = (lng & (long long) 0x5555555555555555LL) << 1 | (lng >> 1) & (long long) 0x5555555555555555LL;
  lng = (lng & (long long) 0x3333333333333333LL) << 2 | (lng >> 2) & (long long) 0x3333333333333333LL;
  lng = (lng & (long long) 0x0F0F0F0F0F0F0F0FLL) << 4 | (lng >> 4) & (long long) 0x0F0F0F0F0F0F0F0FLL;
  return [JavaLangLong reverseBytesWithLongInt:lng];
}

+ (int)signumWithLongInt:(long long int)lng {
  return (lng == 0 ? 0 : (lng < 0 ? -1 : 1));
}

+ (JavaLangLong *)valueOfWithLongInt:(long long int)lng {
  if (lng < -128 || lng > 127) {
    return [[[JavaLangLong alloc] initWithLongInt:lng] autorelease];
  }
  return ((JavaLangLong *) [((IOSObjectArray *) NIL_CHK([JavaLangLong_valueOfCache CACHE])) objectAtIndex:128 + (int) lng]);
}

+ (void)initialize {
  if (self == [JavaLangLong class]) {
    JreOperatorRetainedAssign(&JavaLangLong_TYPE_, (IOSClass *) [[[[[IOSLongArray alloc] initWithLength:0] autorelease] getClass] getComponentType]);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)getValue:(void *)buffer {
  *((long long int *) buffer) = value_;
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaLangLong *typedCopy = (JavaLangLong *) copy;
  typedCopy.value = value_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

- (const char *)objCType {
  return "q";
}

@end
@implementation JavaLangLong_valueOfCache

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangLong_valueOfCache_CACHE_ name:@"JavaLangLong_valueOfCache_CACHE_"]];
  return result;
}

static IOSObjectArray * JavaLangLong_valueOfCache_CACHE_;

+ (IOSObjectArray *)CACHE {
  return JavaLangLong_valueOfCache_CACHE_;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

+ (void)initialize {
  if (self == [JavaLangLong_valueOfCache class]) {
    JreOperatorRetainedAssign(&JavaLangLong_valueOfCache_CACHE_, [[[IOSObjectArray alloc] initWithLength:256 type:[IOSClass classWithClass:[JavaLangLong class]]] autorelease]);
    {
      for (int i = -128; i <= 127; i++) {
        [((IOSObjectArray *) NIL_CHK(JavaLangLong_valueOfCache_CACHE_)) replaceObjectAtIndex:i + 128 withObject:[[[JavaLangLong alloc] initWithLongInt:i] autorelease]];
      }
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
