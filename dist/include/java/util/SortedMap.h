//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/SortedMap.java
//
//  Created by retechretech on 13-4-14.
//

@protocol JavaUtilComparator;

#import "JreEmulation.h"
#import "java/util/Map.h"

@protocol JavaUtilSortedMap < JavaUtilMap, NSObject >
- (id<JavaUtilComparator>)comparator;
- (id)firstKey;
- (id<JavaUtilSortedMap>)headMapWithId:(id)endKey;
- (id)lastKey;
- (id<JavaUtilSortedMap>)subMapWithId:(id)startKey
                               withId:(id)endKey;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)startKey;
@end
