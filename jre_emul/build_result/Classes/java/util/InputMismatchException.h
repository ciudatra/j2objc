//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/InputMismatchException.java
//
//  Created by retechretech on 13-4-19.
//

#import "JreEmulation.h"
#import "java/io/Serializable.h"
#import "java/util/NoSuchElementException.h"

#define JavaUtilInputMismatchException_serialVersionUID 8811230760997066428

@interface JavaUtilInputMismatchException : JavaUtilNoSuchElementException < JavaIoSerializable > {
}

- (id)init;
- (id)initWithNSString:(NSString *)msg;
@end