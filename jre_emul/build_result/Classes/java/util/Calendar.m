//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/java/util/Calendar.java
//
//  Created by retechretech on 13-4-14.
//

#import "IOSBooleanArray.h"
#import "IOSClass.h"
#import "IOSIntArray.h"
#import "IOSObjectArray.h"
#import "java/lang/AssertionError.h"
#import "java/lang/Boolean.h"
#import "java/lang/ClassCastException.h"
#import "java/lang/CloneNotSupportedException.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/Integer.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuilder.h"
#import "java/util/Calendar.h"
#import "java/util/Date.h"
#import "java/util/GregorianCalendar.h"
#import "java/util/HashMap.h"
#import "java/util/Locale.h"
#import "java/util/Map.h"
#import "java/util/TimeZone.h"

@implementation JavaUtilCalendar

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaUtilCalendar_FIELD_NAMES_ name:@"JavaUtilCalendar_FIELD_NAMES_"]];
  return result;
}

static IOSObjectArray * JavaUtilCalendar_FIELD_NAMES_;

@synthesize areFieldsSet = areFieldsSet_;
- (IOSIntArray *)fields {
  return fields_;
}
- (void)setFields:(IOSIntArray *)fields {
  JreOperatorRetainedAssign(&fields_, fields);
}
@synthesize fields = fields_;
- (IOSBooleanArray *)isSet_ {
  return isSet__;
}
- (void)setIsSet_:(IOSBooleanArray *)isSet_ {
  JreOperatorRetainedAssign(&isSet__, isSet_);
}
@synthesize isSet_ = isSet__;
@synthesize isTimeSet = isTimeSet_;
@synthesize time = time_;
@synthesize lastTimeFieldSet = lastTimeFieldSet_;
@synthesize lastDateFieldSet = lastDateFieldSet_;
@synthesize lenient = lenient_;
@synthesize firstDayOfWeek = firstDayOfWeek_;
@synthesize minimalDaysInFirstWeek = minimalDaysInFirstWeek_;
- (JavaUtilTimeZone *)zone {
  return zone_;
}
- (void)setZone:(JavaUtilTimeZone *)zone {
  JreOperatorRetainedAssign(&zone_, zone);
}
@synthesize zone = zone_;

+ (int)JANUARY {
  return JavaUtilCalendar_JANUARY;
}

+ (int)FEBRUARY {
  return JavaUtilCalendar_FEBRUARY;
}

+ (int)MARCH {
  return JavaUtilCalendar_MARCH;
}

+ (int)APRIL {
  return JavaUtilCalendar_APRIL;
}

+ (int)MAY {
  return JavaUtilCalendar_MAY;
}

+ (int)JUNE {
  return JavaUtilCalendar_JUNE;
}

+ (int)JULY {
  return JavaUtilCalendar_JULY;
}

+ (int)AUGUST {
  return JavaUtilCalendar_AUGUST;
}

+ (int)SEPTEMBER {
  return JavaUtilCalendar_SEPTEMBER;
}

+ (int)OCTOBER {
  return JavaUtilCalendar_OCTOBER;
}

+ (int)NOVEMBER {
  return JavaUtilCalendar_NOVEMBER;
}

+ (int)DECEMBER {
  return JavaUtilCalendar_DECEMBER;
}

+ (int)UNDECIMBER {
  return JavaUtilCalendar_UNDECIMBER;
}

+ (int)SUNDAY {
  return JavaUtilCalendar_SUNDAY;
}

+ (int)MONDAY {
  return JavaUtilCalendar_MONDAY;
}

+ (int)TUESDAY {
  return JavaUtilCalendar_TUESDAY;
}

+ (int)WEDNESDAY {
  return JavaUtilCalendar_WEDNESDAY;
}

+ (int)THURSDAY {
  return JavaUtilCalendar_THURSDAY;
}

+ (int)FRIDAY {
  return JavaUtilCalendar_FRIDAY;
}

+ (int)SATURDAY {
  return JavaUtilCalendar_SATURDAY;
}

+ (int)ERA {
  return JavaUtilCalendar_ERA;
}

+ (int)YEAR {
  return JavaUtilCalendar_YEAR;
}

+ (int)MONTH {
  return JavaUtilCalendar_MONTH;
}

+ (int)WEEK_OF_YEAR {
  return JavaUtilCalendar_WEEK_OF_YEAR;
}

+ (int)WEEK_OF_MONTH {
  return JavaUtilCalendar_WEEK_OF_MONTH;
}

