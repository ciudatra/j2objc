//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FilterOutputStream.java
//
//  Created by retechretech on 13-4-14.
//

@class IOSByteArray;

#import "JreEmulation.h"
#import "java/io/OutputStream.h"

@interface JavaIoFilterOutputStream : JavaIoOutputStream {
 @public
  JavaIoOutputStream *out_;
}

@property (nonatomic, retain) JavaIoOutputStream *out;

- (id)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg;
- (void)close;
- (void)flush;
- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer;
- (void)writeWithJavaLangByteArray:(IOSByteArray *)buffer
                           withInt:(int)offset
                           withInt:(int)length;
- (void)writeWithInt:(int)oneByte;
@end
