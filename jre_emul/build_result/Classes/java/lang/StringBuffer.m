//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/luni/src/main/java/java/lang/StringBuffer.java
//
//  Created by retechretech on 13-4-26.
//

#import "IOSCharArray.h"
#import "java/lang/ArrayIndexOutOfBoundsException.h"
#import "java/lang/CharSequence.h"
#import "java/lang/Character.h"
#import "java/lang/Double.h"
#import "java/lang/Float.h"
#import "java/lang/IndexOutOfBoundsException.h"
#import "java/lang/Integer.h"
#import "java/lang/Long.h"
#import "java/lang/NullPointerException.h"
#import "java/lang/StringBuffer.h"
#import "java/lang/StringIndexOutOfBoundsException.h"
#import "java/lang/System.h"
#import "java/util/Arrays.h"

@implementation JavaLangStringBuffer

+ (NSArray *)memDebugStaticReferences {
  NSMutableArray *result = [NSMutableArray array];
  return result;
}

- (IOSCharArray *)value {
  return value_;
}
- (void)setValue:(IOSCharArray *)value {
  JreOperatorRetainedAssign(&value_, value);
}
@synthesize value = value_;
@synthesize count = count_;
@synthesize shared = shared_;

+ (int)INITIAL_CAPACITY {
  return JavaLangStringBuffer_INITIAL_CAPACITY;
}

