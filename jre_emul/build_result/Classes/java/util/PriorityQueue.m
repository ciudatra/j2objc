//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/PriorityQueue.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSClass.h"
#import "IOSObjectArray.h"
#import "java/lang/Comparable.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IllegalStateException.h"
#import "java/lang/Math.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/System.h"
#import "java/util/AbstractCollection.h"
#import "java/util/AbstractQueue.h"
#import "java/util/Arrays.h"
#import "java/util/Collection.h"
#import "java/util/Comparator.h"
#import "java/util/Iterator.h"
#import "java/util/NoSuchElementException.h"
#import "java/util/PriorityQueue.h"
#import "java/util/SortedSet.h"

@implementation JavaUtilPriorityQueue

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

@synthesize size_ = size__;
- (id<JavaUtilComparator>)comparator_ {
  return comparator__;
}
- (void)setComparator_:(id<JavaUtilComparator>)comparator_ {
  JreOperatorRetainedAssign(&comparator__, comparator_);
}
@synthesize comparator_ = comparator__;
- (IOSObjectArray *)elements {
  return elements_;
}
- (void)setElements:(IOSObjectArray *)elements {
  JreOperatorRetainedAssign(&elements_, elements);
}
@synthesize elements = elements_;

- (id)init {
  return JreMemDebugAdd([self initJavaUtilPriorityQueueWithInt:JavaUtilPriorityQueue_DEFAULT_CAPACITY]);
}

- (id)initJavaUtilPriorityQueueWithInt:(int)initialCapacity {
  return JreMemDebugAdd([self initJavaUtilPriorityQueueWithInt:initialCapacity withJavaUtilComparator:nil]);
}

- (id)initWithInt:(int)initialCapacity {
  return [self initJavaUtilPriorityQueueWithInt:initialCapacity];
}

- (id)initJavaUtilPriorityQueueWithInt:(int)initialCapacity
                withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  if ((self = [super init])) {
    if (initialCapacity < 1) {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    JreOperatorRetainedAssign(&elements_, [self newElementArrayWithInt:initialCapacity]);
    self.comparator_ = comparator;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)initialCapacity
withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  return [self initJavaUtilPriorityQueueWithInt:initialCapacity withJavaUtilComparator:comparator];
}

- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)c {
  if ((self = [super init])) {
    if ([(id) c isKindOfClass:[JavaUtilPriorityQueue class]]) {
      [self getFromPriorityQueueWithJavaUtilPriorityQueue:(JavaUtilPriorityQueue *) c];
    }
    else if ([(id) c conformsToProtocol: @protocol(JavaUtilSortedSet)]) {
      [self getFromSortedSetWithJavaUtilSortedSet:(id<JavaUtilSortedSet>) c];
    }
    else {
      [self initSizeWithJavaUtilCollection:c];
      [self addAllWithJavaUtilCollection:c];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilPriorityQueue:(JavaUtilPriorityQueue *)c {
  if ((self = [super init])) {
    [self getFromPriorityQueueWithJavaUtilPriorityQueue:c];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)c {
  if ((self = [super init])) {
    [self getFromSortedSetWithJavaUtilSortedSet:c];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id<JavaUtilIterator>)iterator {
  return [[[JavaUtilPriorityQueue_PriorityIterator alloc] initWithJavaUtilPriorityQueue:self] autorelease];
}

- (int)size {
  return size__;
}

- (void)clear {
  [JavaUtilArrays fillWithNSObjectArray:elements_ withId:nil];
  size__ = 0;
}

- (BOOL)offerWithId:(id)o {
  if (nil == o) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  [self growToSizeWithInt:size__ + 1];
  [((IOSObjectArray *) NIL_CHK(elements_)) replaceObjectAtIndex:size__ withObject:o];
  [self siftUpWithInt:size__++];
  return YES;
}

- (id)poll {
  if ([self isEmpty]) {
    return nil;
  }
  id result = [((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:0];
  [self removeAtWithInt:0];
  return result;
}

- (id)peek {
  if ([self isEmpty]) {
    return nil;
  }
  return [((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:0];
}

- (id<JavaUtilComparator>)comparator {
  return comparator__;
}

- (BOOL)removeWithId:(id)o {
  if (o == nil || size__ == 0) {
    return NO;
  }
  for (int i = 0; i < size__; i++) {
    if ([NIL_CHK(o) isEqual:[((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:i]]) {
      [self removeAtWithInt:i];
      return YES;
    }
  }
  return NO;
}

- (BOOL)addWithId:(id)o {
  return [self offerWithId:o];
}

- (IOSObjectArray *)newElementArrayWithInt:(int)capacity OBJC_METHOD_FAMILY_NONE {
  return (IOSObjectArray *) [[[IOSObjectArray alloc] initWithLength:capacity type:[IOSClass classWithClass:[NSObject class]]] autorelease];
}

- (void)getFromPriorityQueueWithJavaUtilPriorityQueue:(JavaUtilPriorityQueue *)c {
  [self initSizeWithJavaUtilCollection:c];
  JreOperatorRetainedAssign(&comparator__, (id<JavaUtilComparator>) [((JavaUtilPriorityQueue *) NIL_CHK(c)) comparator]);
  [JavaLangSystem arraycopyWithId:((JavaUtilPriorityQueue *) NIL_CHK(c)).elements withInt:0 withId:elements_ withInt:0 withInt:[((JavaUtilPriorityQueue *) NIL_CHK(c)) size]];
  size__ = [((JavaUtilPriorityQueue *) NIL_CHK(c)) size];
}

- (void)getFromSortedSetWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)c {
  [self initSizeWithJavaUtilCollection:c];
  JreOperatorRetainedAssign(&comparator__, (id<JavaUtilComparator>) ((id<JavaUtilComparator>) [((id<JavaUtilSortedSet>) NIL_CHK(c)) comparator]));
  id<JavaUtilIterator> iter = ((id<JavaUtilIterator>) [((id<JavaUtilSortedSet>) NIL_CHK(c)) iterator]);
  while ([((id<JavaUtilIterator>) NIL_CHK(iter)) hasNext]) {
    [((IOSObjectArray *) NIL_CHK(elements_)) replaceObjectAtIndex:size__++ withObject:((id) [((id<JavaUtilIterator>) NIL_CHK(iter)) next])];
  }
}

- (void)removeAtWithInt:(int)index {
  size__--;
  [((IOSObjectArray *) NIL_CHK(elements_)) replaceObjectAtIndex:index withObject:[((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:size__]];
  [self siftDownWithInt:index];
  [((IOSObjectArray *) NIL_CHK(elements_)) replaceObjectAtIndex:size__ withObject:nil];
}

- (int)compareWithId:(id)o1
              withId:(id)o2 {
  if (nil != comparator__) {
    return [comparator__ compareWithId:o1 withId:o2];
  }
  return [((id<JavaLangComparable>) o1) compareToWithId:o2];
}

- (void)siftUpWithInt:(int)childIndex {
  id target = [((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:childIndex];
  int parentIndex;
  while (childIndex > 0) {
    parentIndex = (childIndex - 1) / 2;
    id parent = [((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:parentIndex];
    if ([self compareWithId:parent withId:target] <= 0) {
      break;
    }
    [((IOSObjectArray *) NIL_CHK(elements_)) replaceObjectAtIndex:childIndex withObject:parent];
    childIndex = parentIndex;
  }
  [((IOSObjectArray *) NIL_CHK(elements_)) replaceObjectAtIndex:childIndex withObject:target];
}

- (void)siftDownWithInt:(int)rootIndex {
  id target = [((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:rootIndex];
  int childIndex;
  while ((childIndex = rootIndex * 2 + 1) < size__) {
    if (childIndex + 1 < size__ && [self compareWithId:[((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:childIndex + 1] withId:[((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:childIndex]] < 0) {
      childIndex++;
    }
    if ([self compareWithId:target withId:[((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:childIndex]] <= 0) {
      break;
    }
    [((IOSObjectArray *) NIL_CHK(elements_)) replaceObjectAtIndex:rootIndex withObject:[((IOSObjectArray *) NIL_CHK(elements_)) objectAtIndex:childIndex]];
    rootIndex = childIndex;
  }
  [((IOSObjectArray *) NIL_CHK(elements_)) replaceObjectAtIndex:rootIndex withObject:target];
}

- (void)initSizeWithJavaUtilCollection:(id<JavaUtilCollection>)c OBJC_METHOD_FAMILY_NONE {
  if (nil == c) {
    @throw [[[JavaLangNullPointerException alloc] init] autorelease];
  }
  if ([((id<JavaUtilCollection>) NIL_CHK(c)) isEmpty]) {
    JreOperatorRetainedAssign(&elements_, [self newElementArrayWithInt:1]);
  }
  else {
    int capacity = (int) [JavaLangMath ceilWithDouble:[((id<JavaUtilCollection>) NIL_CHK(c)) size] * JavaUtilPriorityQueue_DEFAULT_INIT_CAPACITY_RATIO];
    JreOperatorRetainedAssign(&elements_, [self newElementArrayWithInt:capacity]);
  }
}

- (void)growToSizeWithInt:(int)size {
  if (size > (int) [((IOSObjectArray *) NIL_CHK(elements_)) count]) {
    IOSObjectArray *newElements = [self newElementArrayWithInt:size * JavaUtilPriorityQueue_DEFAULT_CAPACITY_RATIO];
    [JavaLangSystem arraycopyWithId:elements_ withInt:0 withId:newElements withInt:0 withInt:(int) [((IOSObjectArray *) NIL_CHK(elements_)) count]];
    JreOperatorRetainedAssign(&elements_, newElements);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&elements_, nil);
  JreOperatorRetainedAssign(&comparator__, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilPriorityQueue *typedCopy = (JavaUtilPriorityQueue *) copy;
  typedCopy.size_ = size__;
  typedCopy.comparator_ = comparator__;
  typedCopy.elements = elements_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:comparator__ name:@"comparator_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:elements_ name:@"elements"]];
  return result;
}

@end
@implementation JavaUtilPriorityQueue_PriorityIterator

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaUtilPriorityQueue *)this$0 {
  return this$0_;
}
- (void)setThis$0:(JavaUtilPriorityQueue *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
@synthesize currentIndex = currentIndex_;
@synthesize allowRemove = allowRemove_;

- (BOOL)hasNext {
  return currentIndex_ < this$0_.size_ - 1;
}

- (id)next {
  if (![self hasNext]) {
    @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
  }
  allowRemove_ = YES;
  return [((IOSObjectArray *) NIL_CHK(this$0_.elements)) objectAtIndex:++currentIndex_];
}

- (void)remove {
  if (!allowRemove_) {
    @throw [[[JavaLangIllegalStateException alloc] init] autorelease];
  }
  allowRemove_ = NO;
  [this$0_ removeAtWithInt:currentIndex_--];
}

- (id)initWithJavaUtilPriorityQueue:(JavaUtilPriorityQueue *)outer$ {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$);
    currentIndex_ = -1;
    allowRemove_ = NO;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilPriorityQueue_PriorityIterator *typedCopy = (JavaUtilPriorityQueue_PriorityIterator *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.currentIndex = currentIndex_;
  typedCopy.allowRemove = allowRemove_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:this$0_ name:@"this$0"]];
  return result;
}

@end
