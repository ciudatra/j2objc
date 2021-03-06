//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/logging/NSLogHandler.java
//
//  Created by retechretech on 13-4-26.
//

#import "java/lang/StringBuffer.h"
#import "java/util/logging/Handler.h"
#import "java/util/logging/Level.h"
#import "java/util/logging/LogRecord.h"
#import "java/util/logging/NSLogHandler.h"
#import "java/lang/Throwable.h"

@implementation JavaUtilLoggingNSLogHandler

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  if ((self = [super init])) {
    [self setFormatterWithJavaUtilLoggingFormatter:[[[JavaUtilLoggingNSLogHandler_NSLogFormatter alloc] init] autorelease]];
    JreMemDebugAdd(self);
  }
  return self;
}

- (void)close {
}

- (void)flush {
}

- (void)publishWithJavaUtilLoggingLogRecord:(JavaUtilLoggingLogRecord *)record {
  if (![self isLoggableWithJavaUtilLoggingLogRecord:record]) {
    return;
  }
  [self logWithJavaUtilLoggingLogRecord:record];
}

- (void)logWithJavaUtilLoggingLogRecord:(JavaUtilLoggingLogRecord *)record   {
    NSLog(@"%@: %@", [NSThread currentThread],
    [[self getFormatter] formatWithJavaUtilLoggingLogRecord:record]);
    [[record getThrown] printStackTrace];
    
    // TODO(user): replace NSLog above with stderr below, once desired format
    // is decided.
    //    NSString *msg =
    //        [[self getFormatter] formatWithJavaUtilLoggingLogRecord:record];
    //    const char *cmsg = [msg cStringUsingEncoding:NSASCIIStringEncoding];
    //    fprintf(stderr, "%s\n", cmsg);
  }

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
@implementation JavaUtilLoggingNSLogHandler_NSLogFormatter

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (NSString *)formatWithJavaUtilLoggingLogRecord:(JavaUtilLoggingLogRecord *)record {
  JavaLangStringBuffer *sb = [[[JavaLangStringBuffer alloc] init] autorelease];
  [((JavaLangStringBuffer *) NIL_CHK(sb)) appendWithNSString:[((JavaUtilLoggingLogRecord *) NIL_CHK(record)) getLoggerName]];
  [((JavaLangStringBuffer *) NIL_CHK(sb)) appendWithNSString:@": "];
  [((JavaLangStringBuffer *) NIL_CHK(sb)) appendWithNSString:[[((JavaUtilLoggingLogRecord *) NIL_CHK(record)) getLevel] getLocalizedName]];
  [((JavaLangStringBuffer *) NIL_CHK(sb)) appendWithNSString:@": "];
  [((JavaLangStringBuffer *) NIL_CHK(sb)) appendWithNSString:[((JavaUtilLoggingLogRecord *) NIL_CHK(record)) getMessage]];
  return [((JavaLangStringBuffer *) NIL_CHK(sb)) description];
}

- (id)init {
  return JreMemDebugAdd([super init]);
}

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