+ (int)DATE {
  return JavaUtilCalendar_DATE;
}

+ (int)DAY_OF_MONTH {
  return JavaUtilCalendar_DAY_OF_MONTH;
}

+ (int)DAY_OF_YEAR {
  return JavaUtilCalendar_DAY_OF_YEAR;
}

+ (int)DAY_OF_WEEK {
  return JavaUtilCalendar_DAY_OF_WEEK;
}

+ (int)DAY_OF_WEEK_IN_MONTH {
  return JavaUtilCalendar_DAY_OF_WEEK_IN_MONTH;
}

+ (int)AM_PM {
  return JavaUtilCalendar_AM_PM;
}

+ (int)HOUR {
  return JavaUtilCalendar_HOUR;
}

+ (int)HOUR_OF_DAY {
  return JavaUtilCalendar_HOUR_OF_DAY;
}

+ (int)MINUTE {
  return JavaUtilCalendar_MINUTE;
}

+ (int)SECOND {
  return JavaUtilCalendar_SECOND;
}

+ (int)MILLISECOND {
  return JavaUtilCalendar_MILLISECOND;
}

+ (int)ZONE_OFFSET {
  return JavaUtilCalendar_ZONE_OFFSET;
}

+ (int)DST_OFFSET {
  return JavaUtilCalendar_DST_OFFSET;
}

+ (int)FIELD_COUNT {
  return JavaUtilCalendar_FIELD_COUNT;
}

+ (int)AM {
  return JavaUtilCalendar_AM;
}

+ (int)PM {
  return JavaUtilCalendar_PM;
}

+ (int)ALL_STYLES {
  return JavaUtilCalendar_ALL_STYLES;
}

+ (int)SHORT {
  return JavaUtilCalendar_SHORT;
}

+ (int)LONG {
  return JavaUtilCalendar_LONG;
}

+ (IOSObjectArray *)FIELD_NAMES {
  return JavaUtilCalendar_FIELD_NAMES_;
}

- (id)init {
  return JreMemDebugAdd([self initJavaUtilCalendarWithJavaUtilTimeZone:[JavaUtilTimeZone getDefault] withJavaUtilLocale:[JavaUtilLocale getDefault]]);
}

- (id)initJavaUtilCalendarWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&fields_, [[[IOSIntArray alloc] initWithLength:JavaUtilCalendar_FIELD_COUNT] autorelease]);
    JreOperatorRetainedAssign(&isSet__, [[[IOSBooleanArray alloc] initWithLength:JavaUtilCalendar_FIELD_COUNT] autorelease]);
    areFieldsSet_ = isTimeSet_ = NO;
    [self setLenientWithBOOL:YES];
    [self setTimeZoneWithJavaUtilTimeZone:timezone];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone {
  return [self initJavaUtilCalendarWithJavaUtilTimeZone:timezone];
}

