//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni-kernel/src/main/java/java/lang/ThreadGroup.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSObjectArray;
@class JavaLangThread;
@class JavaLangThrowable;

#import "JreEmulation.h"
#import "java/lang/Thread.h"

@interface JavaLangThreadGroup : NSObject < JavaLangThread_UncaughtExceptionHandler > {
 @public
  NSString *name_;
  int maxPriority_;
  JavaLangThreadGroup *parent_;
  int numThreads_;
  IOSObjectArray *childrenThreads_;
  int numGroups_;
  IOSObjectArray *childrenGroups_;
  id childrenGroupsLock_;
  id childrenThreadsLock_;
  BOOL isDestroyed__;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int maxPriority;
@property (nonatomic, retain) JavaLangThreadGroup *parent;
@property (nonatomic, assign) int numThreads;
@property (nonatomic, retain) IOSObjectArray *childrenThreads;
@property (nonatomic, assign) int numGroups;
@property (nonatomic, retain) IOSObjectArray *childrenGroups;
@property (nonatomic, retain) id childrenGroupsLock;
@property (nonatomic, retain) id childrenThreadsLock;
@property (nonatomic, assign) BOOL isDestroyed_;

- (id)init;
- (id)initWithNSString:(NSString *)name;
- (id)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)parent
                     withNSString:(NSString *)name;
- (id)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)parent;
- (int)activeCount;
- (int)activeGroupCount;
- (void)addWithJavaLangThread:(JavaLangThread *)thread;
- (void)addWithJavaLangThreadGroup:(JavaLangThreadGroup *)g;
- (void)checkAccess;
- (void)destroy;
- (int)enumerateWithJavaLangThreadArray:(IOSObjectArray *)threads;
- (int)enumerateWithJavaLangThreadArray:(IOSObjectArray *)threads
                               withBOOL:(BOOL)recurse;
- (int)enumerateWithJavaLangThreadGroupArray:(IOSObjectArray *)groups;
- (int)enumerateWithJavaLangThreadGroupArray:(IOSObjectArray *)groups
                                    withBOOL:(BOOL)recurse;
- (int)enumerateGenericWithNSObjectArray:(IOSObjectArray *)enumeration
                                withBOOL:(BOOL)recurse
                                 withInt:(int)enumerationIndex
                                withBOOL:(BOOL)enumeratingThreads;
- (int)getMaxPriority;
- (NSString *)getName;
- (JavaLangThreadGroup *)getParent;
- (BOOL)isDestroyed;
- (void)list;
- (void)listWithInt:(int)levels;
- (BOOL)parentOfWithJavaLangThreadGroup:(JavaLangThreadGroup *)g;
- (void)removeWithJavaLangThread:(JavaLangThread *)thread;
- (void)removeWithJavaLangThreadGroup:(JavaLangThreadGroup *)g;
- (void)setMaxPriorityWithInt:(int)newMax;
- (void)setParentWithJavaLangThreadGroup:(JavaLangThreadGroup *)parent;
- (NSString *)description;
- (void)uncaughtExceptionWithJavaLangThread:(JavaLangThread *)t
                      withJavaLangThrowable:(JavaLangThrowable *)e;
@end

@interface JavaLangThreadGroup_ChildrenGroupsLock : NSObject {
 @public
  JavaLangThreadGroup *this$0_;
}

@property (nonatomic, retain) JavaLangThreadGroup *this$0;

- (id)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)outer$0;
@end

@interface JavaLangThreadGroup_ChildrenThreadsLock : NSObject {
 @public
  JavaLangThreadGroup *this$0_;
}

@property (nonatomic, retain) JavaLangThreadGroup *this$0;

- (id)initWithJavaLangThreadGroup:(JavaLangThreadGroup *)outer$0;
@end
