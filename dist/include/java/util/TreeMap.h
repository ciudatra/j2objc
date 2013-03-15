//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/util/TreeMap.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSObjectArray;
@class JavaUtilTreeMap_MapEntry;
@class JavaUtilTreeMap_Node;
@class JavaUtilTreeMap_SubMap;
@protocol JavaLangComparable;
@protocol JavaUtilCollection;
@protocol JavaUtilComparator;
@protocol JavaUtilMap;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/util/AbstractCollection.h"
#import "java/util/AbstractMap.h"
#import "java/util/AbstractSet.h"
#import "java/util/Iterator.h"
#import "java/util/Map.h"
#import "java/util/Set.h"
#import "java/util/SortedMap.h"
#import "java/util/TreeMap.h"

#define JavaUtilTreeMap_serialVersionUID 919286545866124006

@interface JavaUtilTreeMap : JavaUtilAbstractMap < JavaUtilSortedMap, NSCopying, JavaIoSerializable > {
 @public
  int size__;
  id<JavaUtilComparator> comparator__;
  int modCount_;
  id<JavaUtilSet> entrySet__;
  JavaUtilTreeMap_Node *root_;
}

@property (nonatomic, assign) int size_;
@property (nonatomic, retain) id<JavaUtilComparator> comparator_;
@property (nonatomic, assign) int modCount;
@property (nonatomic, retain) id<JavaUtilSet> entrySet_;
@property (nonatomic, retain) JavaUtilTreeMap_Node *root;

+ (id<JavaLangComparable>)toComparableWithId:(id)obj;
- (id)init;
- (id)initWithJavaUtilComparator:(id<JavaUtilComparator>)comparator;
- (id)initWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)initWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)map;
- (JavaUtilTreeMap_Node *)addToLastWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)last
                                                     withId:(id)key
                                                     withId:(id)value;
- (void)clear;
- (id)clone;
+ (JavaUtilTreeMap_Node *)successorWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (id<JavaUtilComparator>)comparator;
- (BOOL)containsKeyWithId:(id)key;
- (BOOL)containsValueWithId:(id)value;
- (id<JavaUtilSet>)entrySet;
- (id)firstKey;
- (id)getWithId:(id)key;
- (int)cmpWithJavaLangComparable:(id<JavaLangComparable>)object
                          withId:(id)key1
                          withId:(id)key2;
- (id<JavaUtilSortedMap>)headMapWithId:(id)endKey;
- (id<JavaUtilSet>)keySet;
- (id)lastKey;
+ (JavaUtilTreeMap_Node *)minimumWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
+ (JavaUtilTreeMap_Node *)maximumWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (id)putWithId:(id)key
         withId:(id)value;
- (void)appendFromLeftWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                        withId:(id)keyObj
                                        withId:(id)value;
- (void)attachToLeftWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                    withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)newNode;
- (void)appendFromRightWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                         withId:(id)keyObj
                                         withId:(id)value;
- (void)attachToRightWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)newNode;
- (JavaUtilTreeMap_Node *)createNodeWithId:(id)keyObj
                                    withId:(id)value;
- (void)balanceWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (void)rightRotateWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (void)leftRotateWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (void)putAllWithJavaUtilMap:(id<JavaUtilMap>)map;
- (id)removeWithId:(id)key;
- (void)removeLeftmostWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node;
- (void)removeRightmostWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node;
- (void)removeMiddleElementWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                            withInt:(int)index;
- (void)removeFromIteratorWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                           withInt:(int)index;
- (void)deleteNodeWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node;
- (void)attachToParentNoFixupWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toDelete
                             withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toConnect;
- (void)attachToParentWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toDelete
                      withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toConnect;
- (void)attachNullToParentWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)toDelete;
- (void)fixNextChainWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node;
- (void)fixupWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)x;
- (int)size;
- (id<JavaUtilSortedMap>)subMapWithId:(id)startKey
                               withId:(id)endKey;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)startKey;
- (id<JavaUtilCollection>)values;
- (JavaUtilTreeMap_MapEntry *)newMapEntryWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                                                          withInt:(int)offset OBJC_METHOD_FAMILY_NONE;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface JavaUtilTreeMap_MapEntry : NSObject < JavaUtilMap_Entry, NSCopying > {
 @public
  JavaUtilTreeMap *this$0_;
  int offset_;
  JavaUtilTreeMap_Node *node_;
  id key_;
}

@property (nonatomic, retain) JavaUtilTreeMap *this$0;
@property (nonatomic, assign) int offset;
@property (nonatomic, retain) JavaUtilTreeMap_Node *node;
@property (nonatomic, retain) id key;

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)outer$2
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)node
                      withInt:(int)offset;
- (id)clone;
- (BOOL)isEqual:(id)object;
- (id)getKey;
- (id)getValue;
- (NSUInteger)hash;
- (id)setValueWithId:(id)object;
- (NSString *)description;
- (id)copyWithZone:(NSZone *)zone;
@end

