//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/framework/TestSuite.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSObjectArray;
@class JavaLangReflectConstructor;
@class JavaLangReflectMethod;
@class JavaLangThrowable;
@class JavaUtilVector;
@class JunitFrameworkTestResult;
@protocol JavaUtilEnumeration;
@protocol JavaUtilList;

#import "JreEmulation.h"
#import "junit/framework/Test.h"
#import "junit/framework/TestCase.h"

@interface JunitFrameworkTestSuite : NSObject < JunitFrameworkTest > {
 @public
  NSString *fName_;
  JavaUtilVector *fTests_;
}

@property (nonatomic, copy) NSString *fName;
@property (nonatomic, retain) JavaUtilVector *fTests;

+ (id<JunitFrameworkTest>)createTestWithIOSClass:(IOSClass *)theClass
                                    withNSString:(NSString *)name;
+ (JavaLangReflectConstructor *)getTestConstructorWithIOSClass:(IOSClass *)theClass;
+ (id<JunitFrameworkTest>)warningWithNSString:(NSString *)message;
+ (NSString *)exceptionToStringWithJavaLangThrowable:(JavaLangThrowable *)t;
- (id)init;
- (id)initWithIOSClass:(IOSClass *)theClass;
- (void)addTestsFromTestCaseWithIOSClass:(IOSClass *)theClass;
- (id)initWithIOSClass:(IOSClass *)theClass
          withNSString:(NSString *)name;
- (id)initWithNSString:(NSString *)name;
- (id)initWithIOSClassArray:(IOSObjectArray *)classes;
- (id<JunitFrameworkTest>)testCaseForClassWithIOSClass:(IOSClass *)each;
- (id)initWithIOSClassArray:(IOSObjectArray *)classes
               withNSString:(NSString *)name;
- (void)addTestWithJunitFrameworkTest:(id<JunitFrameworkTest>)test;
- (void)addTestSuiteWithIOSClass:(IOSClass *)testClass;
- (int)countTestCases;
- (NSString *)getName;
- (void)runWithJunitFrameworkTestResult:(JunitFrameworkTestResult *)result;
- (void)runTestWithJunitFrameworkTest:(id<JunitFrameworkTest>)test
         withJunitFrameworkTestResult:(JunitFrameworkTestResult *)result;
- (void)setNameWithNSString:(NSString *)name;
- (id<JunitFrameworkTest>)testAtWithInt:(int)index;
- (int)testCount;
- (id<JavaUtilEnumeration>)tests;
- (NSString *)description;
- (void)addTestMethodWithJavaLangReflectMethod:(JavaLangReflectMethod *)m
                              withJavaUtilList:(id<JavaUtilList>)names
                                  withIOSClass:(IOSClass *)theClass;
- (BOOL)isPublicTestMethodWithJavaLangReflectMethod:(JavaLangReflectMethod *)m;
- (BOOL)isTestMethodWithJavaLangReflectMethod:(JavaLangReflectMethod *)m;
@end

@interface JunitFrameworkTestSuite_$1 : JunitFrameworkTestCase {
 @public
  NSString *val$message_;
}

@property (nonatomic, copy) NSString *val$message;

- (void)runTest;
- (id)initWithNSString:(NSString *)arg$0
          withNSString:(NSString *)capture$0;
@end
