//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/Writer.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSCharArray.h"
#import "java/io/Writer.h"
#import "java/lang/CharSequence.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringIndexOutOfBoundsException.h"

@implementation JavaIoWriter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaIoWriter_TOKEN_NULL_ name:@"JavaIoWriter_TOKEN_NULL_"]];
  return result;
}

static NSString * JavaIoWriter_TOKEN_NULL_ = @"null";

- (id)lock {
  return [[lock_ retain] autorelease];
}
- (void)setLock:(id)lock {
  JreOperatorRetainedAssign(&lock_, lock);
}
@synthesize lock = lock_;

+ (NSString *)TOKEN_NULL {
  return JavaIoWriter_TOKEN_NULL_;
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&lock_, self);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithId:(id)lock {
  if ((self = [super init])) {
    if (lock == nil) {
      @throw [[[JavaLangNullPointerException alloc] init] autorelease];
    }
    self.lock = lock;
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)flush {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)writeWithJavaLangCharacterArray:(IOSCharArray *)buf {
  [self writeWithJavaLangCharacterArray:buf withInt:0 withInt:(int) [((IOSCharArray *) NIL_CHK(buf)) count]];
}

- (void)writeWithJavaLangCharacterArray:(IOSCharArray *)buf
                                withInt:(int)offset
                                withInt:(int)count {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)writeWithInt:(int)oneChar {
  @synchronized (lock_) {
    IOSCharArray *oneCharArray = [[[IOSCharArray alloc] initWithLength:1] autorelease];
    [((IOSCharArray *) NIL_CHK(oneCharArray)) replaceCharAtIndex:0 withChar:(unichar) oneChar];
    [self writeWithJavaLangCharacterArray:oneCharArray];
  }
}

- (void)writeWithNSString:(NSString *)str {
  [self writeWithNSString:str withInt:0 withInt:[NIL_CHK(str) length]];
}

- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)count {
  if (count < 0) {
    @throw [[[JavaLangStringIndexOutOfBoundsException alloc] init] autorelease];
  }
  IOSCharArray *buf = [[[IOSCharArray alloc] initWithLength:count] autorelease];
  [NIL_CHK(str) getChars:offset sourceEnd:offset + count destination:buf destinationBegin:0];
  @synchronized (lock_) {
    [self writeWithJavaLangCharacterArray:buf withInt:0 withInt:(int) [((IOSCharArray *) NIL_CHK(buf)) count]];
  }
}

- (JavaIoWriter *)appendWithUnichar:(unichar)c {
  [self writeWithInt:c];
  return self;
}

- (JavaIoWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq {
  if (nil == csq) {
    [self writeWithNSString:JavaIoWriter_TOKEN_NULL_];
  }
  else {
    [self writeWithNSString:[csq description]];
  }
  return self;
}

- (JavaIoWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                         withInt:(int)start
                                         withInt:(int)end {
  if (nil == csq) {
    [self writeWithNSString:[NIL_CHK(JavaIoWriter_TOKEN_NULL_) substring:start endIndex:end]];
  }
  else {
    [self writeWithNSString:[((id<JavaLangCharSequence>) [csq subSequenceFrom:start to:end]) description]];
  }
  return self;
}

- (BOOL)checkError {
  return NO;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&lock_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoWriter *typedCopy = (JavaIoWriter *) copy;
  typedCopy.lock = lock_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:lock_ name:@"lock"]];
  return result;
}

@end