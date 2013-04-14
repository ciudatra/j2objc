//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/AbstractQueue.java
//
//  Created by retechretech on 13-4-14.
//

#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/NullPointerException.h"
#import "java/util/AbstractQueue.h"
#import "java/util/Collection.h"
#import "java/util/NoSuchElementException.h"
#import "java/util/Queue.h"

@implementation JavaUtilAbstractQueue

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (BOOL)addWithId:(id)o {
  if (nil == o) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if ([self offerWithId:o]) {
    return YES;
  }
  @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
}

- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  if (nil == c) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if (self == c) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  return (BOOL) [super addAllWithJavaUtilCollection:c];
}

- (id)remove {
  id o = [self poll];
  if (nil == o) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  return o;
}

- (id)element {
  id o = [self peek];
  if (nil == o) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  return o;
}

- (void)clear {
  id o;
  do {
    o = [self poll];
  }
  while (nil != o);
}

- (BOOL)offerWithId:(id)param0 {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)peek {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)poll {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
