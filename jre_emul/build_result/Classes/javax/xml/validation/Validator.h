//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/javax/xml/validation/Validator.java
//
//  Created by retechretech on 13-4-26.
//

@protocol JavaxXmlTransformResult;
@protocol JavaxXmlTransformSource;
@protocol OrgW3cDomLsLSResourceResolver;
@protocol OrgXmlSaxErrorHandler;

#import "JreEmulation.h"

@interface JavaxXmlValidationValidator : NSObject {
}

- (id)init;
- (void)reset;
- (void)validateWithJavaxXmlTransformSource:(id<JavaxXmlTransformSource>)source;
- (void)validateWithJavaxXmlTransformSource:(id<JavaxXmlTransformSource>)source
                withJavaxXmlTransformResult:(id<JavaxXmlTransformResult>)result;
- (void)setErrorHandlerWithOrgXmlSaxErrorHandler:(id<OrgXmlSaxErrorHandler>)errorHandler;
- (id<OrgXmlSaxErrorHandler>)getErrorHandler;
- (void)setResourceResolverWithOrgW3cDomLsLSResourceResolver:(id<OrgW3cDomLsLSResourceResolver>)resourceResolver;
- (id<OrgW3cDomLsLSResourceResolver>)getResourceResolver;
- (BOOL)getFeatureWithNSString:(NSString *)name;
- (void)setFeatureWithNSString:(NSString *)name
                      withBOOL:(BOOL)value;
- (void)setPropertyWithNSString:(NSString *)name
                         withId:(id)object;
- (id)getPropertyWithNSString:(NSString *)name;
@end
