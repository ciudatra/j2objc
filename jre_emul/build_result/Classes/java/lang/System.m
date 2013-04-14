//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/lang/System.java
//
//  Created by retechretech on 13-4-14.
//

#import "java/io/PrintStream.h"
#import "java/lang/System.h"
#import "java/util/Properties.h"
#import "IOSBooleanArray.h"
#import "IOSByteArray.h"
#import "IOSCharArray.h"
#import "IOSDoubleArray.h"
#import "IOSFloatArray.h"
#import "IOSIntArray.h"
#import "IOSLongArray.h"
#import "IOSObjectArray.h"
#import "IOSShortArray.h"
#import "java/lang/ArrayIndexOutOfBoundsException.h"
#import "java/lang/ArrayStoreException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/NullPointerException.h"
#include "mach/mach_time.h"

@implementation JavaLangSystem

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangSystem_props_ name:@"JavaLangSystem_props_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangSystem_out_ name:@"JavaLangSystem_out_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangSystem_err_ name:@"JavaLangSystem_err_"]];
  return result;
}

static JavaUtilProperties * JavaLangSystem_props_;
static JavaIoPrintStream * JavaLangSystem_out_;
static JavaIoPrintStream * JavaLangSystem_err_;

+ (JavaUtilProperties *)props {
  return JavaLangSystem_props_;
}

+ (void)setProps:(JavaUtilProperties *)props {
  JreOperatorRetainedAssign(&JavaLangSystem_props_, props);
}

+ (JavaIoPrintStream *)out {
  return JavaLangSystem_out_;
}

+ (JavaIoPrintStream *)err {
  return JavaLangSystem_err_;
}

+ (long long int)currentTimeMillis   {
    return (long long) ([[NSDate date] timeIntervalSince1970] * 1000);
  }

+ (int)identityHashCodeWithId:(id)anObject   {
    return (int) (intptr_t) anObject;
  }

+ (void)arraycopyWithId:(id)src
                withInt:(int)srcPos
                 withId:(id)dest
                withInt:(int)destPos
                withInt:(int)length   {
    id exception = nil;
    if (!src || !dest) {
      exception = [[JavaLangNullPointerException alloc] init];
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
    }
    if (srcPos < 0 || destPos < 0) {
      exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
    }
    if (![src isMemberOfClass:[IOSArray class]] && ![dest isMemberOfClass:[src class]]) {
      exception = [[JavaLangArrayStoreException alloc] init];
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
    }
    if (exception) {
      @throw exception;
    }
    [(IOSArray *) src arraycopy:NSMakeRange(srcPos, length)
    destination:(IOSArray *) dest
    offset:destPos];
  }

+ (long long int)nanoTime   {
    // Get the timebase info
    mach_timebase_info_data_t info;
    mach_timebase_info(&info);
    
    uint64_t time = mach_absolute_time();
    
    // Convert to nanoseconds and return,
    return (time * info.numer) / info.denom;
  }

+ (void)exitWithInt:(int)status   {
    exit(status);
  }

+ (JavaUtilProperties *)getProperties {
  if (JavaLangSystem_props_ == nil) {
    JreOperatorRetainedAssign(&JavaLangSystem_props_, [[[JavaUtilProperties alloc] init] autorelease]);
    [JavaLangSystem_props_ setPropertyWithNSString:@"os.name" withNSString:@"Mac OS X"];
    [JavaLangSystem_props_ setPropertyWithNSString:@"file.separator" withNSString:@"/"];
    [JavaLangSystem_props_ setPropertyWithNSString:@"line.separator" withNSString:@"\n"];
    [JavaLangSystem_props_ setPropertyWithNSString:@"path.separator" withNSString:@":"];
    [JavaLangSystem setSystemPropertiesWithJavaUtilProperties:JavaLangSystem_props_];
  }
  return JavaLangSystem_props_;
}

+ (void)setSystemPropertiesWithJavaUtilProperties:(JavaUtilProperties *)props   {
    [props setPropertyWithNSString:@"user.home" withNSString:NSHomeDirectory()];
    [props setPropertyWithNSString:@"user.name" withNSString:NSUserName()];
    NSString *curDir = [[NSFileManager defaultManager] currentDirectoryPath];
    [props setPropertyWithNSString:@"user.dir" withNSString:curDir];
    
    NSString *tmpDir = NSTemporaryDirectory();
    int iLast = [tmpDir length] - 1;
    if (iLast >= 0 && [tmpDir characterAtIndex:iLast] == '/') {
      tmpDir = [tmpDir substringToIndex:iLast];
    }
    [props setPropertyWithNSString:@"java.io.tmpdir" withNSString:tmpDir];
  }

+ (NSString *)getPropertyWithNSString:(NSString *)key {
  return [[JavaLangSystem getProperties] getPropertyWithNSString:key];
}

+ (NSString *)getPropertyWithNSString:(NSString *)key
                         withNSString:(NSString *)defaultValue {
  NSString *result = [[JavaLangSystem getProperties] getPropertyWithNSString:key];
  return result != nil ? result : defaultValue;
}

+ (void)setPropertyWithNSString:(NSString *)key
                   withNSString:(NSString *)value {
  [[JavaLangSystem getProperties] setPropertyWithNSString:key withNSString:value];
}

+ (void)setPropertiesWithJavaUtilProperties:(JavaUtilProperties *)properties {
  JreOperatorRetainedAssign(&JavaLangSystem_props_, properties);
}

+ (NSString *)clearPropertyWithNSString:(NSString *)key {
  JavaUtilProperties *properties = [JavaLangSystem getProperties];
  NSString *result = [((JavaUtilProperties *) NIL_CHK(properties)) getPropertyWithNSString:key];
  [((JavaUtilProperties *) NIL_CHK(properties)) removeWithId:key];
  return result;
}

+ (void)initialize {
  if (self == [JavaLangSystem class]) {
    JreOperatorRetainedAssign(&JavaLangSystem_out_, [[[JavaIoPrintStream alloc] initWithJavaIoOutputStream:[[[JavaLangSystem_$1 alloc] init] autorelease]] autorelease]);
    JreOperatorRetainedAssign(&JavaLangSystem_err_, [[[JavaIoPrintStream alloc] initWithJavaIoOutputStream:[[[JavaLangSystem_$2 alloc] init] autorelease]] autorelease]);
  }
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaLangSystem_$1

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (void)writeWithInt:(int)b   {
    putc(b, stdout);
  }

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaLangSystem_$2

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (void)writeWithInt:(int)b   {
    putc(b, stderr);
  }

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
