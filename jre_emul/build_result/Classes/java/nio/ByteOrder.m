//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ByteOrder.java
//
//  Created by retechretech on 13-4-24.
//

#import "java/nio/ByteOrder.h"

@implementation JavaNioByteOrder

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaNioByteOrder_BIG_ENDIAN__ name:@"JavaNioByteOrder_BIG_ENDIAN__"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaNioByteOrder_LITTLE_ENDIAN__ name:@"JavaNioByteOrder_LITTLE_ENDIAN__"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaNioByteOrder_NATIVE_ORDER_ name:@"JavaNioByteOrder_NATIVE_ORDER_"]];
  return result;
}

static JavaNioByteOrder * JavaNioByteOrder_BIG_ENDIAN__;
static JavaNioByteOrder * JavaNioByteOrder_LITTLE_ENDIAN__;
static JavaNioByteOrder * JavaNioByteOrder_NATIVE_ORDER_;

- (NSString *)name {
  return name_;
}
- (void)setName:(NSString *)name {
  JreOperatorRetainedAssign(&name_, name);
}
@synthesize name = name_;

+ (JavaNioByteOrder *)getBIG_ENDIAN {
  return JavaNioByteOrder_BIG_ENDIAN__;
}

+ (JavaNioByteOrder *)getLITTLE_ENDIAN {
  return JavaNioByteOrder_LITTLE_ENDIAN__;
}

+ (JavaNioByteOrder *)NATIVE_ORDER {
  return JavaNioByteOrder_NATIVE_ORDER_;
}

+ (BOOL)isLittleEndian   {
    return CFByteOrderGetCurrent() == CFByteOrderLittleEndian;
  }

+ (JavaNioByteOrder *)nativeOrder {
  return JavaNioByteOrder_NATIVE_ORDER_;
}

- (id)initWithNSString:(NSString *)name {
  if ((self = [super init])) {
    self.name = name;
    JreMemDebugAdd(self);
  }
  return self;
}

- (NSString *)description {
  return name_;
}

+ (void)initialize {
  if (self == [JavaNioByteOrder class]) {
    JreOperatorRetainedAssign(&JavaNioByteOrder_BIG_ENDIAN__, [[[JavaNioByteOrder alloc] initWithNSString:@"BIG_ENDIAN"] autorelease]);
    JreOperatorRetainedAssign(&JavaNioByteOrder_LITTLE_ENDIAN__, [[[JavaNioByteOrder alloc] initWithNSString:@"LITTLE_ENDIAN"] autorelease]);
    {
      if ([JavaNioByteOrder isLittleEndian]) {
        JreOperatorRetainedAssign(&JavaNioByteOrder_NATIVE_ORDER_, JavaNioByteOrder_LITTLE_ENDIAN__);
      }
      else {
        JreOperatorRetainedAssign(&JavaNioByteOrder_NATIVE_ORDER_, JavaNioByteOrder_BIG_ENDIAN__);
      }
    }
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&name_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaNioByteOrder *typedCopy = (JavaNioByteOrder *) copy;
  typedCopy.name = name_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:name_ name:@"name"]];
  return result;
}

@end