- (id)initJavaUtilCalendarWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone
                            withJavaUtilLocale:(JavaUtilLocale *)locale {
  if ((self = [self initJavaUtilCalendarWithJavaUtilTimeZone:timezone])) {
    [self initInstanceWithJavaUtilLocale:locale];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone
            withJavaUtilLocale:(JavaUtilLocale *)locale {
  return [self initJavaUtilCalendarWithJavaUtilTimeZone:timezone withJavaUtilLocale:locale];
}

- (void)initInstanceWithJavaUtilLocale:(JavaUtilLocale *)locale OBJC_METHOD_FAMILY_NONE   {
    // Lookup NSLocale instance.
    NSMutableDictionary *parts = [NSMutableDictionary dictionary];
    NSString *language = [locale getLanguage];
    if ([language length] > 0) {
      [parts setObject:language forKey:NSLocaleLanguageCode];
    }
    NSString *country = [locale getCountry];
    if ([country length] > 0) {
      [parts setObject:country forKey:NSLocaleCountryCode];
    }
    NSString *variant = [locale getVariant];
    if ([variant length] > 0) {
      [parts setObject:parts forKey:NSLocaleVariantCode];
    }
    NSString *localeId = [NSLocale localeIdentifierFromComponents:parts];
    NSLocale *nativeLocale = AUTORELEASE([[NSLocale alloc] initWithLocaleIdentifier:localeId]);
    
    // Initialize NSCalendar with locale.
    NSCalendar *calendar = [nativeLocale objectForKey:NSLocaleCalendar];
    [self setFirstDayOfWeekWithInt:[calendar firstWeekday]];
    [self setMinimalDaysInFirstWeekWithInt:[calendar minimumDaysInFirstWeek]];
  }

- (void)addWithInt:(int)field
           withInt:(int)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (BOOL)afterWithId:(id)calendar {
  if (!([calendar isKindOfClass:[JavaUtilCalendar class]])) {
    return NO;
  }
  return [self getTimeInMillis] > [((JavaUtilCalendar *) calendar) getTimeInMillis];
}

- (BOOL)beforeWithId:(id)calendar {
  if (!([calendar isKindOfClass:[JavaUtilCalendar class]])) {
    return NO;
  }
  return [self getTimeInMillis] < [((JavaUtilCalendar *) calendar) getTimeInMillis];
}

- (void)clear {
  for (int i = 0; i < JavaUtilCalendar_FIELD_COUNT; i++) {
    [((IOSIntArray *) NIL_CHK(fields_)) replaceIntAtIndex:i withInt:0];
    [((IOSBooleanArray *) NIL_CHK(isSet__)) replaceBooleanAtIndex:i withBoolean:NO];
  }
  areFieldsSet_ = isTimeSet_ = NO;
}

- (void)clearWithInt:(int)field {
  [((IOSIntArray *) NIL_CHK(fields_)) replaceIntAtIndex:field withInt:0];
  [((IOSBooleanArray *) NIL_CHK(isSet__)) replaceBooleanAtIndex:field withBoolean:NO];
  areFieldsSet_ = isTimeSet_ = NO;
}

- (id)clone {
  @try {
    JavaUtilCalendar *clone = (JavaUtilCalendar *) [super clone];
    ((JavaUtilCalendar *) NIL_CHK(clone)).fields = [((IOSIntArray *) NIL_CHK(fields_)) clone];
    ((JavaUtilCalendar *) NIL_CHK(clone)).isSet_ = [((IOSBooleanArray *) NIL_CHK(isSet__)) clone];
    ((JavaUtilCalendar *) NIL_CHK(clone)).zone = (JavaUtilTimeZone *) [((JavaUtilTimeZone *) NIL_CHK(zone_)) clone];
    return clone;
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw [[[JavaLangAssertionError alloc] initWithId:e] autorelease];
  }
}

- (void)complete {
  if (!isTimeSet_) {
    [self computeTime];
    isTimeSet_ = YES;
  }
  if (!areFieldsSet_) {
    [self computeFields];
    areFieldsSet_ = YES;
  }
}

- (void)computeFields {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)computeTime {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if (!([object isKindOfClass:[JavaUtilCalendar class]])) {
    return NO;
  }
  JavaUtilCalendar *cal = (JavaUtilCalendar *) object;
  return [self getTimeInMillis] == [((JavaUtilCalendar *) NIL_CHK(cal)) getTimeInMillis] && [self isLenient] == [((JavaUtilCalendar *) NIL_CHK(cal)) isLenient] && [self getFirstDayOfWeek] == [((JavaUtilCalendar *) NIL_CHK(cal)) getFirstDayOfWeek] && [self getMinimalDaysInFirstWeek] == [((JavaUtilCalendar *) NIL_CHK(cal)) getMinimalDaysInFirstWeek] && [[self getTimeZone] isEqual:[((JavaUtilCalendar *) NIL_CHK(cal)) getTimeZone]];
}

- (int)getWithInt:(int)field {
  [self complete];
  return [((IOSIntArray *) NIL_CHK(fields_)) intAtIndex:field];
}

- (int)getActualMaximumWithInt:(int)field {
  int value, next;
  if ([self getMaximumWithInt:field] == (next = [self getLeastMaximumWithInt:field])) {
    return next;
  }
  [self complete];
  long long int orgTime = time_;
  [self setWithInt:field withInt:next];
  do {
    value = next;
    [self rollWithInt:field withBOOL:YES];
    next = [self getWithInt:field];
  }
  while (next > value);
  time_ = orgTime;
  areFieldsSet_ = NO;
  return value;
}

- (int)getActualMinimumWithInt:(int)field {
  int value, next;
  if ([self getMinimumWithInt:field] == (next = [self getGreatestMinimumWithInt:field])) {
    return next;
  }
  [self complete];
  long long int orgTime = time_;
  [self setWithInt:field withInt:next];
  do {
    value = next;
    [self rollWithInt:field withBOOL:NO];
    next = [self getWithInt:field];
  }
  while (next < value);
  time_ = orgTime;
  areFieldsSet_ = NO;
  return value;
}

+ (IOSObjectArray *)getAvailableLocales {
  @synchronized([self class]) {
    {
      return [JavaUtilLocale getAvailableLocales];
    }
  }
}

- (int)getFirstDayOfWeek {
  return firstDayOfWeek_;
}

- (int)getGreatestMinimumWithInt:(int)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (JavaUtilCalendar *)getInstance {
  @synchronized([self class]) {
    {
      return [[[JavaUtilGregorianCalendar alloc] init] autorelease];
    }
  }
}

+ (JavaUtilCalendar *)getInstanceWithJavaUtilLocale:(JavaUtilLocale *)locale {
  @synchronized([self class]) {
    {
      return [[[JavaUtilGregorianCalendar alloc] initWithJavaUtilLocale:locale] autorelease];
    }
  }
}

+ (JavaUtilCalendar *)getInstanceWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone {
  @synchronized([self class]) {
    {
      return [[[JavaUtilGregorianCalendar alloc] initWithJavaUtilTimeZone:timezone] autorelease];
    }
  }
}

+ (JavaUtilCalendar *)getInstanceWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone
                                   withJavaUtilLocale:(JavaUtilLocale *)locale {
  @synchronized([self class]) {
    {
      return [[[JavaUtilGregorianCalendar alloc] initWithJavaUtilTimeZone:timezone withJavaUtilLocale:locale] autorelease];
    }
  }
}

- (int)getLeastMaximumWithInt:(int)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)getMaximumWithInt:(int)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (int)getMinimalDaysInFirstWeek {
  return minimalDaysInFirstWeek_;
}

- (int)getMinimumWithInt:(int)field {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (JavaUtilDate *)getTime {
  return [[[JavaUtilDate alloc] initWithLongInt:[self getTimeInMillis]] autorelease];
}

- (long long int)getTimeInMillis {
  if (!isTimeSet_) {
    [self computeTime];
    isTimeSet_ = YES;
  }
  return time_;
}

- (JavaUtilTimeZone *)getTimeZone {
  return zone_;
}

- (NSUInteger)hash {
  return ([self isLenient] ? 1237 : 1231) + [self getFirstDayOfWeek] + [self getMinimalDaysInFirstWeek] + [[self getTimeZone] hash];
}

- (int)internalGetWithInt:(int)field {
  return [((IOSIntArray *) NIL_CHK(fields_)) intAtIndex:field];
}

- (BOOL)isLenient {
  return lenient_;
}

- (BOOL)isSetWithInt:(int)field {
  return [((IOSBooleanArray *) NIL_CHK(isSet__)) booleanAtIndex:field];
}

- (void)rollWithInt:(int)field
            withInt:(int)value {
  BOOL increment = value >= 0;
  int count = increment ? value : -value;
  for (int i = 0; i < count; i++) {
    [self rollWithInt:field withBOOL:increment];
  }
}

- (void)rollWithInt:(int)field
           withBOOL:(BOOL)increment {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)setWithInt:(int)field
           withInt:(int)value {
  [((IOSIntArray *) NIL_CHK(fields_)) replaceIntAtIndex:field withInt:value];
  [((IOSBooleanArray *) NIL_CHK(isSet__)) replaceBooleanAtIndex:field withBoolean:YES];
  areFieldsSet_ = isTimeSet_ = NO;
  if (field > JavaUtilCalendar_MONTH && field < JavaUtilCalendar_AM_PM) {
    lastDateFieldSet_ = field;
  }
  if (field == JavaUtilCalendar_HOUR || field == JavaUtilCalendar_HOUR_OF_DAY) {
    lastTimeFieldSet_ = field;
  }
  if (field == JavaUtilCalendar_AM_PM) {
    lastTimeFieldSet_ = JavaUtilCalendar_HOUR;
  }
}

- (void)setWithInt:(int)year
           withInt:(int)month
           withInt:(int)day {
  [self setWithInt:JavaUtilCalendar_YEAR withInt:year];
  [self setWithInt:JavaUtilCalendar_MONTH withInt:month];
  [self setWithInt:JavaUtilCalendar_DATE withInt:day];
}

- (void)setWithInt:(int)year
           withInt:(int)month
           withInt:(int)day
           withInt:(int)hourOfDay
           withInt:(int)minute {
  [self setWithInt:year withInt:month withInt:day];
  [self setWithInt:JavaUtilCalendar_HOUR_OF_DAY withInt:hourOfDay];
  [self setWithInt:JavaUtilCalendar_MINUTE withInt:minute];
}

- (void)setWithInt:(int)year
           withInt:(int)month
           withInt:(int)day
           withInt:(int)hourOfDay
           withInt:(int)minute
           withInt:(int)second {
  [self setWithInt:year withInt:month withInt:day withInt:hourOfDay withInt:minute];
  [self setWithInt:JavaUtilCalendar_SECOND withInt:second];
}

- (void)setFirstDayOfWeekWithInt:(int)value {
  firstDayOfWeek_ = value;
}

- (void)setLenientWithBOOL:(BOOL)value {
  lenient_ = value;
}

- (void)setMinimalDaysInFirstWeekWithInt:(int)value {
  minimalDaysInFirstWeek_ = value;
}

- (void)setTimeWithJavaUtilDate:(JavaUtilDate *)date {
  [self setTimeInMillisWithLongInt:[((JavaUtilDate *) NIL_CHK(date)) getTime]];
}

- (void)setTimeInMillisWithLongInt:(long long int)milliseconds {
  if (!isTimeSet_ || !areFieldsSet_ || time_ != milliseconds) {
    time_ = milliseconds;
    isTimeSet_ = YES;
    areFieldsSet_ = NO;
    [self complete];
  }
}

- (void)setTimeZoneWithJavaUtilTimeZone:(JavaUtilTimeZone *)timezone {
  JreOperatorRetainedAssign(&zone_, timezone);
  areFieldsSet_ = NO;
}

- (NSString *)description {
  JavaLangStringBuilder *result = [[[JavaLangStringBuilder alloc] initWithNSString:[NSString stringWithFormat:@"%@[time=%@,areFieldsSet=%@,lenient=%@,zone=%@,firstDayOfWeek=%d,minimalDaysInFirstWeek=%d", [[self getClass] getName], (isTimeSet_ ? [NSString valueOfLong:time_] : @"?"), [JavaLangBoolean toStringWithBOOL:areFieldsSet_], [JavaLangBoolean toStringWithBOOL:lenient_], [((JavaUtilTimeZone *) NIL_CHK(zone_)) getID], firstDayOfWeek_, minimalDaysInFirstWeek_]] autorelease];
  for (int i = 0; i < JavaUtilCalendar_FIELD_COUNT; i++) {
    [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithUnichar:','];
    [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithNSString:((NSString *) [((IOSObjectArray *) NIL_CHK(JavaUtilCalendar_FIELD_NAMES_)) objectAtIndex:i])];
    [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithUnichar:'='];
    if ([((IOSBooleanArray *) NIL_CHK(isSet__)) booleanAtIndex:i]) {
      [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithInt:[((IOSIntArray *) NIL_CHK(fields_)) intAtIndex:i]];
    }
    else {
      [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithUnichar:'?'];
    }
  }
  [((JavaLangStringBuilder *) NIL_CHK(result)) appendWithUnichar:']'];
  return [((JavaLangStringBuilder *) NIL_CHK(result)) description];
}

- (int)compareToWithId:(JavaUtilCalendar *)anotherCalendar {
  if (anotherCalendar != nil && ![anotherCalendar isKindOfClass:[JavaUtilCalendar class]]) {
    @throw [[[JavaLangClassCastException alloc] init] autorelease];
  }
  if (anotherCalendar == nil) {
    @throw [[[JavaLangNullPointerException alloc] initWithNSString:@"anotherCalendar == null"] autorelease];
  }
  long long int timeInMillis = [self getTimeInMillis];
  long long int anotherTimeInMillis = [((JavaUtilCalendar *) NIL_CHK(anotherCalendar)) getTimeInMillis];
  if (timeInMillis > anotherTimeInMillis) {
    return 1;
  }
  if (timeInMillis == anotherTimeInMillis) {
    return 0;
  }
  return -1;
}

- (NSString *)getDisplayNameWithInt:(int)field
                            withInt:(int)style
                 withJavaUtilLocale:(JavaUtilLocale *)locale {
  if (style == JavaUtilCalendar_ALL_STYLES) {
    style = JavaUtilCalendar_SHORT;
  }
  IOSObjectArray *array = [self getDisplayNameArrayWithInt:field withInt:style withJavaUtilLocale:locale];
  int value = [self getWithInt:field];
  return (array != nil) ? ((NSString *) [((IOSObjectArray *) NIL_CHK(array)) objectAtIndex:value]) : nil;
}

- (IOSObjectArray *)getDisplayNameArrayWithInt:(int)field
                                       withInt:(int)style
                            withJavaUtilLocale:(JavaUtilLocale *)locale {
  if (field < 0 || field >= JavaUtilCalendar_FIELD_COUNT) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"bad field %d", field]] autorelease];
  }
  [JavaUtilCalendar checkStyleWithInt:style];
  return nil;
}

