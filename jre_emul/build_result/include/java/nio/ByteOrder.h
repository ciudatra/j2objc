//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/ByteOrder.java
//
//  Created by retechretech on 13-3-16.
//

#import "JreEmulation.h"

@interface JavaNioByteOrder : NSObject {
 @public
  NSString *name_;
}

@property (nonatomic, copy) NSString *name;

+ (JavaNioByteOrder *)getBIG_ENDIAN;
+ (JavaNioByteOrder *)getLITTLE_ENDIAN;
+ (JavaNioByteOrder *)NATIVE_ORDER;
+ (BOOL)isLittleEndian;
+ (JavaNioByteOrder *)nativeOrder;
- (id)initWithNSString:(NSString *)name;
- (NSString *)description;
@end
