//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/parsers/FactoryConfigurationError.java
//
//  Created by retechretech on 13-4-19.
//

@class JavaLangException;

#import "JreEmulation.h"
#import "java/lang/Error.h"

@interface JavaxXmlParsersFactoryConfigurationError : JavaLangError {
 @public
  JavaLangException *exception_;
}

@property (nonatomic, retain) JavaLangException *exception;

- (id)init;
- (id)initWithNSString:(NSString *)msg;
- (id)initWithJavaLangException:(JavaLangException *)e;
- (id)initWithJavaLangException:(JavaLangException *)e
                   withNSString:(NSString *)msg;
- (NSString *)getMessage;
- (JavaLangException *)getException;
@end