//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/framework/TestCase.java
//
//  Created by retechretech on 13-4-26.
//

@class JunitFrameworkTestResult;

#import "JreEmulation.h"
#import "junit/framework/Assert.h"
#import "junit/framework/Test.h"

@interface JunitFrameworkTestCase : JunitFrameworkAssert < JunitFrameworkTest > {
 @public
  NSString *fName_;
}

@property (nonatomic, copy) NSString *fName;

- (id)init;
- (id)initWithNSString:(NSString *)name;
- (int)countTestCases;
- (JunitFrameworkTestResult *)createResult;
- (JunitFrameworkTestResult *)run;
- (void)runWithJunitFrameworkTestResult:(JunitFrameworkTestResult *)result;
- (void)runBare;
- (void)runTest;
- (void)setUp;
- (void)tearDown;
- (NSString *)description;
- (NSString *)getName;
- (void)setNameWithNSString:(NSString *)name;
@end