+ (void)checkStyleWithInt:(int)style {
  if (style != JavaUtilCalendar_ALL_STYLES && style != JavaUtilCalendar_SHORT && style != JavaUtilCalendar_LONG) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:[NSString stringWithFormat:@"bad style %d", style]] autorelease];
  }
}

- (id<JavaUtilMap>)getDisplayNamesWithInt:(int)field
                                  withInt:(int)style
                       withJavaUtilLocale:(JavaUtilLocale *)locale {
  [JavaUtilCalendar checkStyleWithInt:style];
  [self complete];
  id<JavaUtilMap> result = [[[JavaUtilHashMap alloc] init] autorelease];
  if (style == JavaUtilCalendar_SHORT || style == JavaUtilCalendar_ALL_STYLES) {
    [JavaUtilCalendar insertValuesInMapWithJavaUtilMap:result withNSStringArray:[self getDisplayNameArrayWithInt:field withInt:JavaUtilCalendar_SHORT withJavaUtilLocale:locale]];
  }
  if (style == JavaUtilCalendar_LONG || style == JavaUtilCalendar_ALL_STYLES) {
    [JavaUtilCalendar insertValuesInMapWithJavaUtilMap:result withNSStringArray:[self getDisplayNameArrayWithInt:field withInt:JavaUtilCalendar_LONG withJavaUtilLocale:locale]];
  }
  return [((id<JavaUtilMap>) NIL_CHK(result)) isEmpty] ? nil : result;
}

