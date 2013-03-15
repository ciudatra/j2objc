//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/junit/build_result/java/junit/framework/TestResult.java
//
//  Created by retechretech on 13-3-15.
//

#import "java/lang/ThreadDeath.h"
#import "java/lang/Throwable.h"
#import "java/util/ArrayList.h"
#import "java/util/Collections.h"
#import "java/util/Enumeration.h"
#import "java/util/Iterator.h"
#import "java/util/List.h"
#import "junit/framework/AssertionFailedError.h"
#import "junit/framework/Protectable.h"
#import "junit/framework/Test.h"
#import "junit/framework/TestCase.h"
#import "junit/framework/TestFailure.h"
#import "junit/framework/TestListener.h"
#import "junit/framework/TestResult.h"

@implementation JunitFrameworkTestResult

- (id<JavaUtilList>)fFailures {
  return [[fFailures_ retain] autorelease];
}
- (void)setFFailures:(id<JavaUtilList>)fFailures {
  JreOperatorRetainedAssign(&fFailures_, fFailures);
}
@synthesize fFailures = fFailures_;
- (id<JavaUtilList>)fErrors {
  return [[fErrors_ retain] autorelease];
}
- (void)setFErrors:(id<JavaUtilList>)fErrors {
  JreOperatorRetainedAssign(&fErrors_, fErrors);
}
@synthesize fErrors = fErrors_;
- (id<JavaUtilList>)fListeners {
  return [[fListeners_ retain] autorelease];
}
- (void)setFListeners:(id<JavaUtilList>)fListeners {
  JreOperatorRetainedAssign(&fListeners_, fListeners);
}
@synthesize fListeners = fListeners_;
@synthesize fRunTests = fRunTests_;
@synthesize fStop = fStop_;

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&fFailures_, [[[JavaUtilArrayList alloc] init] autorelease]);
    JreOperatorRetainedAssign(&fErrors_, [[[JavaUtilArrayList alloc] init] autorelease]);
    JreOperatorRetainedAssign(&fListeners_, [[[JavaUtilArrayList alloc] init] autorelease]);
    fRunTests_ = 0;
    fStop_ = NO;
  }
  return self;
}

- (void)addErrorWithJunitFrameworkTest:(id<JunitFrameworkTest>)test
                 withJavaLangThrowable:(JavaLangThrowable *)t {
  @synchronized(self) {
    {
      [((id<JavaUtilList>) NIL_CHK(fErrors_)) addWithId:[[[JunitFrameworkTestFailure alloc] initWithJunitFrameworkTest:test withJavaLangThrowable:t] autorelease]];
      {
        id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [[self cloneListeners] iterator]);
        while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
          id<JunitFrameworkTestListener> each = ((id<JunitFrameworkTestListener>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
          [((id<JunitFrameworkTestListener>) NIL_CHK(each)) addErrorWithJunitFrameworkTest:test withJavaLangThrowable:t];
        }
      }
    }
  }
}

- (void)addFailureWithJunitFrameworkTest:(id<JunitFrameworkTest>)test
  withJunitFrameworkAssertionFailedError:(JunitFrameworkAssertionFailedError *)t {
  @synchronized(self) {
    {
      [((id<JavaUtilList>) NIL_CHK(fFailures_)) addWithId:[[[JunitFrameworkTestFailure alloc] initWithJunitFrameworkTest:test withJavaLangThrowable:t] autorelease]];
      {
        id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [[self cloneListeners] iterator]);
        while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
          id<JunitFrameworkTestListener> each = ((id<JunitFrameworkTestListener>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
          [((id<JunitFrameworkTestListener>) NIL_CHK(each)) addFailureWithJunitFrameworkTest:test withJunitFrameworkAssertionFailedError:t];
        }
      }
    }
  }
}

- (void)addListenerWithJunitFrameworkTestListener:(id<JunitFrameworkTestListener>)listener {
  @synchronized(self) {
    {
      [((id<JavaUtilList>) NIL_CHK(fListeners_)) addWithId:listener];
    }
  }
}

- (void)removeListenerWithJunitFrameworkTestListener:(id<JunitFrameworkTestListener>)listener {
  @synchronized(self) {
    {
      [((id<JavaUtilList>) NIL_CHK(fListeners_)) removeWithId:listener];
    }
  }
}

- (id<JavaUtilList>)cloneListeners {
  @synchronized(self) {
    {
      id<JavaUtilList> result = [[[JavaUtilArrayList alloc] init] autorelease];
      [((id<JavaUtilList>) NIL_CHK(result)) addAllWithJavaUtilCollection:fListeners_];
      return result;
    }
  }
}

- (void)endTestWithJunitFrameworkTest:(id<JunitFrameworkTest>)test {
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [[self cloneListeners] iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      id<JunitFrameworkTestListener> each = ((id<JunitFrameworkTestListener>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((id<JunitFrameworkTestListener>) NIL_CHK(each)) endTestWithJunitFrameworkTest:test];
    }
  }
}

