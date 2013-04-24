//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/libcore/io/ErrnoException.java
//
//  Created by retechretech on 13-4-24.
//

@class JavaIoIOException;
@class JavaLangThrowable;

#import "JreEmulation.h"
#import "java/lang/Exception.h"

@interface LibcoreIoErrnoException : JavaLangException {
 @public
  NSString *functionName_;
  int errno__;
}

@property (nonatomic, copy) NSString *functionName;
@property (nonatomic, assign) int errno_;

- (id)initWithNSString:(NSString *)functionName
               withInt:(int)errno_;
- (id)initWithNSString:(NSString *)functionName
               withInt:(int)errno_
 withJavaLangThrowable:(JavaLangThrowable *)cause;
- (NSString *)getMessage;
- (JavaIoIOException *)rethrowAsIOException;
@end
