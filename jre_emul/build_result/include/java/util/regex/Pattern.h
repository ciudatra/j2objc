//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/android/libcore/luni/src/main/java/java/util/regex/Pattern.java
//
//  Created by retechretech on 13-3-16.
//

@class IOSObjectArray;
@class JavaUtilRegexMatcher;
@protocol JavaLangCharSequence;

#import "JreEmulation.h"
#import "java/io/Serializable.h"

#define JavaUtilRegexPattern_ALL_FLAGS 255
#define JavaUtilRegexPattern_CANON_EQ 128
#define JavaUtilRegexPattern_CASE_INSENSITIVE 2
#define JavaUtilRegexPattern_COMMENTS 4
#define JavaUtilRegexPattern_DOTALL 32
#define JavaUtilRegexPattern_LITERAL 16
#define JavaUtilRegexPattern_MULTILINE 8
#define JavaUtilRegexPattern_UNICODE_CASE 64
#define JavaUtilRegexPattern_UNIX_LINES 1
#define JavaUtilRegexPattern_serialVersionUID 5073258162644648461

@interface JavaUtilRegexPattern : NSObject < JavaIoSerializable > {
 @public
  NSString *pattern__;
  int flags__;
  id nativePattern_;
}

@property (nonatomic, copy) NSString *pattern_;
@property (nonatomic, assign) int flags_;
@property (nonatomic, retain) id nativePattern;

+ (int)UNIX_LINES;
+ (int)CASE_INSENSITIVE;
+ (int)COMMENTS;
+ (int)MULTILINE;
+ (int)LITERAL;
+ (int)DOTALL;
+ (int)UNICODE_CASE;
+ (int)CANON_EQ;
- (JavaUtilRegexMatcher *)matcherWithJavaLangCharSequence:(id<JavaLangCharSequence>)input;
- (IOSObjectArray *)splitWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                                          withInt:(int)limit;
- (IOSObjectArray *)splitWithJavaLangCharSequence:(id<JavaLangCharSequence>)input;
- (NSString *)pattern;
- (NSString *)description;
- (int)flags;
+ (JavaUtilRegexPattern *)compileWithNSString:(NSString *)regularExpression
                                      withInt:(int)flags;
+ (JavaUtilRegexPattern *)compileWithNSString:(NSString *)pattern;
- (id)initWithNSString:(NSString *)pattern
               withInt:(int)flags;
- (void)compile;
- (int)javaToIosFlags;
+ (BOOL)matchesWithNSString:(NSString *)regularExpression
   withJavaLangCharSequence:(id<JavaLangCharSequence>)input;
+ (NSString *)quoteWithNSString:(NSString *)string;
- (void)dealloc;
- (void)compileImplWithNSString:(NSString *)icuPattern
                        withInt:(int)iosFlags;
- (void)releaseNativePattern;
@end
