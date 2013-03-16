//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/io/Reader.java
//
//  Created by retechretech on 13-3-16.
//

@class IOSCharArray;
@class JavaNioCharBuffer;

#import "JreEmulation.h"
#import "java/io/Closeable.h"
#import "java/lang/Readable.h"

@interface JavaIoReader : NSObject < JavaLangReadable, JavaIoCloseable > {
 @public
  id lock_;
}

@property (nonatomic, retain) id lock;

- (id)init;
- (id)initWithId:(id)lock;
- (void)close;
- (void)markWithInt:(int)readLimit;
- (BOOL)markSupported;
- (int)read;
- (int)readWithJavaLangCharacterArray:(IOSCharArray *)buf;
- (int)readWithJavaLangCharacterArray:(IOSCharArray *)buf
                              withInt:(int)offset
                              withInt:(int)count;
- (BOOL)ready;
- (void)reset;
- (long long int)skipWithLongInt:(long long int)count;
- (int)readWithJavaNioCharBuffer:(JavaNioCharBuffer *)target;
@end
