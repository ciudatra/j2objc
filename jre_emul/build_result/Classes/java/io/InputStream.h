//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/InputStream.java
//
//  Created by retechretech on 13-4-14.
//

@class IOSByteArray;

#import "JreEmulation.h"
#import "java/io/Closeable.h"

@interface JavaIoInputStream : NSObject < JavaIoCloseable > {
}

+ (IOSByteArray *)skipBuf;
+ (void)setSkipBuf:(IOSByteArray *)skipBuf;
- (id)init;
- (int)available;
- (void)close;
- (void)markWithInt:(int)readlimit;
- (BOOL)markSupported;
- (int)read;
- (int)readWithJavaLangByteArray:(IOSByteArray *)b;
- (int)readWithJavaLangByteArray:(IOSByteArray *)b
                         withInt:(int)offset
                         withInt:(int)length;
- (void)reset;
- (long long int)skipWithLongInt:(long long int)n;
@end