#define JavaUtilTreeMap_Node_NODE_SIZE 64

@interface JavaUtilTreeMap_Node : NSObject < NSCopying > {
 @public
  JavaUtilTreeMap_Node *prev_;
  JavaUtilTreeMap_Node *next_;
  JavaUtilTreeMap_Node *parent_;
  JavaUtilTreeMap_Node *left_;
  JavaUtilTreeMap_Node *right_;
  IOSObjectArray *values_;
  IOSObjectArray *keys_;
  int left_idx_;
  int right_idx_;
  int size_;
  BOOL color_;
}

@property (nonatomic, assign) JavaUtilTreeMap_Node *prev;
@property (nonatomic, retain) JavaUtilTreeMap_Node *next;
@property (nonatomic, assign) JavaUtilTreeMap_Node *parent;
@property (nonatomic, retain) JavaUtilTreeMap_Node *left;
@property (nonatomic, retain) JavaUtilTreeMap_Node *right;
@property (nonatomic, retain) IOSObjectArray *values;
@property (nonatomic, retain) IOSObjectArray *keys;
@property (nonatomic, assign) int left_idx;
@property (nonatomic, assign) int right_idx;
@property (nonatomic, assign) int size;
@property (nonatomic, assign) BOOL color;

+ (int)NODE_SIZE;
- (id)init;
- (JavaUtilTreeMap_Node *)cloneWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)parent;
- (id)copyWithZone:(NSZone *)zone;
@end

@interface JavaUtilTreeMap_AbstractMapIterator : NSObject {
 @public
  JavaUtilTreeMap *backingMap_;
  int expectedModCount_;
  JavaUtilTreeMap_Node *node_;
  JavaUtilTreeMap_Node *lastNode_;
  int offset_;
  int lastOffset_;
}

@property (nonatomic, retain) JavaUtilTreeMap *backingMap;
@property (nonatomic, assign) int expectedModCount;
@property (nonatomic, retain) JavaUtilTreeMap_Node *node;
@property (nonatomic, retain) JavaUtilTreeMap_Node *lastNode;
@property (nonatomic, assign) int offset;
@property (nonatomic, assign) int lastOffset;

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                      withInt:(int)startOffset;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (BOOL)hasNext;
- (void)makeNext;
- (void)remove;
@end

@interface JavaUtilTreeMap_UnboundedEntryIterator : JavaUtilTreeMap_AbstractMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                      withInt:(int)startOffset;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (id<JavaUtilMap_Entry>)next;
@end

@interface JavaUtilTreeMap_UnboundedKeyIterator : JavaUtilTreeMap_AbstractMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                      withInt:(int)startOffset;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (id)next;
@end

@interface JavaUtilTreeMap_UnboundedValueIterator : JavaUtilTreeMap_AbstractMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
     withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                      withInt:(int)startOffset;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (id)next;
@end

@interface JavaUtilTreeMap_BoundedMapIterator : JavaUtilTreeMap_AbstractMapIterator {
 @public
  JavaUtilTreeMap_Node *finalNode_;
  int finalOffset_;
}

@property (nonatomic, retain) JavaUtilTreeMap_Node *finalNode;
@property (nonatomic, assign) int finalOffset;

- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode;
- (void)makeBoundedNext;
@end

@interface JavaUtilTreeMap_BoundedEntryIterator : JavaUtilTreeMap_BoundedMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id<JavaUtilMap_Entry>)next;
@end

@interface JavaUtilTreeMap_BoundedKeyIterator : JavaUtilTreeMap_BoundedMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id)next;
@end

@interface JavaUtilTreeMap_BoundedValueIterator : JavaUtilTreeMap_BoundedMapIterator < JavaUtilIterator > {
}

- (id)initWithJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)startNode
                           withInt:(int)startOffset
               withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withJavaUtilTreeMap_Node:(JavaUtilTreeMap_Node *)finalNode
                           withInt:(int)finalOffset;
- (id)next;
@end

#define JavaUtilTreeMap_SubMap_serialVersionUID -6520786458950516097

@interface JavaUtilTreeMap_SubMap : JavaUtilAbstractMap < JavaUtilSortedMap, JavaIoSerializable > {
 @public
  JavaUtilTreeMap *backingMap_;
  BOOL hasStart_, hasEnd_;
  id startKey_, endKey_;
  id<JavaUtilSet> entrySet__;
  int firstKeyModCount_;
  int lastKeyModCount_;
  JavaUtilTreeMap_Node *firstKeyNode_;
  int firstKeyIndex_;
  JavaUtilTreeMap_Node *lastKeyNode_;
  int lastKeyIndex_;
}

