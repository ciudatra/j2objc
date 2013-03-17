//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/util/ArrayList.java
//
//  Created by retechretech on 13-3-16.
//

@class IOSObjectArray;
@protocol JavaUtilCollection;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/util/AbstractList.h"
#import "java/util/List.h"
#import "java/util/RandomAccess.h"

#define JavaUtilArrayList_serialVersionUID 8683452581122892189

@interface JavaUtilArrayList : JavaUtilAbstractList < JavaUtilList, NSCopying, JavaIoSerializable, JavaUtilRandomAccess > {
 @public
  int firstIndex_;
  int size__;
  IOSObjectArray *array_;
}

@property (nonatomic, assign) int firstIndex;
@property (nonatomic, assign) int size_;
@property (nonatomic, retain) IOSObjectArray *array;

- (id)init;
- (id)initWithInt:(int)capacity;
- (id)initWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (IOSObjectArray *)newElementArrayWithInt:(int)size OBJC_METHOD_FAMILY_NONE;
- (void)addWithInt:(int)location
            withId:(id)object;
- (BOOL)addWithId:(id)object;
- (BOOL)addAllWithInt:(int)location
withJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (BOOL)addAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
- (void)clear;
- (id)clone;
- (BOOL)containsWithId:(id)object;
- (void)ensureCapacityWithInt:(int)minimumCapacity;
- (id)getWithInt:(int)location;
- (void)growAtEndWithInt:(int)required;
- (void)growAtFrontWithInt:(int)required;
- (void)growForInsertWithInt:(int)location
                     withInt:(int)required;
- (int)indexOfWithId:(id)object;
- (BOOL)isEmpty;
- (int)lastIndexOfWithId:(id)object;
- (id)removeWithInt:(int)location;
- (BOOL)removeWithId:(id)object;
- (void)removeRangeWithInt:(int)start
                   withInt:(int)end;
- (id)setWithInt:(int)location
          withId:(id)object;
- (int)size;
- (void)trimToSize;
- (id)copyWithZone:(NSZone *)zone;
@end