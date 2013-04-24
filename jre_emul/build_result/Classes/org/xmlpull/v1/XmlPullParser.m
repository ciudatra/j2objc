//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/xml/src/main/java/org/xmlpull/v1/XmlPullParser.java
//
//  Created by retechretech on 13-4-24.
//

#import "IOSCharArray.h"
#import "IOSIntArray.h"
#import "IOSObjectArray.h"
#import "java/io/InputStream.h"
#import "java/io/Reader.h"
#import "org/xmlpull/v1/XmlPullParser.h"


@implementation OrgXmlpullV1XmlPullParser

static NSString * OrgXmlpullV1XmlPullParser_NO_NAMESPACE_ = @"";
static IOSObjectArray * OrgXmlpullV1XmlPullParser_TYPES_;
static NSString * OrgXmlpullV1XmlPullParser_FEATURE_PROCESS_NAMESPACES_ = @"http://xmlpull.org/v1/doc/features.html#process-namespaces";
static NSString * OrgXmlpullV1XmlPullParser_FEATURE_REPORT_NAMESPACE_ATTRIBUTES_ = @"http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes";
static NSString * OrgXmlpullV1XmlPullParser_FEATURE_PROCESS_DOCDECL_ = @"http://xmlpull.org/v1/doc/features.html#process-docdecl";
static NSString * OrgXmlpullV1XmlPullParser_FEATURE_VALIDATION_ = @"http://xmlpull.org/v1/doc/features.html#validation";

+ (NSString *)NO_NAMESPACE {
  return OrgXmlpullV1XmlPullParser_NO_NAMESPACE_;
}

+ (int)START_DOCUMENT {
  return OrgXmlpullV1XmlPullParser_START_DOCUMENT;
}

+ (int)END_DOCUMENT {
  return OrgXmlpullV1XmlPullParser_END_DOCUMENT;
}

+ (int)START_TAG {
  return OrgXmlpullV1XmlPullParser_START_TAG;
}

+ (int)END_TAG {
  return OrgXmlpullV1XmlPullParser_END_TAG;
}

+ (int)TEXT {
  return OrgXmlpullV1XmlPullParser_TEXT;
}

+ (int)CDSECT {
  return OrgXmlpullV1XmlPullParser_CDSECT;
}

+ (int)ENTITY_REF {
  return OrgXmlpullV1XmlPullParser_ENTITY_REF;
}

+ (int)IGNORABLE_WHITESPACE {
  return OrgXmlpullV1XmlPullParser_IGNORABLE_WHITESPACE;
}

+ (int)PROCESSING_INSTRUCTION {
  return OrgXmlpullV1XmlPullParser_PROCESSING_INSTRUCTION;
}

+ (int)COMMENT {
  return OrgXmlpullV1XmlPullParser_COMMENT;
}

+ (int)DOCDECL {
  return OrgXmlpullV1XmlPullParser_DOCDECL;
}

+ (IOSObjectArray *)TYPES {
  return OrgXmlpullV1XmlPullParser_TYPES_;
}

+ (NSString *)FEATURE_PROCESS_NAMESPACES {
  return OrgXmlpullV1XmlPullParser_FEATURE_PROCESS_NAMESPACES_;
}

+ (NSString *)FEATURE_REPORT_NAMESPACE_ATTRIBUTES {
  return OrgXmlpullV1XmlPullParser_FEATURE_REPORT_NAMESPACE_ATTRIBUTES_;
}

+ (NSString *)FEATURE_PROCESS_DOCDECL {
  return OrgXmlpullV1XmlPullParser_FEATURE_PROCESS_DOCDECL_;
}

+ (NSString *)FEATURE_VALIDATION {
  return OrgXmlpullV1XmlPullParser_FEATURE_VALIDATION_;
}

+ (void)initialize OBJC_METHOD_FAMILY_NONE {
  JreOperatorRetainedAssign(&OrgXmlpullV1XmlPullParser_TYPES_, [IOSObjectArray arrayWithObjects:(id[]){ @"START_DOCUMENT", @"END_DOCUMENT", @"START_TAG", @"END_TAG", @"TEXT", @"CDSECT", @"ENTITY_REF", @"IGNORABLE_WHITESPACE", @"PROCESSING_INSTRUCTION", @"COMMENT", @"DOCDECL" } count:11 type:[IOSClass classWithClass:[NSString class]]]);
}

@end
