//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/framework/TestFailure.java
//
//  Created by retechretech on 13-4-19.
//

@class JavaLangThrowable;
@protocol JunitFrameworkTest;

#import "JreEmulation.h"

@interface JunitFrameworkTestFailure : NSObject {
 @public
  id<JunitFrameworkTest> fFailedTest_;
  JavaLangThrowable *fThrownException_;
}

@property (nonatomic, retain) id<JunitFrameworkTest> fFailedTest;
@property (nonatomic, retain) JavaLangThrowable *fThrownException;

- (id)initWithJunitFrameworkTest:(id<JunitFrameworkTest>)failedTest
           withJavaLangThrowable:(JavaLangThrowable *)thrownException;
- (id<JunitFrameworkTest>)failedTest;
- (JavaLangThrowable *)thrownException;
- (NSString *)description;
- (NSString *)trace;
- (NSString *)exceptionMessage;
- (BOOL)isFailure;
@end