//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/logging/Handler.java
//
//  Created by retechretech on 13-4-19.
//

@class JavaUtilLoggingFormatter;
@class JavaUtilLoggingLevel;
@class JavaUtilLoggingLogRecord;

#import "JreEmulation.h"

@interface JavaUtilLoggingHandler : NSObject {
 @public
  JavaUtilLoggingFormatter *formatter_;
  JavaUtilLoggingLevel *level_;
}

@property (nonatomic, retain) JavaUtilLoggingFormatter *formatter;
@property (nonatomic, retain) JavaUtilLoggingLevel *level;

- (void)close;
- (void)flush;
- (JavaUtilLoggingFormatter *)getFormatter;
- (JavaUtilLoggingLevel *)getLevel;
- (BOOL)isLoggableWithJavaUtilLoggingLogRecord:(JavaUtilLoggingLogRecord *)record;
- (void)publishWithJavaUtilLoggingLogRecord:(JavaUtilLoggingLogRecord *)record;
- (void)setFormatterWithJavaUtilLoggingFormatter:(JavaUtilLoggingFormatter *)newFormatter;
- (void)setLevelWithJavaUtilLoggingLevel:(JavaUtilLoggingLevel *)newLevel;
- (id)init;
@end