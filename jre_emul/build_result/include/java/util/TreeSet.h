//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/util/TreeSet.java
//
//  Created by retechretech on 13-3-16.
//

@protocol JavaUtilCollection;
@protocol JavaUtilComparator;
@protocol JavaUtilIterator;
@protocol JavaUtilSortedMap;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/util/AbstractSet.h"
#import "java/util/SortedSet.h"

#define JavaUtilTreeSet_serialVersionUID -2479143000061671589

@interface JavaUtilTreeSet : JavaUtilAbstractSet < JavaUtilSortedSet, NSCopying, JavaIoSerializable > {
 @public
  id<JavaUtilSortedMap> backingMap_;
}

@property (nonatomic, retain) id<JavaUtilSortedMap> backingMap;

- (id)initWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map;
- (id)init;
- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (id)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;
- (id)initWithJavaUtilSortedSet:(id<JavaUtilSortedSet>)set;
- (BOOL)addWithId:(id)object;
- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (void)clear;
- (id)clone;
- (id<JavaUtilComparator>)comparator;
- (BOOL)containsWithId:(id)object;
- (id)first;
- (id<JavaUtilSortedSet>)headSetWithId:(id)end;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (id)last;
- (BOOL)removeWithId:(id)object;
- (int)size;
- (id<JavaUtilSortedSet>)subSetWithId:(id)start
                               withId:(id)end;
- (id<JavaUtilSortedSet>)tailSetWithId:(id)start;
- (id)copyWithZone:(NSZone *)zone;
@end
