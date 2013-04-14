//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni-kernel/src/main/java/java/lang/reflect/Array.java
//
//  Created by retechretech on 13-4-14.
//

#import "IOSIntArray.h"
#import "java/lang/AssertionError.h"
#import "java/lang/reflect/Array.h"
#import "IOSBooleanArray.h"
#import "IOSByteArray.h"
#import "IOSCharArray.h"
#import "IOSDoubleArray.h"
#import "IOSFloatArray.h"
#import "IOSIntArray.h"
#import "IOSLongArray.h"
#import "IOSObjectArray.h"
#import "IOSPrimitiveClass.h"
#import "IOSShortArray.h"
#import "java/lang/ArrayIndexOutOfBoundsException.h"
#import "java/lang/Boolean.h"
#import "java/lang/Byte.h"
#import "java/lang/Character.h"
#import "java/lang/Double.h"
#import "java/lang/Float.h"
#import "java/lang/IllegalArgumentException.h"
#import "java/lang/Integer.h"
#import "java/lang/Long.h"
#import "java/lang/NegativeArraySizeException.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/Short.h"

@implementation JavaLangReflectArray

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (id)init {
  return (self = JreMemDebugAdd([super init]));
}

+ (id)getWithId:(id)array
        withInt:(int)index   {
    id result = nil;
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else {
      if ([[array class] isSubclassOfClass:[IOSObjectArray class]]) {
        IOSObjectArray *objectArray = (IOSObjectArray *) array;
        result = [objectArray objectAtIndex:index];
      } else if ([[array class] isSubclassOfClass:[IOSArray class]]) {
        // Return a wrapped instance of primitive element.
        IOSPrimitiveClass *elementType = (IOSPrimitiveClass *) [array elementType];
        NSString *binaryName = [elementType binaryName];
        
        // All primitive JVM binary names are single character.
        switch ([binaryName characterAtIndex:0]) {
          case 'Z':
          result = [[JavaLangBoolean alloc]
          initWithBOOL:[self getBooleanWithId:array withInt:index]];
          break;
          case 'B':
          result = [[JavaLangByte alloc]
          initWithChar:[self getByteWithId:array withInt:index]];
          break;
          case 'C':
          result = [[JavaLangCharacter alloc]
          initWithUnichar:[self getCharWithId:array withInt:index]];
          break;
          case 'D':
          result = [[JavaLangDouble alloc]
          initWithDouble:[self getDoubleWithId:array withInt:index]];
          break;
          case 'F':
          result = [[JavaLangFloat alloc]
          initWithFloat:[self getFloatWithId:array withInt:index]];
          break;
          case 'I':
          result = [[JavaLangInteger alloc]
          initWithInt:[self getIntWithId:array withInt:index]];
          break;
          case 'J':
          result = [[JavaLangLong alloc]
          initWithLongInt:[self getLongWithId:array withInt:index]];
          break;
          case 'S':
          result = [[JavaLangShort alloc]
          initWithShortInt:[self getShortWithId:array withInt:index]];
          break;
          default:
          exception = [[JavaLangAssertionError alloc] initWithNSString:@"invalid JVM type"];
          break;
        }
        #if ! __has_feature(objc_arc)
        [result autorelease];
        #endif
      } else {
        // Object isn't an array.
        exception = [[JavaLangIllegalArgumentException alloc] init];
      }
    }
    if (!result && !exception) {
      // Something's wrong above!
      exception = [[JavaLangAssertionError alloc] init];
    }
    
    #if ! __has_feature(objc_arc)
    [exception autorelease];
    #endif
    
    if (exception) {
      @throw exception;
    }
    return result;
  }

+ (BOOL)getBooleanWithId:(id)array
                 withInt:(int)index   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSBooleanArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSBooleanArray *booleanArray = (IOSBooleanArray *) array;
      if (index < 0 || index >= [booleanArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        return [booleanArray booleanAtIndex:index];
      }
    }
    #if ! __has_feature(objc_arc)
    [exception autorelease];
    #endif
    @throw exception;
    return false;  // Not run, but needed by compiler.
  }

+ (char)getByteWithId:(id)array
              withInt:(int)index   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSByteArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSByteArray *byteArray = (IOSByteArray *) array;
      if (index < 0 || index >= [byteArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        return [byteArray byteAtIndex:index];
      }
    }
    #if ! __has_feature(objc_arc)
    [exception autorelease];
    #endif
    @throw exception;
    return 0;  // Not run, but needed by compiler.
  }

+ (unichar)getCharWithId:(id)array
                 withInt:(int)index   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSCharArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSCharArray *charArray = (IOSCharArray *) array;
      if (index < 0 || index >= [charArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        return [charArray charAtIndex:index];
      }
    }
    #if ! __has_feature(objc_arc)
    [exception autorelease];
    #endif
    @throw exception;
    return 0;  // Not run, but needed by compiler.
  }

