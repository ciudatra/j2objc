//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/AbstractSet.java
//
//  Created by retechretech on 13-4-14.
//

@protocol JavaUtilCollection;

#import "JreEmulation.h"
#import "java/util/AbstractCollection.h"
#import "java/util/Set.h"

@interface JavaUtilAbstractSet : JavaUtilAbstractCollection < JavaUtilSet > {
}

- (id)init;
- (BOOL)isEqual:(id)object;
- (NSUInteger)hash;
- (BOOL)removeAllWithJavaUtilCollection:(id<JavaUtilCollection>)collection;
@end
