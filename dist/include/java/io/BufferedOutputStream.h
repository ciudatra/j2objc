//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/BufferedOutputStream.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSByteArray;
@class JavaIoOutputStream;

#import "JreEmulation.h"
#import "java/io/FilterOutputStream.h"

@interface JavaIoBufferedOutputStream : JavaIoFilterOutputStream {
 @public
  IOSByteArray *buf_;
  int count_;
}

@property (nonatomic, retain) IOSByteArray *buf;
@property (nonatomic, assign) int count;

- (id)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;
- (id)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                         withInt:(int)size;
- (void)flush;
- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer
                           withInt:(int)offset
                           withInt:(int)length;
- (void)close;
- (void)writeWithInt:(int)oneByte;
- (void)flushInternal;
@end