+ (double)getDoubleWithId:(id)array
                  withInt:(int)index   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSDoubleArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSDoubleArray *doubleArray = (IOSDoubleArray *) array;
      if (index < 0 || index >= [doubleArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        return [doubleArray doubleAtIndex:index];
      }
    }
    #if ! __has_feature(objc_arc)
    [exception autorelease];
    #endif
    @throw exception;
    return 0.0;  // Not run, but needed by compiler.
  }

+ (float)getFloatWithId:(id)array
                withInt:(int)index   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSFloatArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSFloatArray *floatArray = (IOSFloatArray *) array;
      if (index < 0 || index >= [floatArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        return [floatArray floatAtIndex:index];
      }
    }
    #if ! __has_feature(objc_arc)
    [exception autorelease];
    #endif
    @throw exception;
    return 0.0f;  // Not run, but needed by compiler.
  }

+ (int)getIntWithId:(id)array
            withInt:(int)index   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSIntArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSIntArray *intArray = (IOSIntArray *) array;
      if (index < 0 || index >= [intArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        return [intArray intAtIndex:index];
      }
    }
    #if ! __has_feature(objc_arc)
    [exception autorelease];
    #endif
    @throw exception;
    return 0;  // Not run, but needed by compiler.
  }

+ (int)getLengthWithId:(id)array   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    return [(IOSArray *) array count];
  }

+ (long long int)getLongWithId:(id)array
                       withInt:(int)index   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSLongArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSLongArray *longArray = (IOSLongArray *) array;
      if (index < 0 || index >= [longArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        return [longArray longAtIndex:index];
      }
    }
    #if ! __has_feature(objc_arc)
    [exception autorelease];
    #endif
    @throw exception;
    return 0L;  // Not run, but needed by compiler.
  }

+ (short int)getShortWithId:(id)array
                    withInt:(int)index   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSShortArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSShortArray *shortArray = (IOSShortArray *) array;
      if (index < 0 || index >= [shortArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        return [shortArray shortAtIndex:index];
      }
    }
    #if ! __has_feature(objc_arc)
    [exception autorelease];
    #endif
    @throw exception;
    return 0;  // Not run, but needed by compiler.
  }

+ (id)newInstanceWithIOSClass:(IOSClass *)componentType
     withJavaLangIntegerArray:(IOSIntArray *)dimensions OBJC_METHOD_FAMILY_NONE {
  @throw [[[JavaLangAssertionError alloc] initWithId:@"multi-dimension support not implemented"] autorelease];
}