- (int)errorCount {
  @synchronized(self) {
    {
      return [((id<JavaUtilList>) NIL_CHK(fErrors_)) size];
    }
  }
}

- (id<JavaUtilEnumeration>)errors {
  @synchronized(self) {
    {
      return ((id<JavaUtilEnumeration>) [JavaUtilCollections enumerationWithJavaUtilCollection:fErrors_]);
    }
  }
}

- (int)failureCount {
  @synchronized(self) {
    {
      return [((id<JavaUtilList>) NIL_CHK(fFailures_)) size];
    }
  }
}

- (id<JavaUtilEnumeration>)failures {
  @synchronized(self) {
    {
      return ((id<JavaUtilEnumeration>) [JavaUtilCollections enumerationWithJavaUtilCollection:fFailures_]);
    }
  }
}

- (void)runWithJunitFrameworkTestCase:(JunitFrameworkTestCase *)test {
  [self startTestWithJunitFrameworkTest:test];
  id<JunitFrameworkProtectable> p = [[[JunitFrameworkTestResult_$1 alloc] initWithJunitFrameworkTestResult:self withJunitFrameworkTestCase:test] autorelease];
  [self runProtectedWithJunitFrameworkTest:test withJunitFrameworkProtectable:p];
  [self endTestWithJunitFrameworkTest:test];
}

- (int)runCount {
  @synchronized(self) {
    {
      return fRunTests_;
    }
  }
}

- (void)runProtectedWithJunitFrameworkTest:(id<JunitFrameworkTest>)test
             withJunitFrameworkProtectable:(id<JunitFrameworkProtectable>)p {
  @try {
    [((id<JunitFrameworkProtectable>) NIL_CHK(p)) protect];
  }
  @catch (JunitFrameworkAssertionFailedError *e) {
    [self addFailureWithJunitFrameworkTest:test withJunitFrameworkAssertionFailedError:e];
  }
  @catch (JavaLangThreadDeath *e) {
    @throw e;
  }
  @catch (JavaLangThrowable *e) {
    [self addErrorWithJunitFrameworkTest:test withJavaLangThrowable:e];
  }
}

- (BOOL)shouldStop {
  @synchronized(self) {
    {
      return fStop_;
    }
  }
}

- (void)startTestWithJunitFrameworkTest:(id<JunitFrameworkTest>)test {
  int count = [((id<JunitFrameworkTest>) NIL_CHK(test)) countTestCases];
  @synchronized (self) {
    fRunTests_ += count;
  }
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [[self cloneListeners] iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      id<JunitFrameworkTestListener> each = ((id<JunitFrameworkTestListener>) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      [((id<JunitFrameworkTestListener>) NIL_CHK(each)) startTestWithJunitFrameworkTest:test];
    }
  }
}

- (void)stop {
  @synchronized(self) {
    {
      fStop_ = YES;
    }
  }
}

- (BOOL)wasSuccessful {
  @synchronized(self) {
    {
      return [self failureCount] == 0 && [self errorCount] == 0;
    }
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&fListeners_, nil);
  JreOperatorRetainedAssign(&fErrors_, nil);
  JreOperatorRetainedAssign(&fFailures_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JunitFrameworkTestResult *typedCopy = (JunitFrameworkTestResult *) copy;
  typedCopy.fFailures = fFailures_;
  typedCopy.fErrors = fErrors_;
  typedCopy.fListeners = fListeners_;
  typedCopy.fRunTests = fRunTests_;
  typedCopy.fStop = fStop_;
}

@end
@implementation JunitFrameworkTestResult_$1

- (JunitFrameworkTestResult *)this$0 {
  return [[this$0_ retain] autorelease];
}
- (void)setThis$0:(JunitFrameworkTestResult *)this$0 {
  JreOperatorRetainedAssign(&this$0_, this$0);
}
@synthesize this$0 = this$0_;
- (JunitFrameworkTestCase *)val$test {
  return [[val$test_ retain] autorelease];
}
- (void)setVal$test:(JunitFrameworkTestCase *)val$test {
  JreOperatorRetainedAssign(&val$test_, val$test);
}
@synthesize val$test = val$test_;

- (void)protect {
  [((JunitFrameworkTestCase *) NIL_CHK(val$test_)) runBare];
}

- (id)initWithJunitFrameworkTestResult:(JunitFrameworkTestResult *)outer$1
            withJunitFrameworkTestCase:(JunitFrameworkTestCase *)outer$0 {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&this$0_, outer$1);
    JreOperatorRetainedAssign(&val$test_, outer$0);
  }
  return self;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&val$test_, nil);
  JreOperatorRetainedAssign(&this$0_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JunitFrameworkTestResult_$1 *typedCopy = (JunitFrameworkTestResult_$1 *) copy;
  typedCopy.this$0 = this$0_;
  typedCopy.val$test = val$test_;
}

@end
