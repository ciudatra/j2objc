//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/retechretech/dev/tools/lib/j2objc/jre_emul/apache_harmony/classlib/modules/luni/src/main/java/java/lang/ClassNotFoundException.java
//
//  Created by retechretech on 13-3-16.
//

@class JavaLangThrowable;

#import "JreEmulation.h"
#import "java/lang/Exception.h"

#define JavaLangClassNotFoundException_serialVersionUID 9176873029745254542

@interface JavaLangClassNotFoundException : JavaLangException {
 @public
  JavaLangThrowable *ex_;
}

@property (nonatomic, retain) JavaLangThrowable *ex;

- (id)init;
- (id)initWithNSString:(NSString *)detailMessage;
- (id)initWithNSString:(NSString *)detailMessage
 withJavaLangThrowable:(JavaLangThrowable *)exception;
- (JavaLangThrowable *)getException;
- (JavaLangThrowable *)getCause;
@end