+ (id)newInstanceWithIOSClass:(IOSClass *)componentType
                      withInt:(int)size OBJC_METHOD_FAMILY_NONE   {
    id exception = nil;
    if (!componentType) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (size < 0) {
      exception = [[JavaLangNegativeArraySizeException alloc] init];
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    NSString *type = [componentType getName];
    id result;
    if ([type isEqualToString:@"boolean"]) {
      result = [[IOSBooleanArray alloc] initWithLength:size];
    } else if ([type isEqualToString:@"byte"]) {
      result = [[IOSByteArray alloc] initWithLength:size];
    } else if ([type isEqualToString:@"char"]) {
      result = [[IOSCharArray alloc] initWithLength:size];
    } else if ([type isEqualToString:@"double"]) {
      result = [[IOSDoubleArray alloc] initWithLength:size];
    } else if ([type isEqualToString:@"float"]) {
      result = [[IOSFloatArray alloc] initWithLength:size];
    } else if ([type isEqualToString:@"int"]) {
      result = [[IOSIntArray alloc] initWithLength:size];
    } else if ([type isEqualToString:@"long"]) {
      result = [[IOSLongArray alloc] initWithLength:size];
    } else if ([type isEqualToString:@"short"]) {
      result = [[IOSShortArray alloc] initWithLength:size];
    } else {
      result = [[IOSObjectArray alloc] initWithLength:size type:componentType];
    }
    #if ! __has_feature(objc_arc)
    [result autorelease];
    #endif
    return result;
  }

+ (void)setWithId:(id)array
          withInt:(int)index
           withId:(id)value   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if ([[array class] isSubclassOfClass:[IOSArray class]]) {
      // It's an array, check index.
      if (index < 0 || index >= [(IOSArray *) array count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      }
    } else {
      // It's not an array.
      exception = [[JavaLangIllegalArgumentException alloc] init];
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    
    if ([[value class] isSubclassOfClass:[JavaLangBoolean class]]) {
      [self setBooleanWithId:array
      withInt:index
      withBOOL:[(JavaLangBoolean *) value booleanValue]];
      return;
    }
    if ([[value class] isSubclassOfClass:[JavaLangByte class]]) {
      [self setByteWithId:array
      withInt:index
      withChar:[(JavaLangByte *) value byteValue]];
      return;
    }
    if ([[value class] isSubclassOfClass:[JavaLangCharacter class]]) {
      [self setCharWithId:array
      withInt:index
      withUnichar:[(JavaLangCharacter *) value charValue]];
      return;
    }
    if ([[value class] isSubclassOfClass:[JavaLangDouble class]]) {
      [self setDoubleWithId:array
      withInt:index
      withDouble:[(JavaLangDouble *) value doubleValue]];
      return;
    }
    if ([[value class] isSubclassOfClass:[JavaLangFloat class]]) {
      [self setFloatWithId:array
      withInt:index
      withFloat:[(JavaLangFloat *) value floatValue]];
      return;
    }
    if ([[value class] isSubclassOfClass:[JavaLangInteger class]]) {
      [self setIntWithId:array
      withInt:index
      withInt:[(JavaLangInteger *) value intValue]];
      return;
    }
    if ([[value class] isSubclassOfClass:[JavaLangLong class]]) {
      [self setLongWithId:array
      withInt:index
      withLongInt:[(JavaLangLong *) value longValue]];
      return;
    }
    if ([[value class] isSubclassOfClass:[JavaLangShort class]]) {
      [self setShortWithId:array
      withInt:index
      withShortInt:[(JavaLangShort *) value shortValue]];
      return;
    }
    
    // Default: it's an object array.
    IOSObjectArray *objectArray = (IOSObjectArray *) array;
    [objectArray replaceObjectAtIndex:index withObject:value];
  }

+ (void)setBooleanWithId:(id)array
                 withInt:(int)index
                withBOOL:(BOOL)value   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSBooleanArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSBooleanArray *booleanArray = (IOSBooleanArray *) array;
      if (index < 0 || index >= [booleanArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        [booleanArray replaceBooleanAtIndex:index withBoolean:value];
      }
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    return;
  }

+ (void)setByteWithId:(id)array
              withInt:(int)index
             withChar:(char)value   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSByteArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSByteArray *byteArray = (IOSByteArray *) array;
      if (index < 0 || index >= [byteArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        [byteArray replaceByteAtIndex:index withByte:value];
      }
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    return;
  }

+ (void)setCharWithId:(id)array
              withInt:(int)index
          withUnichar:(unichar)value   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSCharArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSCharArray *charArray = (IOSCharArray *) array;
      if (index < 0 || index >= [charArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        [charArray replaceCharAtIndex:index withChar:value];
      }
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    return;
  }

+ (void)setDoubleWithId:(id)array
                withInt:(int)index
             withDouble:(double)value   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSDoubleArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSDoubleArray *doubleArray = (IOSDoubleArray *) array;
      if (index < 0 || index >= [doubleArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        [doubleArray replaceDoubleAtIndex:index withDouble:value];
      }
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    return;
  }

+ (void)setFloatWithId:(id)array
               withInt:(int)index
             withFloat:(float)value   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSFloatArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSFloatArray *floatArray = (IOSFloatArray *) array;
      if (index < 0 || index >= [floatArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        [floatArray replaceFloatAtIndex:index withFloat:value];
      }
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    return;
  }

+ (void)setIntWithId:(id)array
             withInt:(int)index
             withInt:(int)value   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSIntArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSIntArray *intArray = (IOSIntArray *) array;
      if (index < 0 || index >= [intArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        [intArray replaceIntAtIndex:index withInt:value];
      }
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    return;
  }

+ (void)setLongWithId:(id)array
              withInt:(int)index
          withLongInt:(long long int)value   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSLongArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSLongArray *longArray = (IOSLongArray *) array;
      if (index < 0 || index >= [longArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        [longArray replaceLongAtIndex:index withLong:value];
      }
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    return;
  }

+ (void)setShortWithId:(id)array
               withInt:(int)index
          withShortInt:(short int)value   {
    id exception = nil;
    if (!array) {
      exception = [[JavaLangNullPointerException alloc] init];
    } else if (![[array class] isSubclassOfClass:[IOSShortArray class]]) {
      exception = [[JavaLangIllegalArgumentException alloc] init];
    } else {
      IOSShortArray *shortArray = (IOSShortArray *) array;
      if (index < 0 || index >= [shortArray count]) {
        exception = [[JavaLangArrayIndexOutOfBoundsException alloc] init];
      } else {
        [shortArray replaceShortAtIndex:index withShort:value];
      }
    }
    if (exception) {
      #if ! __has_feature(objc_arc)
      [exception autorelease];
      #endif
      @throw exception;
    }
    return;
  }

- (void)dealloc {
  JreMemDebugRemove(self);
  [super dealloc];
}

@end
