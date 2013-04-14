//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/AbstractSequentialList.java
//
//  Created by retechretech on 13-4-14.
//

#import "java/lang/IndexOutOfBoundsException.h"
#import "java/util/AbstractSequentialList.h"
#import "java/util/Collection.h"
#import "java/util/Iterator.h"
#import "java/util/ListIterator.h"
#import "java/util/NoSuchElementException.h"

@implementation JavaUtilAbstractSequentialList

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)addWithInt:(int)location
            withId:(id)object {
  [((id<JavaUtilListIterator>) [self listIteratorWithInt:location]) addWithId:object];
}

- (BOOL)addAllWithInt:(int)location
withJavaUtilCollection:(id<JavaUtilCollection>)collection {
  id<JavaUtilListIterator> it = [self listIteratorWithInt:location];
  id<JavaUtilIterator> colIt = ((id<JavaUtilIterator>) [((id<JavaUtilCollection>) NIL_CHK(collection)) iterator]);
  int next = [((id<JavaUtilListIterator>) NIL_CHK(it)) nextIndex];
  while ([((id<JavaUtilIterator>) NIL_CHK(colIt)) hasNext]) {
    [((id<JavaUtilListIterator>) NIL_CHK(it)) addWithId:((id) [((id<JavaUtilIterator>) NIL_CHK(colIt)) next])];
  }
  return next != [((id<JavaUtilListIterator>) NIL_CHK(it)) nextIndex];
}

- (id)getWithInt:(int)location {
  @try {
    return [[self listIteratorWithInt:location] next];
  }
  @catch (JavaUtilNoSuchElementException *e) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
}

- (id<JavaUtilIterator>)iterator {
  return [self listIteratorWithInt:0];
}

- (id<JavaUtilListIterator>)listIteratorWithInt:(int)location {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id)removeWithInt:(int)location {
  @try {
    id<JavaUtilListIterator> it = [self listIteratorWithInt:location];
    id result = [((id<JavaUtilListIterator>) NIL_CHK(it)) next];
    [((id<JavaUtilListIterator>) NIL_CHK(it)) remove];
    return result;
  }
  @catch (JavaUtilNoSuchElementException *e) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
}

- (id)setWithInt:(int)location
          withId:(id)object {
  id<JavaUtilListIterator> it = [self listIteratorWithInt:location];
  if (![((id<JavaUtilListIterator>) NIL_CHK(it)) hasNext]) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  id result = [((id<JavaUtilListIterator>) NIL_CHK(it)) next];
  [((id<JavaUtilListIterator>) NIL_CHK(it)) setWithId:object];
  return result;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
