//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/lang/Enum.java
//
//  Created by retechretech on 13-3-15.
//

@class IOSObjectArray;

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/lang/Comparable.h"

#define JavaLangEnum_serialVersionUID -4300926546619394005

@interface JavaLangEnum : NSObject < JavaIoSerializable, JavaLangComparable > {
 @public
  NSString *name__;
  int ordinal__;
}

@property (nonatomic, copy) NSString *name_;
@property (nonatomic, assign) int ordinal_;

- (id)initWithNSString:(NSString *)name
               withInt:(int)ordinal;
- (NSString *)name;
- (int)ordinal;
- (NSString *)description;
- (BOOL)isEqual:(id)other;
- (NSUInteger)hash;
- (id)clone;
- (int)compareToWithId:(JavaLangEnum *)o;
- (IOSClass *)getDeclaringClass;
+ (JavaLangEnum *)valueOfWithIOSClass:(IOSClass *)enumType
                         withNSString:(NSString *)name;
+ (IOSObjectArray *)getValuesWithIOSClass:(IOSClass *)enumType;
@end
