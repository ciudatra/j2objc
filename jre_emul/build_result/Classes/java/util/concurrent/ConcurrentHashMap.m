//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/concurrent/ConcurrentHashMap.java
//
//  Created by retechretech on 13-4-14.
//

#import "java/util/Hashtable.h"
#import "java/util/concurrent/ConcurrentHashMap.h"

@implementation JavaUtilConcurrentConcurrentHashMap

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)putIfAbsentWithId:(id)key
                 withId:(id)value {
  @synchronized (self) {
    id oldValue = [self getWithId:key];
    return oldValue == nil ? [self putWithId:key withId:value] : oldValue;
  }
}

- (BOOL)removeWithId:(id)key
              withId:(id)value {
  @synchronized (self) {
    if ([self containsKeyWithId:key] && [[self getWithId:key] isEqual:value]) {
      [self removeWithId:key];
      return YES;
    }
    else {
      return NO;
    }
  }
}

- (BOOL)replaceWithId:(id)key
               withId:(id)oldValue
               withId:(id)newValue {
  @synchronized (self) {
    if ([self containsKeyWithId:key] && [[self getWithId:key] isEqual:oldValue]) {
      [self putWithId:key withId:newValue];
      return YES;
    }
    else {
      return NO;
    }
  }
}

- (id)replaceWithId:(id)key
             withId:(id)value {
  @synchronized (self) {
    id oldValue = [self getWithId:key];
    return oldValue != nil ? [self putWithId:key withId:value] : nil;
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