- (id)init {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&value_, [[[IOSCharArray alloc] initWithLength:JavaLangStringBuffer_INITIAL_CAPACITY] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithInt:(int)capacity {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&value_, [[[IOSCharArray alloc] initWithLength:JavaLangStringBuffer_INITIAL_CAPACITY] autorelease]);
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithNSString:(NSString *)string {
  return JreMemDebugAdd([self initJavaLangStringBufferWithJavaLangCharSequence:(id<JavaLangCharSequence>) string]);
}

- (id)initJavaLangStringBufferWithJavaLangCharSequence:(id<JavaLangCharSequence>)cs {
  if ((self = [super init])) {
    if (cs == nil) {
      @throw [[[JavaLangNullPointerException alloc] init] autorelease];
    }
    count_ = [((id<JavaLangCharSequence>) NIL_CHK(cs)) sequenceLength];
    shared_ = NO;
    JreOperatorRetainedAssign(&value_, [[[IOSCharArray alloc] initWithLength:count_ + JavaLangStringBuffer_INITIAL_CAPACITY] autorelease]);
    [[((id<JavaLangCharSequence>) NIL_CHK(cs)) sequenceDescription] getChars:0 sourceEnd:count_ destination:value_ destinationBegin:0];
    JreMemDebugAdd(self);
  }
  return self;
}

- (id)initWithJavaLangCharSequence:(id<JavaLangCharSequence>)cs {
  return [self initJavaLangStringBufferWithJavaLangCharSequence:cs];
}

- (JavaLangStringBuffer *)appendWithBOOL:(BOOL)b {
  @synchronized(self) {
    {
      return [self appendWithNSString:b ? @"true" : @"false"];
    }
  }
}

- (JavaLangStringBuffer *)appendWithUnichar:(unichar)ch {
  @synchronized(self) {
    {
      if (count_ == (int) [((IOSCharArray *) NIL_CHK(value_)) count]) {
        [self enlargeBufferWithInt:count_ + 1];
      }
      [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:count_++ withChar:ch];
      return self;
    }
  }
}

- (JavaLangStringBuffer *)appendWithDouble:(double)d {
  @synchronized(self) {
    {
      return [self appendWithNSString:[JavaLangDouble toStringWithDouble:d]];
    }
  }
}

- (JavaLangStringBuffer *)appendWithFloat:(float)f {
  @synchronized(self) {
    {
      return [self appendWithNSString:[JavaLangFloat toStringWithFloat:f]];
    }
  }
}

- (JavaLangStringBuffer *)appendWithInt:(int)i {
  @synchronized(self) {
    {
      return [self appendWithNSString:[JavaLangInteger toStringWithInt:i]];
    }
  }
}

- (JavaLangStringBuffer *)appendWithLongInt:(long long int)l {
  @synchronized(self) {
    {
      return [self appendWithNSString:[JavaLangLong toStringWithLongInt:l]];
    }
  }
}

- (JavaLangStringBuffer *)appendWithId:(id)obj {
  @synchronized(self) {
    {
      if (obj == nil) {
        [self appendNull];
      }
      else {
        [self appendWithNSString:[obj description]];
      }
      return self;
    }
  }
}

- (JavaLangStringBuffer *)appendWithNSString:(NSString *)string {
  @synchronized(self) {
    {
      if (string == nil) {
        [self appendNull];
        return self;
      }
      int adding = [NIL_CHK(string) length];
      int newSize = count_ + adding;
      if (newSize > (int) [((IOSCharArray *) NIL_CHK(value_)) count]) {
        [self enlargeBufferWithInt:newSize];
      }
      [NIL_CHK(string) getChars:0 sourceEnd:adding destination:value_ destinationBegin:count_];
      count_ = newSize;
      return self;
    }
  }
}

- (JavaLangStringBuffer *)appendWithJavaLangStringBuffer:(JavaLangStringBuffer *)sb {
  @synchronized(self) {
    {
      if (sb == nil) {
        [self appendNull];
      }
      else {
        @synchronized (sb) {
          [self appendWithJavaLangCharacterArray:[sb getValue] withInt:0 withInt:[sb sequenceLength]];
        }
      }
      return self;
    }
  }
}

- (JavaLangStringBuffer *)appendWithJavaLangCharacterArray:(IOSCharArray *)chars {
  @synchronized(self) {
    {
      int newSize = count_ + (int) [((IOSCharArray *) NIL_CHK(chars)) count];
      if (newSize > (int) [((IOSCharArray *) NIL_CHK(value_)) count]) {
        [self enlargeBufferWithInt:newSize];
      }
      [JavaLangSystem arraycopyWithId:chars withInt:0 withId:value_ withInt:count_ withInt:(int) [((IOSCharArray *) NIL_CHK(chars)) count]];
      count_ = newSize;
      return self;
    }
  }
}

- (JavaLangStringBuffer *)appendWithJavaLangCharacterArray:(IOSCharArray *)chars
                                                   withInt:(int)start
                                                   withInt:(int)length {
  @synchronized(self) {
    {
      if (chars == nil) {
        @throw [[[JavaLangNullPointerException alloc] init] autorelease];
      }
      if (start > (int) [((IOSCharArray *) NIL_CHK(chars)) count] || start < 0) {
        @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Offset out of bounds: %d", start]] autorelease];
      }
      if (length < 0 || (int) [((IOSCharArray *) NIL_CHK(chars)) count] - start < length) {
        @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"Length out of bounds: %d", length]] autorelease];
      }
      int newSize = count_ + length;
      if (newSize > (int) [((IOSCharArray *) NIL_CHK(value_)) count]) {
        [self enlargeBufferWithInt:newSize];
      }
      [JavaLangSystem arraycopyWithId:chars withInt:start withId:value_ withInt:count_ withInt:length];
      count_ = newSize;
      return self;
    }
  }
}

- (JavaLangStringBuffer *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  @synchronized(self) {
    {
      if (s == nil) {
        [self appendNull];
      }
      else {
        [self appendWithNSString:[s description]];
      }
      return self;
    }
  }
}

- (JavaLangStringBuffer *)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                                 withInt:(int)start
                                                 withInt:(int)end {
  @synchronized(self) {
    {
      if (s == nil) {
        s = (id<JavaLangCharSequence>) @"null";
      }
      if (start < 0 || end < 0 || start > end || end > [((id<JavaLangCharSequence>) NIL_CHK(s)) sequenceLength]) {
        @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
      }
      return [self appendWithNSString:[((id<JavaLangCharSequence>) [((id<JavaLangCharSequence>) NIL_CHK(s)) subSequenceFrom:start to:end]) description]];
    }
  }
}

- (JavaLangStringBuffer *)appendCodePointWithInt:(int)codePoint {
  return [self appendWithJavaLangCharacterArray:[JavaLangCharacter toCharsWithInt:codePoint]];
}

