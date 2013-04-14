//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/ArrayDeque.java
//
//  Created by retechretech on 13-4-14.
//

@class IOSObjectArray;
@protocol JavaUtilCollection;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/util/AbstractCollection.h"
#import "java/util/Deque.h"
#import "java/util/Iterator.h"

#define JavaUtilArrayDeque_MIN_INITIAL_CAPACITY 8
#define JavaUtilArrayDeque_serialVersionUID 2340985798034038923

@interface JavaUtilArrayDeque : JavaUtilAbstractCollection < JavaUtilDeque, NSCopying, JavaIoSerializable > {
 @public
  IOSObjectArray *elements_;
  int head_;
  int tail_;
}

@property (nonatomic, retain) IOSObjectArray *elements;
@property (nonatomic, assign) int head;
@property (nonatomic, assign) int tail;

- (void)allocateElementsWithInt:(int)numElements OBJC_METHOD_FAMILY_NONE;
- (void)doubleCapacity;
- (IOSObjectArray *)copyElementsWithNSObjectArray:(IOSObjectArray *)a OBJC_METHOD_FAMILY_NONE;
- (id)init;
- (id)initWithInt:(int)numElements;
- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)c;
- (void)addFirstWithId:(id)e;
- (void)addLastWithId:(id)e;
- (BOOL)offerFirstWithId:(id)e;
- (BOOL)offerLastWithId:(id)e;
- (id)removeFirst;
- (id)removeLast;
- (id)pollFirst;
- (id)pollLast;
- (id)getFirst;
- (id)getLast;
- (id)peekFirst;
- (id)peekLast;
- (BOOL)removeFirstOccurrenceWithId:(id)o;
- (BOOL)removeLastOccurrenceWithId:(id)o;
- (BOOL)addWithId:(id)e;
- (BOOL)offerWithId:(id)e;
- (id)remove;
- (id)poll;
- (id)element;
- (id)peek;
- (void)pushWithId:(id)e;
- (id)pop;
- (void)checkInvariants;
- (BOOL)delete__WithInt:(int)i;
- (int)size;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (id<JavaUtilIterator>)descendingIterator;
- (BOOL)containsWithId:(id)o;
- (BOOL)removeWithId:(id)o;
- (void)clear;
- (IOSObjectArray *)toArray;
- (IOSObjectArray *)toArrayWithNSObjectArray:(IOSObjectArray *)a;
- (JavaUtilArrayDeque *)clone;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface JavaUtilArrayDeque_DeqIterator : NSObject < JavaUtilIterator > {
 @public
  JavaUtilArrayDeque *this$0_;
  int cursor_;
  int fence_;
  int lastRet_;
}

@property (nonatomic, retain) JavaUtilArrayDeque *this$0;
@property (nonatomic, assign) int cursor;
@property (nonatomic, assign) int fence;
@property (nonatomic, assign) int lastRet;

- (BOOL)hasNext;
- (id)next;
- (void)remove;
- (id)initWithJavaUtilArrayDeque:(JavaUtilArrayDeque *)outer$0;
@end

@interface JavaUtilArrayDeque_DescendingIterator : NSObject < JavaUtilIterator > {
 @public
  JavaUtilArrayDeque *this$0_;
  int cursor_;
  int fence_;
  int lastRet_;
}

@property (nonatomic, retain) JavaUtilArrayDeque *this$0;
@property (nonatomic, assign) int cursor;
@property (nonatomic, assign) int fence;
@property (nonatomic, assign) int lastRet;

- (BOOL)hasNext;
- (id)next;
- (void)remove;
- (id)initWithJavaUtilArrayDeque:(JavaUtilArrayDeque *)outer$0;
@end
