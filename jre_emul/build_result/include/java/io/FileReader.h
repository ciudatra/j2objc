//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/FileReader.java
//
//  Created by retechretech on 13-3-16.
//

@class JavaIoFile;
@class JavaIoFileDescriptor;

#import "JreEmulation.h"
#import "java/io/InputStreamReader.h"

@interface JavaIoFileReader : JavaIoInputStreamReader {
}

- (id)initWithJavaIoFile:(JavaIoFile *)file;
- (id)initWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd;
- (id)initWithNSString:(NSString *)filename;
@end
