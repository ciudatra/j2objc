//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/math/src/main/java/java/math/RoundingMode.java
//
//  Created by retechretech on 13-4-26.
//

#import "java/lang/IllegalArgumentException.h"
#import "java/math/BigDecimal.h"
#import "java/math/RoundingMode.h"


static JavaMathRoundingModeEnum *JavaMathRoundingModeEnum_UP;
static JavaMathRoundingModeEnum *JavaMathRoundingModeEnum_DOWN;
static JavaMathRoundingModeEnum *JavaMathRoundingModeEnum_CEILING;
static JavaMathRoundingModeEnum *JavaMathRoundingModeEnum_FLOOR;
static JavaMathRoundingModeEnum *JavaMathRoundingModeEnum_HALF_UP;
static JavaMathRoundingModeEnum *JavaMathRoundingModeEnum_HALF_DOWN;
static JavaMathRoundingModeEnum *JavaMathRoundingModeEnum_HALF_EVEN;
static JavaMathRoundingModeEnum *JavaMathRoundingModeEnum_UNNECESSARY;
IOSObjectArray *JavaMathRoundingModeEnum_values;

@implementation JavaMathRoundingModeEnum

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaMathRoundingModeEnum_values name:@"enumValues"]];
  return result;
}

+ (JavaMathRoundingModeEnum *)UP {
  return JavaMathRoundingModeEnum_UP;
}
+ (JavaMathRoundingModeEnum *)DOWN {
  return JavaMathRoundingModeEnum_DOWN;
}
+ (JavaMathRoundingModeEnum *)CEILING {
  return JavaMathRoundingModeEnum_CEILING;
}
+ (JavaMathRoundingModeEnum *)FLOOR {
  return JavaMathRoundingModeEnum_FLOOR;
}
+ (JavaMathRoundingModeEnum *)HALF_UP {
  return JavaMathRoundingModeEnum_HALF_UP;
}
+ (JavaMathRoundingModeEnum *)HALF_DOWN {
  return JavaMathRoundingModeEnum_HALF_DOWN;
}
+ (JavaMathRoundingModeEnum *)HALF_EVEN {
  return JavaMathRoundingModeEnum_HALF_EVEN;
}
+ (JavaMathRoundingModeEnum *)UNNECESSARY {
  return JavaMathRoundingModeEnum_UNNECESSARY;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

@synthesize bigDecimalRM = bigDecimalRM_;

- (id)initWithInt:(int)rm
     withNSString:(NSString *)name
          withInt:(int)ordinal {
  if ((self = [super initWithNSString:name withInt:ordinal])) {
    bigDecimalRM_ = rm;
    JreMemDebugAdd(self);
  }
  return self;
}

+ (JavaMathRoundingModeEnum *)valueOfWithInt:(int)mode {
  switch (mode) {
    case JavaMathBigDecimal_ROUND_CEILING:
    return JavaMathRoundingModeEnum_CEILING;
    case JavaMathBigDecimal_ROUND_DOWN:
    return JavaMathRoundingModeEnum_DOWN;
    case JavaMathBigDecimal_ROUND_FLOOR:
    return JavaMathRoundingModeEnum_FLOOR;
    case JavaMathBigDecimal_ROUND_HALF_DOWN:
    return JavaMathRoundingModeEnum_HALF_DOWN;
    case JavaMathBigDecimal_ROUND_HALF_EVEN:
    return JavaMathRoundingModeEnum_HALF_EVEN;
    case JavaMathBigDecimal_ROUND_HALF_UP:
    return JavaMathRoundingModeEnum_HALF_UP;
    case JavaMathBigDecimal_ROUND_UNNECESSARY:
    return JavaMathRoundingModeEnum_UNNECESSARY;
    case JavaMathBigDecimal_ROUND_UP:
    return JavaMathRoundingModeEnum_UP;
    default:
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"Invalid rounding mode"] autorelease];
  }
}

+ (void)initialize {
  if (self == [JavaMathRoundingModeEnum class]) {
    JavaMathRoundingModeEnum_UP = [[JavaMathRoundingModeEnum alloc] initWithInt:JavaMathBigDecimal_ROUND_UP withNSString:@"JavaMathRoundingMode_UP" withInt:0];
    JavaMathRoundingModeEnum_DOWN = [[JavaMathRoundingModeEnum alloc] initWithInt:JavaMathBigDecimal_ROUND_DOWN withNSString:@"JavaMathRoundingMode_DOWN" withInt:1];
    JavaMathRoundingModeEnum_CEILING = [[JavaMathRoundingModeEnum alloc] initWithInt:JavaMathBigDecimal_ROUND_CEILING withNSString:@"JavaMathRoundingMode_CEILING" withInt:2];
    JavaMathRoundingModeEnum_FLOOR = [[JavaMathRoundingModeEnum alloc] initWithInt:JavaMathBigDecimal_ROUND_FLOOR withNSString:@"JavaMathRoundingMode_FLOOR" withInt:3];
    JavaMathRoundingModeEnum_HALF_UP = [[JavaMathRoundingModeEnum alloc] initWithInt:JavaMathBigDecimal_ROUND_HALF_UP withNSString:@"JavaMathRoundingMode_HALF_UP" withInt:4];
    JavaMathRoundingModeEnum_HALF_DOWN = [[JavaMathRoundingModeEnum alloc] initWithInt:JavaMathBigDecimal_ROUND_HALF_DOWN withNSString:@"JavaMathRoundingMode_HALF_DOWN" withInt:5];
    JavaMathRoundingModeEnum_HALF_EVEN = [[JavaMathRoundingModeEnum alloc] initWithInt:JavaMathBigDecimal_ROUND_HALF_EVEN withNSString:@"JavaMathRoundingMode_HALF_EVEN" withInt:6];
    JavaMathRoundingModeEnum_UNNECESSARY = [[JavaMathRoundingModeEnum alloc] initWithInt:JavaMathBigDecimal_ROUND_UNNECESSARY withNSString:@"JavaMathRoundingMode_UNNECESSARY" withInt:7];
    JavaMathRoundingModeEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ JavaMathRoundingModeEnum_UP, JavaMathRoundingModeEnum_DOWN, JavaMathRoundingModeEnum_CEILING, JavaMathRoundingModeEnum_FLOOR, JavaMathRoundingModeEnum_HALF_UP, JavaMathRoundingModeEnum_HALF_DOWN, JavaMathRoundingModeEnum_HALF_EVEN, JavaMathRoundingModeEnum_UNNECESSARY, nil } count:8 type:[IOSClass classWithClass:[JavaMathRoundingModeEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:JavaMathRoundingModeEnum_values];
}

+ (JavaMathRoundingModeEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [JavaMathRoundingModeEnum_values count]; i++) {
    JavaMathRoundingModeEnum *e = [JavaMathRoundingModeEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

@end
