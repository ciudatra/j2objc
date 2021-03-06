//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/io/FileInputStream.java
//
//  Created by retechretech on 13-4-26.
//

@class IOSByteArray;
@class JavaIoFile;
@class JavaIoFileDescriptor;

#import "JreEmulation.h"
#import "java/io/Closeable.h"
#import "java/io/InputStream.h"

#define JavaIoFileInputStream_INVALID_STREAM -1

@interface JavaIoFileInputStream : JavaIoInputStream < JavaIoCloseable > {
 @public
  JavaIoFileDescriptor *fd_;
  long long int stream_;
  id repositioningLock_;
}

@property (nonatomic, retain) JavaIoFileDescriptor *fd;
@property (nonatomic, assign) long long int stream;
@property (nonatomic, retain) id repositioningLock;

- (id)initWithJavaIoFile:(JavaIoFile *)file;
- (long long int)openWithNSString:(NSString *)path;
- (id)initWithJavaIoFileDescriptor:(JavaIoFileDescriptor *)fd;
- (id)initWithNSString:(NSString *)fileName;
- (int)available;
- (int)nativeAvailableWithLongInt:(long long int)descriptor;
- (void)close;
- (void)nativeClose;
- (void)dealloc;
- (JavaIoFileDescriptor *)getFD;
- (int)read;
- (int)readWithJavaLangByteArray:(IOSByteArray *)buffer;
- (int)readWithJavaLangByteArray:(IOSByteArray *)buffer
                         withInt:(int)offset
                         withInt:(int)count;
- (int)nativeReadWithJavaLangByteArray:(IOSByteArray *)buffer
                               withInt:(int)offset
                               withInt:(int)count;
- (long long int)skipWithLongInt:(long long int)count;
- (long long int)seekWithLongInt:(long long int)count;
- (void)openCheck;
@end
