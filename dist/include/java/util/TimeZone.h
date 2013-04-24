//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/TimeZone.java
//
//  Created by retechretech on 13-4-24.
//

@class IOSObjectArray;
@class JavaLangStringBuilder;
@class JavaUtilDate;
@class JavaUtilLocale;
@class JavaUtilRegexPattern;

#import "JreEmulation.h"
#import "java/io/Serializable.h"

#define JavaUtilTimeZone_LONG 1
#define JavaUtilTimeZone_SHORT 0

@interface JavaUtilTimeZone : NSObject < JavaIoSerializable, NSCopying > {
 @public
  NSString *ID_;
  id nativeTimeZone_;
}

@property (nonatomic, copy) NSString *ID;
@property (nonatomic, retain) id nativeTimeZone;

+ (JavaUtilRegexPattern *)CUSTOM_ZONE_ID_PATTERN;
+ (int)SHORT;
+ (int)LONG;
+ (JavaUtilTimeZone *)GMT;
+ (JavaUtilTimeZone *)UTC;
+ (JavaUtilTimeZone *)defaultTimeZone;
+ (void)setDefaultTimeZone:(JavaUtilTimeZone *)defaultTimeZone;
- (id)init;
- (id)initWithId:(id)nativeTimeZone;
- (id)clone;
+ (IOSObjectArray *)getAvailableIDs;
+ (IOSObjectArray *)getAvailableIDsWithInt:(int)offsetMillis;
+ (JavaUtilTimeZone *)getDefault;
+ (JavaUtilTimeZone *)getDefaultNativeTimeZone;
- (NSString *)getDisplayName;
- (NSString *)getDisplayNameWithJavaUtilLocale:(JavaUtilLocale *)locale;
- (NSString *)getDisplayNameWithBOOL:(BOOL)daylightTime
                             withInt:(int)style;
- (NSString *)getDisplayNameWithBOOL:(BOOL)daylightTime
                             withInt:(int)style
                  withJavaUtilLocale:(JavaUtilLocale *)locale;
- (NSString *)displayNameWithBOOL:(BOOL)daylightTime
                         withBOOL:(BOOL)shortName
               withJavaUtilLocale:(JavaUtilLocale *)locale;
- (void)appendNumberWithJavaLangStringBuilder:(JavaLangStringBuilder *)builder
                                      withInt:(int)count
                                      withInt:(int)value;
- (NSString *)getID;
- (int)getDSTSavings;
- (int)getOffsetWithLongInt:(long long int)time;
- (int)getOffsetWithInt:(int)era
                withInt:(int)year
                withInt:(int)month
                withInt:(int)day
                withInt:(int)dayOfWeek
                withInt:(int)timeOfDayMillis;
- (int)getRawOffset;
+ (JavaUtilTimeZone *)getTimeZoneWithNSString:(NSString *)id_;
+ (JavaUtilTimeZone *)getNativeTimeZoneWithNSString:(NSString *)id_;
+ (JavaUtilTimeZone *)getCustomTimeZoneWithNSString:(NSString *)id_;
- (BOOL)hasSameRulesWithJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone;
- (BOOL)inDaylightTimeWithJavaUtilDate:(JavaUtilDate *)time;
+ (void)setDefaultWithJavaUtilTimeZone:(JavaUtilTimeZone *)timeZone;
- (void)setIDWithNSString:(NSString *)id_;
- (void)setRawOffsetWithInt:(int)offsetMillis;
- (BOOL)useDaylightTime;
- (id)copyWithZone:(NSZone *)zone;
@end
