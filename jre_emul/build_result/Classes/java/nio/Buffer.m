//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/Buffer.java
//
//  Created by retechretech on 13-4-24.
//

#import "java/lang/IllegalArgumentException.h"
#import "java/nio/Buffer.h"
#import "java/nio/InvalidMarkException.h"

@implementation JavaNioBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

@synthesize capacity_ = capacity__;
@synthesize limit_ = limit__;
@synthesize mark_ = mark__;
@synthesize position_ = position__;

+ (int)UNSET_MARK {
  return JavaNioBuffer_UNSET_MARK;
}

- (id)initWithInt:(int)capacity {
  if ((self = [super init])) {
    mark__ = JavaNioBuffer_UNSET_MARK;
    position__ = 0;
    if (capacity < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    self.capacity_ = self.limit_ = capacity;
    JreMemDebugAdd(self);
  }
  return self;
}

- (int)capacity {
  return capacity__;
}

- (JavaNioBuffer *)clear {
  position__ = 0;
  mark__ = JavaNioBuffer_UNSET_MARK;
  limit__ = capacity__;
  return self;
}

- (JavaNioBuffer *)flip {
  limit__ = position__;
  position__ = 0;
  mark__ = JavaNioBuffer_UNSET_MARK;
  return self;
}

- (BOOL)hasRemaining {
  return position__ < limit__;
}

- (BOOL)isReadOnly {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)limit {
  return limit__;
}

- (JavaNioBuffer *)limitWithInt:(int)newLimit {
  if (newLimit < 0 || newLimit > capacity__) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  limit__ = newLimit;
  if (position__ > newLimit) {
    position__ = newLimit;
  }
  if ((mark__ != JavaNioBuffer_UNSET_MARK) && (mark__ > newLimit)) {
    mark__ = JavaNioBuffer_UNSET_MARK;
  }
  return self;
}

- (JavaNioBuffer *)mark {
  mark__ = position__;
  return self;
}

- (int)position {
  return position__;
}

- (JavaNioBuffer *)positionWithInt:(int)newPosition {
  if (newPosition < 0 || newPosition > limit__) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  position__ = newPosition;
  if ((mark__ != JavaNioBuffer_UNSET_MARK) && (mark__ > position__)) {
    mark__ = JavaNioBuffer_UNSET_MARK;
  }
  return self;
}

- (int)remaining {
  return limit__ - position__;
}

- (JavaNioBuffer *)reset {
  if (mark__ == JavaNioBuffer_UNSET_MARK) {
    @throw [[[JavaNioInvalidMarkException alloc] init] autorelease];
  }
  position__ = mark__;
  return self;
}

- (JavaNioBuffer *)rewind {
  position__ = 0;
  mark__ = JavaNioBuffer_UNSET_MARK;
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaNioBuffer *typedCopy = (JavaNioBuffer *) copy;
  typedCopy.capacity_ = capacity__;
  typedCopy.limit_ = limit__;
  typedCopy.mark_ = mark__;
  typedCopy.position_ = position__;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  return result;
}

@end
