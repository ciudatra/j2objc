//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/StringTokenizer.java
//
//  Created by retechretech on 13-4-26.
//

#import "java/lang/NullPointerException.h"
#import "java/util/NoSuchElementException.h"
#import "java/util/StringTokenizer.h"

@implementation JavaUtilStringTokenizer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (NSString *)string {
  return string_;
}
- (void)setString:(NSString *)string {
  JreOperatorRetainedAssign(&string_, string);
}
@synthesize string = string_;
- (NSString *)delimiters {
  return delimiters_;
}
- (void)setDelimiters:(NSString *)delimiters {
  JreOperatorRetainedAssign(&delimiters_, delimiters);
}
@synthesize delimiters = delimiters_;
@synthesize returnDelimiters = returnDelimiters_;
@synthesize position = position_;

- (id)initWithNSString:(NSString *)string {
  return JreMemDebugAdd([self initJavaUtilStringTokenizerWithNSString:string withNSString:@" \t\n\r\f" withBOOL:NO]);
}

- (id)initWithNSString:(NSString *)string
          withNSString:(NSString *)delimiters {
  return JreMemDebugAdd([self initJavaUtilStringTokenizerWithNSString:string withNSString:delimiters withBOOL:NO]);
}

- (id)initJavaUtilStringTokenizerWithNSString:(NSString *)string
                                 withNSString:(NSString *)delimiters
                                     withBOOL:(BOOL)returnDelimiters {
  if ((self = [super init])) {
    if (string == nil) {
      @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"string == null"] autorelease];
    }
    self.string = string;
    self.delimiters = delimiters;
    self.returnDelimiters = returnDelimiters;
    self.position = 0;
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)string
          withNSString:(NSString *)delimiters
              withBOOL:(BOOL)returnDelimiters {
  return [self initJavaUtilStringTokenizerWithNSString:string withNSString:delimiters withBOOL:returnDelimiters];
}

- (int)countTokens {
  int count = 0;
  BOOL inToken = NO;
  for (int i = position_, length = [NIL_CHK(string_) length]; i < length; i++) {
    if ([NIL_CHK(delimiters_) indexOf:[NIL_CHK(string_) charAtWithInt:i] fromIndex:0] >= 0) {
      if (returnDelimiters_) count++;
      if (inToken) {
        count++;
        inToken = NO;
      }
    }
    else {
      inToken = YES;
    }
  }
  if (inToken) count++;
  return count;
}

- (BOOL)hasMoreElements {
  return [self hasMoreTokens];
}

- (BOOL)hasMoreTokens {
  if (delimiters_ == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"delimiters == null"] autorelease];
  }
  int length = [NIL_CHK(string_) length];
  if (position_ < length) {
    if (returnDelimiters_) return YES;
    for (int i = position_; i < length; i++) if ([NIL_CHK(delimiters_) indexOf:[NIL_CHK(string_) charAtWithInt:i] fromIndex:0] == -1) return YES;
  }
  return NO;
}

- (id)nextElement {
  return [self nextToken];
}

- (NSString *)nextToken {
  if (delimiters_ == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"delimiters == null"] autorelease];
  }
  int i = position_;
  int length = [NIL_CHK(string_) length];
  if (i < length) {
    if (returnDelimiters_) {
      if ([NIL_CHK(delimiters_) indexOf:[NIL_CHK(string_) charAtWithInt:position_] fromIndex:0] >= 0) return [NSString valueOfChar:[NIL_CHK(string_) charAtWithInt:position_++]];
      for (position_++; position_ < length; position_++) if ([NIL_CHK(delimiters_) indexOf:[NIL_CHK(string_) charAtWithInt:position_] fromIndex:0] >= 0) return [NIL_CHK(string_) substring:i endIndex:position_];
      return [NIL_CHK(string_) substring:i];
    }
    while (i < length && [NIL_CHK(delimiters_) indexOf:[NIL_CHK(string_) charAtWithInt:i] fromIndex:0] >= 0) i++;
    position_ = i;
    if (i < length) {
      for (position_++; position_ < length; position_++) if ([NIL_CHK(delimiters_) indexOf:[NIL_CHK(string_) charAtWithInt:position_] fromIndex:0] >= 0) return [NIL_CHK(string_) substring:i endIndex:position_];
      return [NIL_CHK(string_) substring:i];
    }
  }
  @throw [[[JavaUtilNoSuchElementException alloc] init] autorelease];
}

- (NSString *)nextTokenWithNSString:(NSString *)delims {
  self.delimiters = delims;
  return [self nextToken];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&delimiters_, nil);
  JreOperatorRetainedAssign(&string_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilStringTokenizer *typedCopy = (JavaUtilStringTokenizer *) copy;
  typedCopy.string = string_;
  typedCopy.delimiters = delimiters_;
  typedCopy.returnDelimiters = returnDelimiters_;
  typedCopy.position = position_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:string_ name:@"string"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:delimiters_ name:@"delimiters"]];
  return result;
}

@end
