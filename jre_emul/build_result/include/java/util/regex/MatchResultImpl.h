//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/android/libcore/luni/src/main/java/java/util/regex/MatchResultImpl.java
//
//  Created by retechretech on 13-3-16.
//

@class IOSIntArray;

#import "JreEmulation.h"
#import "java/util/regex/MatchResult.h"

@interface JavaUtilRegexMatchResultImpl : NSObject < JavaUtilRegexMatchResult > {
 @public
  NSString *text_;
  IOSIntArray *offsets_;
}

@property (nonatomic, copy) NSString *text;
@property (nonatomic, retain) IOSIntArray *offsets;

- (id)initWithNSString:(NSString *)text
withJavaLangIntegerArray:(IOSIntArray *)offsets;
- (int)end;
- (int)endWithInt:(int)group;
- (NSString *)group;
- (NSString *)groupWithInt:(int)group;
- (int)groupCount;
- (int)start;
- (int)startWithInt:(int)group;
@end
