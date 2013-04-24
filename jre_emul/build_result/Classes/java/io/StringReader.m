//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/StringReader.java
//
//  Created by retechretech on 13-4-24.
//

#import "IOSCharArray.h"
#import "java/io/IOException.h"
#import "java/io/StringReader.h"
#import "java/lang/ArrayIndexOutOfBoundsException.h"
#import "java/lang/IllegalArgumentException.h"

@implementation JavaIoStringReader

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (NSString *)str {
  return str_;
}
- (void)setStr:(NSString *)str {
  JreOperatorRetainedAssign(&str_, str);
}
@synthesize str = str_;
@synthesize markpos = markpos_;
@synthesize pos = pos_;
@synthesize count = count_;

- (id)initWithNSString:(NSString *)str {
  if ((self = [super init])) {
    markpos_ = -1;
    self.str = str;
    self.count = [NIL_CHK(str) length];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
  JreOperatorRetainedAssign(&str_, nil);
}

- (BOOL)isClosed {
  return str_ == nil;
}

- (void)markWithInt:(int)readLimit {
  if (readLimit < 0) {
    @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
  }
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    markpos_ = pos_;
  }
}

- (BOOL)markSupported {
  return YES;
}

- (int)read {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    if (pos_ != count_) {
      return [NIL_CHK(str_) charAtWithInt:pos_++];
    }
    return -1;
  }
}

- (int)readWithJavaLangCharacterArray:(IOSCharArray *)buf
                              withInt:(int)offset
                              withInt:(int)len {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    if (offset < 0 || offset > (int) [((IOSCharArray *) NIL_CHK(buf)) count]) {
      @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Offset out of bounds: %d", offset]] autorelease];
    }
    if (len < 0 || len > (int) [((IOSCharArray *) NIL_CHK(buf)) count] - offset) {
      @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Length out of bounds: %d", len]] autorelease];
    }
    if (len == 0) {
      return 0;
    }
    if (pos_ == self.count) {
      return -1;
    }
    int end = pos_ + len > self.count ? self.count : pos_ + len;
    [NIL_CHK(str_) getChars:pos_ sourceEnd:end destination:buf destinationBegin:offset];
    int read = end - pos_;
    pos_ = end;
    return read;
  }
}

- (BOOL)ready {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    return YES;
  }
}

- (void)reset {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    pos_ = markpos_ != -1 ? markpos_ : 0;
  }
}

- (long long int)skipWithLongInt:(long long int)ns {
  @synchronized (lock_) {
    if ([self isClosed]) {
      @throw [[[JavaIoIOException alloc] initWithNSString:@"StringReader is closed."] autorelease];
    }
    int minSkip = -pos_;
    int maxSkip = count_ - pos_;
    if (maxSkip == 0 || ns > maxSkip) {
      ns = maxSkip;
    }
    else if (ns < minSkip) {
      ns = minSkip;
    }
    pos_ += ns;
    return ns;
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&str_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaIoStringReader *typedCopy = (JavaIoStringReader *) copy;
  typedCopy.str = str_;
  typedCopy.markpos = markpos_;
  typedCopy.pos = pos_;
  typedCopy.count = count_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:str_ name:@"str"]];
  return result;
}

@end
