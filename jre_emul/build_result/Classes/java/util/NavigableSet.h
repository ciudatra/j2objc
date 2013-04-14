//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/NavigableSet.java
//
//  Created by retechretech on 13-4-14.
//

@protocol JavaUtilIterator;

#import "JreEmulation.h"
#import "java/util/SortedSet.h"

@protocol JavaUtilNavigableSet < JavaUtilSortedSet, NSObject >
- (id)lowerWithId:(id)e;
- (id)floorWithId:(id)e;
- (id)ceilingWithId:(id)e;
- (id)higherWithId:(id)e;
- (id)pollFirst;
- (id)pollLast;
- (id<JavaUtilIterator>)iterator;
- (id<JavaUtilNavigableSet>)descendingSet;
- (id<JavaUtilIterator>)descendingIterator;
- (id<JavaUtilNavigableSet>)subSetWithId:(id)fromElement
                                withBOOL:(BOOL)fromInclusive
                                  withId:(id)toElement
                                withBOOL:(BOOL)toInclusive;
- (id<JavaUtilNavigableSet>)headSetWithId:(id)toElement
                                 withBOOL:(BOOL)inclusive;
- (id<JavaUtilNavigableSet>)tailSetWithId:(id)fromElement
                                 withBOOL:(BOOL)inclusive;
- (id<JavaUtilSortedSet>)subSetWithId:(id)fromElement
                               withId:(id)toElement;
- (id<JavaUtilSortedSet>)headSetWithId:(id)toElement;
- (id<JavaUtilSortedSet>)tailSetWithId:(id)fromElement;
@end
