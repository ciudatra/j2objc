//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/logging/Logger.java
//
//  Created by retechretech on 13-4-24.
//

@class IOSObjectArray;
@class JavaLangThrowable;
@class JavaUtilLoggingHandler;
@class JavaUtilLoggingLevel;
@class JavaUtilLoggingLogRecord;
@protocol JavaUtilList;

#import "JreEmulation.h"

@interface JavaUtilLoggingLogger : NSObject {
 @public
  id<JavaUtilList> handlers_;
  NSString *name_;
  JavaUtilLoggingLevel *level_;
  int levelValue_;
  JavaUtilLoggingLogger *parent_;
  BOOL useParentHandlers_;
}

@property (nonatomic, retain) id<JavaUtilList> handlers;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, retain) JavaUtilLoggingLevel *level;
@property (nonatomic, assign) int levelValue;
@property (nonatomic, retain) JavaUtilLoggingLogger *parent;
@property (nonatomic, assign) BOOL useParentHandlers;

+ (NSString *)GLOBAL_LOGGER_NAME;
+ (JavaUtilLoggingLogger *)getLoggerWithNSString:(NSString *)name;
- (id)initWithNSString:(NSString *)name
          withNSString:(NSString *)resourceName;
- (void)logWithJavaUtilLoggingLogRecord:(JavaUtilLoggingLogRecord *)record;
- (void)logWithJavaUtilLoggingLevel:(JavaUtilLoggingLevel *)level
                       withNSString:(NSString *)msg;
- (void)logWithJavaUtilLoggingLevel:(JavaUtilLoggingLevel *)level
                       withNSString:(NSString *)msg
              withJavaLangThrowable:(JavaLangThrowable *)thrown;
- (void)severeWithNSString:(NSString *)msg;
- (void)warningWithNSString:(NSString *)msg;
- (void)infoWithNSString:(NSString *)msg;
- (void)configWithNSString:(NSString *)msg;
- (void)fineWithNSString:(NSString *)msg;
- (void)finerWithNSString:(NSString *)msg;
- (void)finestWithNSString:(NSString *)msg;
- (void)addHandlerWithJavaUtilLoggingHandler:(JavaUtilLoggingHandler *)handler;
- (IOSObjectArray *)getHandlers;
- (void)removeHandlerWithJavaUtilLoggingHandler:(JavaUtilLoggingHandler *)handler;
- (JavaUtilLoggingLevel *)getLevel;
- (void)setLevelWithJavaUtilLoggingLevel:(JavaUtilLoggingLevel *)newLevel;
- (NSString *)getName;
- (void)setNameWithNSString:(NSString *)newName;
- (JavaUtilLoggingLogger *)getParent;
- (void)setParentWithJavaUtilLoggingLogger:(JavaUtilLoggingLogger *)newParent;
- (BOOL)getUseParentHandlers;
- (void)setUseParentHandlersWithBOOL:(BOOL)newUseParentHandlers;
- (BOOL)isLoggableWithJavaUtilLoggingLevel:(JavaUtilLoggingLevel *)messageLevel;
@end
