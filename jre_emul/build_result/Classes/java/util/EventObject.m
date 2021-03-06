//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/util/EventObject.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSClass.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/util/EventObject.h"

@implementation JavaUtilEventObject

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)source {
  return source_;
}
- (void)setSource:(id)source {
  JreOperatorRetainedAssign(&source_, source);
}
@synthesize source = source_;

- (id)initWithId:(id)source {
  if ((self = [super init])) {
    if (source != nil) {
      self.source = source;
    }
    else {
      @throw [[[JavaLangIllegalArgumentException alloc] init] autorelease];
    }
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)getSource {
  return source_;
}

- (NSString *)description {
  return [NSString stringWithFormat:@"%@[source=%@]", [[self getClass] getName], source_];
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&source_, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaUtilEventObject *typedCopy = (JavaUtilEventObject *) copy;
  typedCopy.source = source_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:source_ name:@"source"]];
  return result;
}

@end
