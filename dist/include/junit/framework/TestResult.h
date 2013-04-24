//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/framework/TestResult.java
//
//  Created by retechretech on 13-4-24.
//

@class JavaLangThrowable;
@class JunitFrameworkAssertionFailedError;
@class JunitFrameworkTestCase;
@protocol JavaUtilEnumeration;
@protocol JavaUtilList;
@protocol JunitFrameworkTest;
@protocol JunitFrameworkTestListener;

#import "JreEmulation.h"
#import "junit/framework/Protectable.h"

@interface JunitFrameworkTestResult : NSObject {
 @public
  id<JavaUtilList> fFailures_;
  id<JavaUtilList> fErrors_;
  id<JavaUtilList> fListeners_;
  int fRunTests_;
  BOOL fStop_;
}

@property (nonatomic, retain) id<JavaUtilList> fFailures;
@property (nonatomic, retain) id<JavaUtilList> fErrors;
@property (nonatomic, retain) id<JavaUtilList> fListeners;
@property (nonatomic, assign) int fRunTests;
@property (nonatomic, assign) BOOL fStop;

- (id)init;
- (void)addErrorWithJunitFrameworkTest:(id<JunitFrameworkTest>)test
                 withJavaLangThrowable:(JavaLangThrowable *)t;
- (void)addFailureWithJunitFrameworkTest:(id<JunitFrameworkTest>)test
  withJunitFrameworkAssertionFailedError:(JunitFrameworkAssertionFailedError *)t;
- (void)addListenerWithJunitFrameworkTestListener:(id<JunitFrameworkTestListener>)listener;
- (void)removeListenerWithJunitFrameworkTestListener:(id<JunitFrameworkTestListener>)listener;
- (id<JavaUtilList>)cloneListeners;
- (void)endTestWithJunitFrameworkTest:(id<JunitFrameworkTest>)test;
- (int)errorCount;
- (id<JavaUtilEnumeration>)errors;
- (int)failureCount;
- (id<JavaUtilEnumeration>)failures;
- (void)runWithJunitFrameworkTestCase:(JunitFrameworkTestCase *)test;
- (int)runCount;
- (void)runProtectedWithJunitFrameworkTest:(id<JunitFrameworkTest>)test
             withJunitFrameworkProtectable:(id<JunitFrameworkProtectable>)p;
- (BOOL)shouldStop;
- (void)startTestWithJunitFrameworkTest:(id<JunitFrameworkTest>)test;
- (void)stop;
- (BOOL)wasSuccessful;
@end

@interface JunitFrameworkTestResult_$1 : NSObject < JunitFrameworkProtectable > {
 @public
  JunitFrameworkTestCase *val$test_;
}

@property (nonatomic, retain) JunitFrameworkTestCase *val$test;

- (void)protect;
- (id)initWithJunitFrameworkTestCase:(JunitFrameworkTestCase *)capture$0;
@end
