//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: Classes/java/util/logging/Level.java
//
//  Created by retechretech on 13-4-14.
//

@class JavaUtilArrayList;

#import "JreEmulation.h"

@interface JavaUtilLoggingLevel : NSObject {
 @public
  NSString *name_;
  int value_;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int value;

+ (JavaUtilArrayList *)known;
+ (void)setKnown:(JavaUtilArrayList *)known;
+ (JavaUtilLoggingLevel *)OFF;
+ (JavaUtilLoggingLevel *)SEVERE;
+ (JavaUtilLoggingLevel *)WARNING;
+ (JavaUtilLoggingLevel *)INFO;
+ (JavaUtilLoggingLevel *)CONFIG;
+ (JavaUtilLoggingLevel *)FINE;
+ (JavaUtilLoggingLevel *)FINER;
+ (JavaUtilLoggingLevel *)FINEST;
+ (JavaUtilLoggingLevel *)ALL;
- (id)initWithNSString:(NSString *)name
               withInt:(int)value;
- (NSString *)getName;
- (NSString *)getLocalizedName;
- (NSString *)description;
- (int)intValue;
+ (JavaUtilLoggingLevel *)parseWithNSString:(NSString *)name;
- (BOOL)isEqual:(id)ox;
- (NSUInteger)hash;
@end
