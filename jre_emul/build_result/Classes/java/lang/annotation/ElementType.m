//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/annotation/src/main/java/java/lang/annotation/ElementType.java
//
//  Created by retechretech on 13-4-19.
//

#import "java/lang/IllegalArgumentException.h"
#import "java/lang/annotation/ElementType.h"


static JavaLangAnnotationElementTypeEnum *JavaLangAnnotationElementTypeEnum_TYPE;
static JavaLangAnnotationElementTypeEnum *JavaLangAnnotationElementTypeEnum_FIELD;
static JavaLangAnnotationElementTypeEnum *JavaLangAnnotationElementTypeEnum_METHOD;
static JavaLangAnnotationElementTypeEnum *JavaLangAnnotationElementTypeEnum_PARAMETER;
static JavaLangAnnotationElementTypeEnum *JavaLangAnnotationElementTypeEnum_CONSTRUCTOR;
static JavaLangAnnotationElementTypeEnum *JavaLangAnnotationElementTypeEnum_LOCAL_VARIABLE;
static JavaLangAnnotationElementTypeEnum *JavaLangAnnotationElementTypeEnum_ANNOTATION_TYPE;
static JavaLangAnnotationElementTypeEnum *JavaLangAnnotationElementTypeEnum_PACKAGE;
IOSObjectArray *JavaLangAnnotationElementTypeEnum_values;

@implementation JavaLangAnnotationElementTypeEnum

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:JavaLangAnnotationElementTypeEnum_values name:@"enumValues"]];
  return result;
}

+ (JavaLangAnnotationElementTypeEnum *)TYPE {
  return JavaLangAnnotationElementTypeEnum_TYPE;
}
+ (JavaLangAnnotationElementTypeEnum *)FIELD {
  return JavaLangAnnotationElementTypeEnum_FIELD;
}
+ (JavaLangAnnotationElementTypeEnum *)METHOD {
  return JavaLangAnnotationElementTypeEnum_METHOD;
}
+ (JavaLangAnnotationElementTypeEnum *)PARAMETER {
  return JavaLangAnnotationElementTypeEnum_PARAMETER;
}
+ (JavaLangAnnotationElementTypeEnum *)CONSTRUCTOR {
  return JavaLangAnnotationElementTypeEnum_CONSTRUCTOR;
}
+ (JavaLangAnnotationElementTypeEnum *)LOCAL_VARIABLE {
  return JavaLangAnnotationElementTypeEnum_LOCAL_VARIABLE;
}
+ (JavaLangAnnotationElementTypeEnum *)ANNOTATION_TYPE {
  return JavaLangAnnotationElementTypeEnum_ANNOTATION_TYPE;
}
+ (JavaLangAnnotationElementTypeEnum *)PACKAGE {
  return JavaLangAnnotationElementTypeEnum_PACKAGE;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

- (id)initWithNSString:(NSString *)name withInt:(int)ordinal {
  return JreMemDebugAdd([super initWithNSString:name withInt:ordinal]);
}

+ (void)initialize {
  if (self == [JavaLangAnnotationElementTypeEnum class]) {
    JavaLangAnnotationElementTypeEnum_TYPE = [[JavaLangAnnotationElementTypeEnum alloc] initWithNSString:@"TYPE" withInt:0];
    JavaLangAnnotationElementTypeEnum_FIELD = [[JavaLangAnnotationElementTypeEnum alloc] initWithNSString:@"FIELD" withInt:1];
    JavaLangAnnotationElementTypeEnum_METHOD = [[JavaLangAnnotationElementTypeEnum alloc] initWithNSString:@"METHOD" withInt:2];
    JavaLangAnnotationElementTypeEnum_PARAMETER = [[JavaLangAnnotationElementTypeEnum alloc] initWithNSString:@"PARAMETER" withInt:3];
    JavaLangAnnotationElementTypeEnum_CONSTRUCTOR = [[JavaLangAnnotationElementTypeEnum alloc] initWithNSString:@"CONSTRUCTOR" withInt:4];
    JavaLangAnnotationElementTypeEnum_LOCAL_VARIABLE = [[JavaLangAnnotationElementTypeEnum alloc] initWithNSString:@"LOCAL_VARIABLE" withInt:5];
    JavaLangAnnotationElementTypeEnum_ANNOTATION_TYPE = [[JavaLangAnnotationElementTypeEnum alloc] initWithNSString:@"ANNOTATION_TYPE" withInt:6];
    JavaLangAnnotationElementTypeEnum_PACKAGE = [[JavaLangAnnotationElementTypeEnum alloc] initWithNSString:@"PACKAGE" withInt:7];
    JavaLangAnnotationElementTypeEnum_values = [[IOSObjectArray alloc] initWithObjects:(id[]){ JavaLangAnnotationElementTypeEnum_TYPE, JavaLangAnnotationElementTypeEnum_FIELD, JavaLangAnnotationElementTypeEnum_METHOD, JavaLangAnnotationElementTypeEnum_PARAMETER, JavaLangAnnotationElementTypeEnum_CONSTRUCTOR, JavaLangAnnotationElementTypeEnum_LOCAL_VARIABLE, JavaLangAnnotationElementTypeEnum_ANNOTATION_TYPE, JavaLangAnnotationElementTypeEnum_PACKAGE, nil } count:8 type:[IOSClass classWithClass:[JavaLangAnnotationElementTypeEnum class]]];
  }
}

+ (IOSObjectArray *)values {
  return [IOSObjectArray arrayWithArray:JavaLangAnnotationElementTypeEnum_values];
}

+ (JavaLangAnnotationElementTypeEnum *)valueOfWithNSString:(NSString *)name {
  for (int i = 0; i < [JavaLangAnnotationElementTypeEnum_values count]; i++) {
    JavaLangAnnotationElementTypeEnum *e = [JavaLangAnnotationElementTypeEnum_values objectAtIndex:i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

@end