+ (void)insertValuesInMapWithJavaUtilMap:(id<JavaUtilMap>)map
                       withNSStringArray:(IOSObjectArray *)values {
  if (values == nil) {
    return;
  }
  for (int i = 0; i < (int) [((IOSObjectArray *) NIL_CHK(values)) count]; ++i) {
    if (((NSString *) [((IOSObjectArray *) NIL_CHK(values)) objectAtIndex:i]) != nil && ![((NSString *) [((IOSObjectArray *) NIL_CHK(values)) objectAtIndex:i]) isEmpty]) {
      [((id<JavaUtilMap>) NIL_CHK(map)) putWithId:((NSString *) [((IOSObjectArray *) NIL_CHK(values)) objectAtIndex:i]) withId:[JavaLangInteger valueOfWithInt:i]];
    }
  }
}

+ (void)initialize {
  if (self == [JavaUtilCalendar class]) {
    JreOperatorRetainedAssign(&JavaUtilCalendar_FIELD_NAMES_, [IOSObjectArray arrayWithObjects:(id[]){ @"ERA", @"YEAR", @"MONTH", @"WEEK_OF_YEAR", @"WEEK_OF_MONTH", @"DAY_OF_MONTH", @"DAY_OF_YEAR", @"DAY_OF_WEEK", @"DAY_OF_WEEK_IN_MONTH", @"AM_PM", @"HOUR", @"HOUR_OF_DAY", @"MINUTE", @"SECOND", @"MILLISECOND", @"ZONE_OFFSET", @"DST_OFFSET" } count:17 type:[IOSClass classWithClass:[NSString class]]]);
  }
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&zone_, nil);
  JreOperatorRetainedAssign(&isSet__, nil);
  JreOperatorRetainedAssign(&fields_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilCalendar *typedCopy = (JavaUtilCalendar *) copy;
  typedCopy.areFieldsSet = areFieldsSet_;
  typedCopy.fields = fields_;
  typedCopy.isSet_ = isSet__;
  typedCopy.isTimeSet = isTimeSet_;
  typedCopy.time = time_;
  typedCopy.lastTimeFieldSet = lastTimeFieldSet_;
  typedCopy.lastDateFieldSet = lastDateFieldSet_;
  typedCopy.lenient = lenient_;
  typedCopy.firstDayOfWeek = firstDayOfWeek_;
  typedCopy.minimalDaysInFirstWeek = minimalDaysInFirstWeek_;
  typedCopy.zone = zone_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:fields_ name:@"fields"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:isSet__ name:@"isSet_"]];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:zone_ name:@"zone"]];
  return result;
}

@end
