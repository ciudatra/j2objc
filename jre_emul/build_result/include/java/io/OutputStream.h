//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/OutputStream.java
//
//  Created by retechretech on 13-3-16.
//

@class IOSByteArray;

#import "JreEmulation.h"
#import "java/io/Closeable.h"
#import "java/io/Flushable.h"

@interface JavaIoOutputStream : NSObject < JavaIoCloseable, JavaIoFlushable > {
}

- (id)init;
- (void)close;
- (void)flush;
- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer;
- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer
                           withInt:(int)offset
                           withInt:(int)count;
- (void)writeWithInt:(int)oneByte;
- (BOOL)checkError;
@end
