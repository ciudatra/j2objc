//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/xml/src/main/java/org/xmlpull/v1/XmlPullParserException.java
//
//  Created by retechretech on 13-4-26.
//

@class JavaLangThrowable;
@protocol OrgXmlpullV1XmlPullParser;

#import "JreEmulation.h"
#import "java/lang/Exception.h"

@interface OrgXmlpullV1XmlPullParserException : JavaLangException {
 @public
  JavaLangThrowable *detail_;
  int row_;
  int column_;
}

@property (nonatomic, retain) JavaLangThrowable *detail;
@property (nonatomic, assign) int row;
@property (nonatomic, assign) int column;

- (id)initWithNSString:(NSString *)s;
- (id)initWithNSString:(NSString *)msg
withOrgXmlpullV1XmlPullParser:(id<OrgXmlpullV1XmlPullParser>)parser
 withJavaLangThrowable:(JavaLangThrowable *)chain;
- (JavaLangThrowable *)getDetail;
- (int)getLineNumber;
- (int)getColumnNumber;
- (void)printStackTrace;
@end
