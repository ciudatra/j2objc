//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/StringWriter.java
//
//  Created by retechretech on 13-3-15.
//

#import "IOSCharArray.h"
#import "java/io/StringWriter.h"
#import "java/io/Writer.h"
#import "java/lang/CharSequence.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/StringBuffer.h"

@implementation JavaIoStringWriter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (JavaLangStringBuffer *)buf {
  return [[buf_ retain] autorelease];
}
- (void)setBuf:(JavaLangStringBuffer *)buf {
  JreOperatorRetainedAssign(&buf_, buf);
}
@synthesize buf = buf_;

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&buf_, [[[JavaLangStringBuffer alloc] initWithInt:16] autorelease]);
    JreOperatorRetainedAssign(&lock_, buf_);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)initialSize {
  if ((self = [super init])) {
    if (initialSize < 0) {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    JreOperatorRetainedAssign(&buf_, [[[JavaLangStringBuffer alloc] initWithInt:initialSize] autorelease]);
    JreOperatorRetainedAssign(&lock_, buf_);
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
}

- (void)flush {
}

- (JavaLangStringBuffer *)getBuffer {
  return buf_;
}

- (NSString *)description {
  return [((JavaLangStringBuffer *) NIL_CHK(buf_)) description];
}

- (void)writeWithJavaLangCharacterArray:(IOSCharArray *)cbuf
                                withInt:(int)offset
                                withInt:(int)count {
  if (offset < 0 || offset > (int) [((IOSCharArray *) NIL_CHK(cbuf)) count] || count < 0 || count > (int) [((IOSCharArray *) NIL_CHK(cbuf)) count] - offset) {
    @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
  }
  if (count == 0) {
    return;
  }
  [((JavaLangStringBuffer *) NIL_CHK(buf_)) appendWithJavaLangCharacterArray:cbuf withInt:offset withInt:count];
}

- (void)writeWithInt:(int)oneChar {
  [((JavaLangStringBuffer *) NIL_CHK(buf_)) appendWithUnichar:(unichar) oneChar];
}

- (void)writeWithNSString:(NSString *)str {
  [((JavaLangStringBuffer *) NIL_CHK(buf_)) appendWithNSString:str];
}

- (void)writeWithNSString:(NSString *)str
                  withInt:(int)offset
                  withInt:(int)count {
  NSString *sub = [NIL_CHK(str) substring:offset endIndex:offset + count];
  [((JavaLangStringBuffer *) NIL_CHK(buf_)) appendWithNSString:sub];
}

- (JavaIoStringWriter *)appendWithUnichar:(unichar)c {
  [self writeWithInt:c];
  return self;
}

- (JavaIoStringWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq {
  if (nil == csq) {
    [self writeWithNSString:[JavaIoWriter TOKEN_NULL]];
  }
  else {
    [self writeWithNSString:[csq description]];
  }
  return self;
}

- (JavaIoStringWriter *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                               withInt:(int)start
                                               withInt:(int)end {
  if (nil == csq) {
    csq = (id<JavaLangCharSequence>) [JavaIoWriter TOKEN_NULL];
  }
  NSString *output = [((id<JavaLangCharSequence>) [((id<JavaLangCharSequence>) NIL_CHK(csq)) subSequenceFrom:start to:end]) sequenceDescription];
  [self writeWithNSString:output withInt:0 withInt:[NIL_CHK(output) length]];
  return self;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&buf_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoStringWriter *typedCopy = (JavaIoStringWriter *) copy;
  typedCopy.buf = buf_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:buf_ name:@"buf"]];
  return result;
}

@end