@property (nonatomic, retain) JavaUtilTreeMap *backingMap;
@property (nonatomic, assign) BOOL hasStart;
@property (nonatomic, assign) BOOL hasEnd;
@property (nonatomic, retain) id startKey;
@property (nonatomic, retain) id endKey;
@property (nonatomic, retain) id<JavaUtilSet> entrySet_;
@property (nonatomic, assign) int firstKeyModCount;
@property (nonatomic, assign) int lastKeyModCount;
@property (nonatomic, retain) JavaUtilTreeMap_Node *firstKeyNode;
@property (nonatomic, assign) int firstKeyIndex;
@property (nonatomic, retain) JavaUtilTreeMap_Node *lastKeyNode;
@property (nonatomic, assign) int lastKeyIndex;

- (id)initWithId:(id)start
withJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (id)initWithId:(id)start
withJavaUtilTreeMap:(JavaUtilTreeMap *)map
          withId:(id)end;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map
                       withId:(id)end;
- (void)checkRangeWithId:(id)key;
- (BOOL)isInRangeWithId:(id)key;
- (BOOL)checkUpperBoundWithId:(id)key;
- (BOOL)checkLowerBoundWithId:(id)key;
- (id<JavaUtilComparator>)comparator;
- (BOOL)containsKeyWithId:(id)key;
- (void)clear;
- (BOOL)containsValueWithId:(id)value;
- (id<JavaUtilSet>)entrySet;
- (void)setFirstKey;
- (id)firstKey;
- (id)getWithId:(id)key;
- (id<JavaUtilSortedMap>)headMapWithId:(id)endKey;
- (BOOL)isEmpty;
- (id<JavaUtilSet>)keySet;
- (void)setLastKey;
- (id)lastKey;
- (id)putWithId:(id)key
         withId:(id)value;
- (id)removeWithId:(id)key;
- (id<JavaUtilSortedMap>)subMapWithId:(id)startKey
                               withId:(id)endKey;
- (id<JavaUtilSortedMap>)tailMapWithId:(id)startKey;
- (id<JavaUtilCollection>)values;
- (int)size;
@end

@interface JavaUtilTreeMap_SubMapEntrySet : JavaUtilAbstractSet < JavaUtilSet > {
 @public
  JavaUtilTreeMap_SubMap *subMap_;
}

@property (nonatomic, assign) JavaUtilTreeMap_SubMap *subMap;

- (id)initWithJavaUtilTreeMap_SubMap:(JavaUtilTreeMap_SubMap *)map;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (int)size;
- (BOOL)containsWithId:(id)object;
- (BOOL)removeWithId:(id)object;
@end

@interface JavaUtilTreeMap_SubMapKeySet : JavaUtilAbstractSet < JavaUtilSet > {
 @public
  JavaUtilTreeMap_SubMap *subMap_;
}

@property (nonatomic, assign) JavaUtilTreeMap_SubMap *subMap;

- (id)initWithJavaUtilTreeMap_SubMap:(JavaUtilTreeMap_SubMap *)map;
- (BOOL)containsWithId:(id)object;
- (BOOL)isEmpty;
- (int)size;
- (BOOL)removeWithId:(id)object;
- (id<JavaUtilIterator>)iterator;
@end

@interface JavaUtilTreeMap_SubMapValuesCollection : JavaUtilAbstractCollection {
 @public
  JavaUtilTreeMap_SubMap *subMap_;
}

@property (nonatomic, assign) JavaUtilTreeMap_SubMap *subMap;

- (id)initWithJavaUtilTreeMap_SubMap:(JavaUtilTreeMap_SubMap *)subMap;
- (BOOL)isEmpty;
- (id<JavaUtilIterator>)iterator;
- (int)size;
@end

@interface JavaUtilTreeMap_EntrySet : JavaUtilAbstractSet {
 @public
  JavaUtilTreeMap *this$0_;
}

@property (nonatomic, assign) JavaUtilTreeMap *this$0;

- (int)size;
- (void)clear;
- (BOOL)containsWithId:(id)object;
- (BOOL)removeWithId:(id)object;
- (id<JavaUtilIterator>)iterator;
- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)outer$0;
@end

@interface JavaUtilTreeMap_KeySet : JavaUtilAbstractSet {
 @public
  JavaUtilTreeMap *map_;
}

@property (nonatomic, assign) JavaUtilTreeMap *map;

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (BOOL)containsWithId:(id)object;
- (int)size;
- (void)clear;
- (BOOL)removeWithId:(id)object;
- (id<JavaUtilIterator>)iterator;
@end

@interface JavaUtilTreeMap_ValuesCollection : JavaUtilAbstractCollection {
 @public
  JavaUtilTreeMap *map_;
}

@property (nonatomic, assign) JavaUtilTreeMap *map;

- (id)initWithJavaUtilTreeMap:(JavaUtilTreeMap *)map;
- (BOOL)containsWithId:(id)object;
- (int)size;
- (void)clear;
- (id<JavaUtilIterator>)iterator;
@end