- (unichar)charAtWithInt:(int)index {
  @synchronized(self) {
    {
      if (index < 0 || index >= count_) {
        @throw [[[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:index] autorelease];
      }
      return [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:index];
    }
  }
}

- (JavaLangStringBuffer *)delete__WithInt:(int)start
                                  withInt:(int)end {
  @synchronized(self) {
    {
      if (start >= 0) {
        if (end > count_) {
          end = count_;
        }
        if (end == start) {
          return self;
        }
        if (end > start) {
          int length = count_ - end;
          if (length >= 0) {
            if (!shared_) {
              [JavaLangSystem arraycopyWithId:value_ withInt:end withId:value_ withInt:start withInt:length];
            }
            else {
              IOSCharArray *newData = [[[IOSCharArray alloc] initWithLength:(int) [((IOSCharArray *) NIL_CHK(value_)) count]] autorelease];
              [JavaLangSystem arraycopyWithId:value_ withInt:0 withId:newData withInt:0 withInt:start];
              [JavaLangSystem arraycopyWithId:value_ withInt:end withId:newData withInt:start withInt:length];
              JreOperatorRetainedAssign(&value_, newData);
              shared_ = NO;
            }
          }
          count_ -= end - start;
          return self;
        }
      }
      @throw [[[JavaLangStringIndexOutOfBoundsException alloc] init] autorelease];
    }
  }
}

- (JavaLangStringBuffer *)deleteCharAtWithInt:(int)index {
  @synchronized(self) {
    {
      if (0 > index || index >= count_) {
        @throw [[[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:index] autorelease];
      }
      int length = count_ - index - 1;
      if (length > 0) {
        if (!shared_) {
          [JavaLangSystem arraycopyWithId:value_ withInt:index + 1 withId:value_ withInt:index withInt:length];
        }
        else {
          IOSCharArray *newData = [[[IOSCharArray alloc] initWithLength:(int) [((IOSCharArray *) NIL_CHK(value_)) count]] autorelease];
          [JavaLangSystem arraycopyWithId:value_ withInt:0 withId:newData withInt:0 withInt:index];
          [JavaLangSystem arraycopyWithId:value_ withInt:index + 1 withId:newData withInt:index withInt:length];
          JreOperatorRetainedAssign(&value_, newData);
          shared_ = NO;
        }
      }
      count_--;
      return self;
    }
  }
}

- (void)ensureCapacityWithInt:(int)min {
  @synchronized(self) {
    {
      if (min > (int) [((IOSCharArray *) NIL_CHK(value_)) count]) {
        int twice = ((int) [((IOSCharArray *) NIL_CHK(value_)) count] << 1) + 2;
        [self enlargeBufferWithInt:twice > min ? twice : min];
      }
    }
  }
}

- (void)getCharsWithInt:(int)start
                withInt:(int)end
withJavaLangCharacterArray:(IOSCharArray *)dest
                withInt:(int)destStart {
  @synchronized(self) {
    {
      if (start > count_ || end > count_ || start > end) {
        @throw [[[JavaLangStringIndexOutOfBoundsException alloc] init] autorelease];
      }
      [JavaLangSystem arraycopyWithId:value_ withInt:start withId:dest withInt:destStart withInt:end - start];
    }
  }
}

- (int)indexOfWithNSString:(NSString *)subString
                   withInt:(int)start {
  @synchronized(self) {
    {
      if (subString == nil) {
        @throw [[[JavaLangNullPointerException alloc] init] autorelease];
      }
      if (start < 0) {
        start = 0;
      }
      int subCount = [NIL_CHK(subString) length];
      if (subCount > 0) {
        if (subCount + start > count_) {
          return -1;
        }
        unichar firstChar = [NIL_CHK(subString) charAtWithInt:0];
        while (YES) {
          int i = start;
          BOOL found = NO;
          for (; i < count_; i++) {
            if ([((IOSCharArray *) NIL_CHK(value_)) charAtIndex:i] == firstChar) {
              found = YES;
              break;
            }
          }
          if (!found || subCount + i > count_) {
            return -1;
          }
          int o1 = i, o2 = 0;
          while (++o2 < subCount && [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:++o1] == [NIL_CHK(subString) charAtWithInt:o2]) {
          }
          if (o2 == subCount) {
            return i;
          }
          start = i + 1;
        }
      }
      return (start < count_ || start == 0) ? start : count_;
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
                            withUnichar:(unichar)ch {
  @synchronized(self) {
    {
      if (0 > index || index > count_) {
        @throw [[[JavaLangArrayIndexOutOfBoundsException alloc] initWithInt:index] autorelease];
      }
      [self moveWithInt:1 withInt:index];
      [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:index withChar:ch];
      count_++;
      return self;
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
                               withBOOL:(BOOL)b {
  @synchronized(self) {
    {
      return [self insertWithInt:index withNSString:b ? @"true" : @"false"];
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
                                withInt:(int)i {
  @synchronized(self) {
    {
      return [self insertWithInt:index withNSString:[JavaLangInteger toStringWithInt:i]];
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
                            withLongInt:(long long int)l {
  @synchronized(self) {
    {
      return [self insertWithInt:index withNSString:[JavaLangLong toStringWithLongInt:l]];
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
                             withDouble:(double)d {
  @synchronized(self) {
    {
      return [self insertWithInt:index withNSString:[JavaLangDouble toStringWithDouble:d]];
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
                              withFloat:(float)f {
  @synchronized(self) {
    {
      return [self insertWithInt:index withNSString:[JavaLangFloat toStringWithFloat:f]];
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
                                 withId:(id)obj {
  @synchronized(self) {
    {
      return [self insertWithInt:index withNSString:obj == nil ? @"null" : [NIL_CHK(obj) description]];
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
                           withNSString:(NSString *)string {
  @synchronized(self) {
    {
      if (0 <= index && index <= count_) {
        if (string == nil) {
          string = @"null";
        }
        int min = [NIL_CHK(string) length];
        if (min != 0) {
          [self moveWithInt:min withInt:index];
          [NIL_CHK(string) getChars:0 sourceEnd:min destination:value_ destinationBegin:index];
          count_ += min;
        }
      }
      else {
        @throw [[[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:index] autorelease];
      }
      return self;
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
             withJavaLangCharacterArray:(IOSCharArray *)chars {
  @synchronized(self) {
    {
      if (0 > index || index > count_) {
        @throw [[[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:index] autorelease];
      }
      if ((int) [((IOSCharArray *) NIL_CHK(chars)) count] != 0) {
        [self moveWithInt:(int) [((IOSCharArray *) NIL_CHK(chars)) count] withInt:index];
        [JavaLangSystem arraycopyWithId:chars withInt:0 withId:value_ withInt:index withInt:(int) [((IOSCharArray *) NIL_CHK(chars)) count]];
        count_ += (int) [((IOSCharArray *) NIL_CHK(chars)) count];
      }
      return self;
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
             withJavaLangCharacterArray:(IOSCharArray *)chars
                                withInt:(int)start
                                withInt:(int)length {
  @synchronized(self) {
    {
      if (0 <= index && index <= count_) {
        if (start >= 0 && 0 <= length && length <= (int) [((IOSCharArray *) NIL_CHK(chars)) count] - start) {
          if (length != 0) {
            [self moveWithInt:length withInt:index];
            [JavaLangSystem arraycopyWithId:chars withInt:start withId:value_ withInt:index withInt:length];
            count_ += length;
          }
          return self;
        }
        @throw [[[JavaLangStringIndexOutOfBoundsException alloc] initWithNSString:[NSString stringWithFormat:@"offset %d, length %d, char[].length %d", start, length, (int) [((IOSCharArray *) NIL_CHK(chars)) count]]] autorelease];
      }
      @throw [[[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:index] autorelease];
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
               withJavaLangCharSequence:(id<JavaLangCharSequence>)s {
  @synchronized(self) {
    {
      [self insertWithInt:index withNSString:s == nil ? @"null" : [((id<JavaLangCharSequence>) NIL_CHK(s)) description]];
      return self;
    }
  }
}

- (JavaLangStringBuffer *)insertWithInt:(int)index
               withJavaLangCharSequence:(id<JavaLangCharSequence>)s
                                withInt:(int)start
                                withInt:(int)end {
  @synchronized(self) {
    {
      if (s == nil) {
        s = (id<JavaLangCharSequence>) @"null";
      }
      if (index < 0 || index > count_ || start < 0 || end < 0 || start > end || end > [((id<JavaLangCharSequence>) NIL_CHK(s)) sequenceLength]) {
        @throw [[[JavaLangIndexOutOfBoundsException alloc] init] autorelease];
      }
      [self insertWithInt:index withNSString:[((id<JavaLangCharSequence>) [((id<JavaLangCharSequence>) NIL_CHK(s)) subSequenceFrom:start to:end]) description]];
      return self;
    }
  }
}

- (JavaLangStringBuffer *)replaceWithInt:(int)start
                                 withInt:(int)end
                            withNSString:(NSString *)string {
  @synchronized(self) {
    {
      if (start >= 0) {
        if (end > count_) {
          end = count_;
        }
        if (end > start) {
          int stringLength = [NIL_CHK(string) length];
          int diff = end - start - stringLength;
          if (diff > 0) {
            if (!shared_) {
              [JavaLangSystem arraycopyWithId:value_ withInt:end withId:value_ withInt:start + stringLength withInt:count_ - end];
            }
            else {
              IOSCharArray *newData = [[[IOSCharArray alloc] initWithLength:(int) [((IOSCharArray *) NIL_CHK(value_)) count]] autorelease];
              [JavaLangSystem arraycopyWithId:value_ withInt:0 withId:newData withInt:0 withInt:start];
              [JavaLangSystem arraycopyWithId:value_ withInt:end withId:newData withInt:start + stringLength withInt:count_ - end];
              JreOperatorRetainedAssign(&value_, newData);
              shared_ = NO;
            }
          }
          else if (diff < 0) {
            [self moveWithInt:-diff withInt:end];
          }
          else if (shared_) {
            JreOperatorRetainedAssign(&value_, [((IOSCharArray *) NIL_CHK(value_)) clone]);
            shared_ = NO;
          }
          [NIL_CHK(string) getChars:0 sourceEnd:stringLength destination:value_ destinationBegin:start];
          count_ -= diff;
          return self;
        }
        if (start == end) {
          if (string == nil) {
            @throw [[[JavaLangNullPointerException alloc] init] autorelease];
          }
          [self insertWithInt:start withNSString:string];
          return self;
        }
      }
      @throw [[[JavaLangStringIndexOutOfBoundsException alloc] init] autorelease];
    }
  }
}

- (JavaLangStringBuffer *)reverse {
  @synchronized(self) {
    {
      if (count_ < 2) {
        return self;
      }
      if (!shared_) {
        int end = count_ - 1;
        unichar frontHigh = [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:0];
        unichar endLow = [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:end];
        BOOL allowFrontSur = YES, allowEndSur = YES;
        for (int i = 0, mid = count_ / 2; i < mid; i++, --end) {
          unichar frontLow = [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:i + 1];
          unichar endHigh = [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:end - 1];
          BOOL surAtFront = allowFrontSur && frontLow >= (int) 0xdc00 && frontLow <= (int) 0xdfff && frontHigh >= (int) 0xd800 && frontHigh <= (int) 0xdbff;
          if (surAtFront && (count_ < 3)) {
            return self;
          }
          BOOL surAtEnd = allowEndSur && endHigh >= (int) 0xd800 && endHigh <= (int) 0xdbff && endLow >= (int) 0xdc00 && endLow <= (int) 0xdfff;
          allowFrontSur = allowEndSur = YES;
          if (surAtFront == surAtEnd) {
            if (surAtFront) {
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:end withChar:frontLow];
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:end - 1 withChar:frontHigh];
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:i withChar:endHigh];
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:i + 1 withChar:endLow];
              frontHigh = [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:i + 2];
              endLow = [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:end - 2];
              i++;
              end--;
            }
            else {
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:end withChar:frontHigh];
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:i withChar:endLow];
              frontHigh = frontLow;
              endLow = endHigh;
            }
          }
          else {
            if (surAtFront) {
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:end withChar:frontLow];
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:i withChar:endLow];
              endLow = endHigh;
              allowFrontSur = NO;
            }
            else {
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:end withChar:frontHigh];
              [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:i withChar:endHigh];
              frontHigh = frontLow;
              allowEndSur = NO;
            }
          }
        }
        if ((count_ & 1) == 1 && (!allowFrontSur || !allowEndSur)) {
          [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:end withChar:allowFrontSur ? endLow : frontHigh];
        }
      }
      else {
        IOSCharArray *newData = [[[IOSCharArray alloc] initWithLength:(int) [((IOSCharArray *) NIL_CHK(value_)) count]] autorelease];
        for (int i = 0, end = count_; i < count_; i++) {
          unichar high = [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:i];
          if ((i + 1) < count_ && high >= (int) 0xd800 && high <= (int) 0xdbff) {
            unichar low = [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:i + 1];
            if (low >= (int) 0xdc00 && low <= (int) 0xdfff) {
              [((IOSCharArray *) NIL_CHK(newData)) replaceCharAtIndex:--end withChar:low];
              i++;
            }
          }
          [((IOSCharArray *) NIL_CHK(newData)) replaceCharAtIndex:--end withChar:high];
        }
        JreOperatorRetainedAssign(&value_, newData);
        shared_ = NO;
      }
      return self;
    }
  }
}

- (void)enlargeBufferWithInt:(int)min {
  int newSize = (((int) [((IOSCharArray *) NIL_CHK(value_)) count] >> 1) + (int) [((IOSCharArray *) NIL_CHK(value_)) count]) + 2;
  IOSCharArray *newData = [[[IOSCharArray alloc] initWithLength:min > newSize ? min : newSize] autorelease];
  [JavaLangSystem arraycopyWithId:value_ withInt:0 withId:newData withInt:0 withInt:count_];
  JreOperatorRetainedAssign(&value_, newData);
  shared_ = NO;
}

- (void)appendNull {
  int newSize = count_ + 4;
  if (newSize > (int) [((IOSCharArray *) NIL_CHK(value_)) count]) {
    [self enlargeBufferWithInt:newSize];
  }
  [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:count_++ withChar:'n'];
  [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:count_++ withChar:'u'];
  [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:count_++ withChar:'l'];
  [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:count_++ withChar:'l'];
}

- (int)capacity {
  return (int) [((IOSCharArray *) NIL_CHK(value_)) count];
}

- (int)sequenceLength {
  return count_;
}

- (void)moveWithInt:(int)size
            withInt:(int)index {
  int newSize;
  if ((int) [((IOSCharArray *) NIL_CHK(value_)) count] - count_ >= size) {
    if (!shared_) {
      [JavaLangSystem arraycopyWithId:value_ withInt:index withId:value_ withInt:index + size withInt:count_ - index];
      return;
    }
    newSize = (int) [((IOSCharArray *) NIL_CHK(value_)) count];
  }
  else {
    int a = count_ + size, b = ((int) [((IOSCharArray *) NIL_CHK(value_)) count] << 1) + 2;
    newSize = a > b ? a : b;
  }
  IOSCharArray *newData = [[[IOSCharArray alloc] initWithLength:newSize] autorelease];
  [JavaLangSystem arraycopyWithId:value_ withInt:0 withId:newData withInt:0 withInt:index];
  [JavaLangSystem arraycopyWithId:value_ withInt:index withId:newData withInt:index + size withInt:count_ - index];
  JreOperatorRetainedAssign(&value_, newData);
  shared_ = NO;
}

- (void)setCharAtWithInt:(int)index
             withUnichar:(unichar)ch {
  @synchronized(self) {
    {
      if (0 > index || index >= count_) {
        @throw [[[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:index] autorelease];
      }
      if (shared_) {
        JreOperatorRetainedAssign(&value_, [((IOSCharArray *) NIL_CHK(value_)) clone]);
        shared_ = NO;
      }
      [((IOSCharArray *) NIL_CHK(value_)) replaceCharAtIndex:index withChar:ch];
    }
  }
}

- (void)setLengthWithInt:(int)length {
  @synchronized(self) {
    {
      if (length < 0) {
        @throw [[[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:length] autorelease];
      }
      if (length > (int) [((IOSCharArray *) NIL_CHK(value_)) count]) {
        [self enlargeBufferWithInt:length];
      }
      else {
        if (shared_) {
          IOSCharArray *newData = [[[IOSCharArray alloc] initWithLength:(int) [((IOSCharArray *) NIL_CHK(value_)) count]] autorelease];
          [JavaLangSystem arraycopyWithId:value_ withInt:0 withId:newData withInt:0 withInt:count_];
          JreOperatorRetainedAssign(&value_, newData);
          shared_ = NO;
        }
        else {
          if (count_ < length) {
            [JavaUtilArrays fillWithJavaLangCharacterArray:value_ withInt:count_ withInt:length withUnichar:(unichar) 0];
          }
        }
      }
      count_ = length;
    }
  }
}

- (NSString *)substringWithInt:(int)start {
  @synchronized(self) {
    {
      if (0 <= start && start <= count_) {
        if (start == count_) {
          return @"";
        }
        return [NSString stringWithCharacters:value_ offset:start length:count_ - start];
      }
      @throw [[[JavaLangStringIndexOutOfBoundsException alloc] initWithInt:start] autorelease];
    }
  }
}

- (NSString *)substringWithInt:(int)start
                       withInt:(int)end {
  @synchronized(self) {
    {
      if (0 <= start && start <= end && end <= count_) {
        if (start == end) {
          return @"";
        }
        return [NSString stringWithCharacters:value_ offset:start length:end - start];
      }
      @throw [[[JavaLangStringIndexOutOfBoundsException alloc] init] autorelease];
    }
  }
}

- (NSString *)sequenceDescription {
  if (count_ == 0) {
    return @"";
  }
  int wasted = (int) [((IOSCharArray *) NIL_CHK(value_)) count] - count_;
  if (wasted >= 256 || (wasted >= JavaLangStringBuffer_INITIAL_CAPACITY && wasted >= (count_ >> 1))) {
    return [NSString stringWithCharacters:value_ offset:0 length:count_];
  }
  shared_ = YES;
  return [NSString stringWithCharacters:value_ offset:0 length:count_];
}

- (id<JavaLangCharSequence>)subSequenceFrom:(int)start to:(int)end {
  @synchronized(self) {
    {
      return (id<JavaLangCharSequence>) [self substringWithInt:start withInt:end];
    }
  }
}

- (int)indexOfWithNSString:(NSString *)string {
  return [self indexOfWithNSString:string withInt:0];
}

- (int)lastIndexOfWithNSString:(NSString *)string {
  return [self lastIndexOfWithNSString:string withInt:count_];
}

- (int)lastIndexOfWithNSString:(NSString *)subString
                       withInt:(int)start {
  @synchronized(self) {
    {
      if (subString == nil) {
        @throw [[[JavaLangNullPointerException alloc] init] autorelease];
      }
      int subCount = [NIL_CHK(subString) length];
      if (subCount <= count_ && start >= 0) {
        if (subCount > 0) {
          if (start > count_ - subCount) {
            start = count_ - subCount;
          }
          unichar firstChar = [NIL_CHK(subString) charAtWithInt:0];
          while (YES) {
            int i = start;
            BOOL found = NO;
            for (; i >= 0; --i) {
              if ([((IOSCharArray *) NIL_CHK(value_)) charAtIndex:i] == firstChar) {
                found = YES;
                break;
              }
            }
            if (!found) {
              return -1;
            }
            int o1 = i, o2 = 0;
            while (++o2 < subCount && [((IOSCharArray *) NIL_CHK(value_)) charAtIndex:++o1] == [NIL_CHK(subString) charAtWithInt:o2]) {
            }
            if (o2 == subCount) {
              return i;
            }
            start = i - 1;
          }
        }
        return start < count_ ? start : count_;
      }
      return -1;
    }
  }
}

- (void)trimToSize {
  @synchronized(self) {
    {
      if (count_ < (int) [((IOSCharArray *) NIL_CHK(value_)) count]) {
        IOSCharArray *newValue = [[[IOSCharArray alloc] initWithLength:count_] autorelease];
        [JavaLangSystem arraycopyWithId:value_ withInt:0 withId:newValue withInt:0 withInt:count_];
        JreOperatorRetainedAssign(&value_, newValue);
        shared_ = NO;
      }
    }
  }
}

- (IOSCharArray *)getValue {
  return value_;
}

- (void)dealloc {
  JreMemDebugRemove(self);
  JreOperatorRetainedAssign(&value_, nil);
  [super dealloc];
}

- (NSString *)description {
  return [self sequenceDescription];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  JavaLangStringBuffer *typedCopy = (JavaLangStringBuffer *) copy;
  typedCopy.value = value_;
  typedCopy.count = count_;
  typedCopy.shared = shared_;
}

- (NSArray *)memDebugStrongReferences {
  NSMutableArray *result =
      [[[super memDebugStrongReferences] mutableCopy] autorelease];
  [result addObject:[JreMemDebugStrongReference strongReferenceWithObject:value_ name:@"value"]];
  return result;
}

@end
