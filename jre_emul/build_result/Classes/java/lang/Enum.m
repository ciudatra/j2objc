//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/Enum.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/CloneNotSupportedException.h"
#import "java/lang/Enum.h"
#import "java/lang/Exception.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/reflect/Method.h"

@implementation JavaLangEnum

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (NSString *)name_ {
  return name__;
}
- (void)setName_:(NSString *)name_ {
  JreOperatorRetainedAssign(&name__, name_);
}
@synthesize name_ = name__;
@synthesize ordinal_ = ordinal__;

- (id)initWithNSString:(NSString *)name
               withInt:(int)ordinal {
  if ((self = [super init])) {
    self.name_ = name;
    self.ordinal_ = ordinal;
    JreMemDebugAdd(self);
  }
  return self;
}

- (NSString *)name {
  return name__;
}

- (int)ordinal {
  return ordinal__;
}

- (NSString *)description {
  return name__;
}

- (BOOL)isEqual:(id)other {
  return self == other;
}

- (NSUInteger)hash {
  return ordinal__ + (name__ == nil ? 0 : [NIL_CHK(name__) hash]);
}

- (id)clone {
  @throw [[[JavaLangCloneNotSupportedException alloc] initWithNSString:@"Enums may not be cloned"] autorelease];
}

- (int)compareToWithId:(JavaLangEnum *)o {
  if (o != nil && ![o isKindOfClass:[JavaLangEnum class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  if (o == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  return ordinal__ - ((JavaLangEnum *) o).ordinal_;
}

- (IOSClass *)getDeclaringClass {
  IOSClass *myClass = [self getClass];
  IOSClass *mySuperClass = [NIL_CHK(myClass) getSuperclass];
  if ([[IOSClass classWithClass:[JavaLangEnum class]] isEqual:mySuperClass]) {
    return (IOSClass *) myClass;
  }
  return (IOSClass *) mySuperClass;
}

+ (JavaLangEnum *)valueOfWithIOSClass:(IOSClass *)enumType
                         withNSString:(NSString *)name {
  if ((enumType == nil) || (name == nil)) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"Argument must not be null"] autorelease];
  }
  IOSObjectArray *values = [JavaLangEnum getValuesWithIOSClass:enumType];
  if (values == nil) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"%@ is not an enum type", [NIL_CHK(enumType) getSimpleName]]] autorelease];
  }
  {
    IOSObjectArray *a__ = values;
    int n__ = (int) [((IOSObjectArray *) NIL_CHK(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      JavaLangEnum *enumConst = [((IOSObjectArray *) NIL_CHK(a__)) objectAtIndex:i__];
      if ([[NIL_CHK(enumConst) name] isEqual:name]) {
        return enumConst;
      }
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"%@ is not a constant in the enum type %@", name, [NIL_CHK(enumType) getSimpleName]]] autorelease];
}

+ (IOSObjectArray *)getValuesWithIOSClass:(IOSClass *)enumType {
  @try {
    JavaLangReflectMethod *values = [NIL_CHK(enumType) getMethod:@"values" parameterTypes:(IOSObjectArray *) nil];
    [((JavaLangReflectMethod *) NIL_CHK(values)) setAccessibleWithBOOL:YES];
    return (IOSObjectArray *) [((JavaLangReflectMethod *) NIL_CHK(values)) invokeWithId:enumType withNSObjectArray:(IOSObjectArray *) nil];
  }
  @catch (JavaLangException *e) {
    return nil;
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&name__, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaLangEnum *typedCopy = (JavaLangEnum *) copy;
  typedCopy.name_ = name__;
  typedCopy.ordinal_ = ordinal__;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:name__ name:@"name_"]];
  return result;
}

@end
