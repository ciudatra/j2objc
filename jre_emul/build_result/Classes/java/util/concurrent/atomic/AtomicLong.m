//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/concurrent/atomic/AtomicLong.java
//
//  Created by retechretech on 13-4-24.
//

#import "java/io/Serializable.h"
#import "java/lang/Long.h"
#import "java/util/concurrent/atomic/AtomicLong.h"

@implementation JavaUtilConcurrentAtomicAtomicLong

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

@synthesize value = value_;

- (id)initWithLongInt:(long long int)initialValue {
  if ((self = [super init])) {
    self.value = initialValue;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (long long int)get {
  return value_;
}

- (void)setWithLongInt:(long long int)newValue {
  value_ = newValue;
}

- (void)lazySetWithLongInt:(long long int)newValue {
  [self setWithLongInt:newValue];
}

- (long long int)getAndSetWithLongInt:(long long int)newValue {
  long long int current = value_;
  value_ = newValue;
  return current;
}

- (BOOL)compareAndSetWithLongInt:(long long int)expect
                     withLongInt:(long long int)update {
  if (value_ == expect) {
    value_ = update;
    return YES;
  }
  else {
    return NO;
  }
}

- (long long int)getAndIncrement {
  return value_++;
}

- (long long int)getAndDecrement {
  return value_--;
}

- (long long int)getAndAddWithLongInt:(long long int)delta {
  long long int current = value_;
  value_ += delta;
  return current;
}

- (long long int)incrementAndGet {
  return ++value_;
}

- (long long int)decrementAndGet {
  return --value_;
}

- (long long int)addAndGetWithLongInt:(long long int)delta {
  value_ += delta;
  return value_;
}

- (NSString *)description {
  return [JavaLangLong toStringWithLongInt:value_];
}

- (int)intValue {
  return (int) value_;
}

- (long long int)longValue {
  return value_;
}

- (float)floatValue {
  return (float) value_;
}

- (double)doubleValue {
  return (double) value_;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilConcurrentAtomicAtomicLong *typedCopy = (JavaUtilConcurrentAtomicAtomicLong *) copy;
  typedCopy.value = value_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
