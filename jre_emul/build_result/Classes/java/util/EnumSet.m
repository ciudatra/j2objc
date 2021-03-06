//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/EnumSet.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/AssertionError.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/CloneNotSupportedException.h"
#import "java/lang/Enum.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/NullPointerException.h"
#import "java/util/Collection.h"
#import "java/util/EnumSet.h"
#import "java/util/HugeEnumSet.h"
#import "java/util/Iterator.h"
#import "java/util/MiniEnumSet.h"

@implementation JavaUtilEnumSet

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (IOSClass *)elementClass {
  return elementClass_;
}
- (void)setElementClass:(IOSClass *)elementClass {
  JreOperatorRetainedAssign(&elementClass_, elementClass);
}
@synthesize elementClass = elementClass_;

- (id)initWithIOSClass:(IOSClass *)cls {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&elementClass_, cls);
    JreMemDebugAdd(self);
  }
  return self;
}

+ (JavaUtilEnumSet *)noneOfWithIOSClass:(IOSClass *)elementType {
  if (![NIL_CHK(elementType) isEnum] || [NIL_CHK(elementType) isEqual:[IOSClass classWithClass:[JavaLangEnum class]]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  if ((int) [[NIL_CHK(elementType) getEnumConstants] count] <= 64) {
    return [[[JavaUtilMiniEnumSet alloc] initWithIOSClass:elementType] autorelease];
  }
  return [[[JavaUtilHugeEnumSet alloc] initWithIOSClass:elementType] autorelease];
}

+ (JavaUtilEnumSet *)allOfWithIOSClass:(IOSClass *)elementType {
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet noneOfWithIOSClass:elementType]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) complement];
  return set;
}

+ (JavaUtilEnumSet *)copyOfWithJavaUtilEnumSet:(JavaUtilEnumSet *)s OBJC_METHOD_FAMILY_NONE {
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet noneOfWithIOSClass:((JavaUtilEnumSet *) NIL_CHK(s)).elementClass]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) addAllWithJavaUtilCollection:s];
  return set;
}

+ (JavaUtilEnumSet *)copyOfWithJavaUtilCollection:(id<JavaUtilCollection>)c OBJC_METHOD_FAMILY_NONE {
  if (c == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if ([(id) c isKindOfClass:[JavaUtilEnumSet class]]) {
    return ((JavaUtilEnumSet *) [JavaUtilEnumSet copyOfWithJavaUtilEnumSet:(JavaUtilEnumSet *) c]);
  }
  if ([((id<JavaUtilCollection>) NIL_CHK(c)) isEmpty]) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  id<JavaUtilIterator> iterator = ((id<JavaUtilIterator>) [((id<JavaUtilCollection>) NIL_CHK(c)) iterator]);
  JavaLangEnum *element = [((id<JavaUtilIterator>) NIL_CHK(iterator)) next];
  if (!([element isKindOfClass:[JavaLangEnum class]])) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet noneOfWithIOSClass:((IOSClass *) [NIL_CHK(element) getDeclaringClass])]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) addWithId:element];
  while ([((id<JavaUtilIterator>) NIL_CHK(iterator)) hasNext]) {
    [((JavaUtilEnumSet *) NIL_CHK(set)) addWithId:[((id<JavaUtilIterator>) NIL_CHK(iterator)) next]];
  }
  return set;
}

+ (JavaUtilEnumSet *)complementOfWithJavaUtilEnumSet:(JavaUtilEnumSet *)s {
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet noneOfWithIOSClass:((JavaUtilEnumSet *) NIL_CHK(s)).elementClass]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) addAllWithJavaUtilCollection:s];
  [((JavaUtilEnumSet *) NIL_CHK(set)) complement];
  return set;
}

- (void)complement {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

+ (JavaUtilEnumSet *)ofWithId:(JavaLangEnum *)e {
  if (e == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (!([e isKindOfClass:[JavaLangEnum class]])) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet noneOfWithIOSClass:((IOSClass *) [NIL_CHK(e) getDeclaringClass])]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) addWithId:e];
  return set;
}

+ (JavaUtilEnumSet *)ofWithId:(JavaLangEnum *)e1
                       withId:(JavaLangEnum *)e2 {
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet ofWithId:e1]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) addWithId:e2];
  return set;
}

+ (JavaUtilEnumSet *)ofWithId:(JavaLangEnum *)e1
                       withId:(JavaLangEnum *)e2
                       withId:(JavaLangEnum *)e3 {
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet ofWithId:e1 withId:e2]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) addWithId:e3];
  return set;
}

+ (JavaUtilEnumSet *)ofWithId:(JavaLangEnum *)e1
                       withId:(JavaLangEnum *)e2
                       withId:(JavaLangEnum *)e3
                       withId:(JavaLangEnum *)e4 {
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet ofWithId:e1 withId:e2 withId:e3]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) addWithId:e4];
  return set;
}

+ (JavaUtilEnumSet *)ofWithId:(JavaLangEnum *)e1
                       withId:(JavaLangEnum *)e2
                       withId:(JavaLangEnum *)e3
                       withId:(JavaLangEnum *)e4
                       withId:(JavaLangEnum *)e5 {
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet ofWithId:e1 withId:e2 withId:e3 withId:e4]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) addWithId:e5];
  return set;
}

+ (JavaUtilEnumSet *)ofWithId:(JavaLangEnum *)start
        withJavaLangEnumArray:(IOSObjectArray *)others {
  if (others == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet ofWithId:start]);
  {
    IOSObjectArray *a__ = others;
    int n__ = (int) [((IOSObjectArray *) NIL_CHK(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      JavaLangEnum *e = [((IOSObjectArray *) NIL_CHK(a__)) objectAtIndex:i__];
      [((JavaUtilEnumSet *) NIL_CHK(set)) addWithId:e];
    }
  }
  return set;
}

+ (JavaUtilEnumSet *)rangeWithId:(JavaLangEnum *)start
                          withId:(JavaLangEnum *)end {
  if (start == nil || end == nil) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if ([NIL_CHK(start) compareToWithId:end] > 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  if (!([start isKindOfClass:[JavaLangEnum class]]) || !([end isKindOfClass:[JavaLangEnum class]])) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  JavaUtilEnumSet *set = ((JavaUtilEnumSet *) [JavaUtilEnumSet noneOfWithIOSClass:((IOSClass *) [NIL_CHK(start) getDeclaringClass])]);
  [((JavaUtilEnumSet *) NIL_CHK(set)) setRangeWithId:start withId:end];
  return set;
}

- (void)setRangeWithId:(JavaLangEnum *)start
                withId:(JavaLangEnum *)end {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (JavaUtilEnumSet *)clone {
  @try {
    return (JavaUtilEnumSet *) [super clone];
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw [[[JavaLangAssertionError alloc] initWithId:e] autorelease];
  }
}

- (BOOL)isValidTypeWithIOSClass:(IOSClass *)cls {
  return [NIL_CHK(cls) isEqual:elementClass_] || [[NIL_CHK(cls) getSuperclass] isEqual:elementClass_];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&elementClass_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilEnumSet *typedCopy = (JavaUtilEnumSet *) copy;
  typedCopy.elementClass = elementClass_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:elementClass_ name:@"elementClass"]];
  return result;
}

@end
