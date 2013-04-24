//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: apache_harmony/classlib/modules/nio/src/main/java/common/java/nio/Buffer.java
//
//  Created by retechretech on 13-4-24.
//

#import "JreEmulation.h"

#define JavaNioBuffer_UNSET_MARK -1

@interface JavaNioBuffer : NSObject {
 @public
  int capacity__;
  int limit__;
  int mark__;
  int position__;
}

@property (nonatomic, assign) int capacity_;
@property (nonatomic, assign) int limit_;
@property (nonatomic, assign) int mark_;
@property (nonatomic, assign) int position_;

+ (int)UNSET_MARK;
- (id)initWithInt:(int)capacity;
- (int)capacity;
- (JavaNioBuffer *)clear;
- (JavaNioBuffer *)flip;
- (BOOL)hasRemaining;
- (BOOL)isReadOnly;
- (int)limit;
- (JavaNioBuffer *)limitWithInt:(int)newLimit;
- (JavaNioBuffer *)mark;
- (int)position;
- (JavaNioBuffer *)positionWithInt:(int)newPosition;
- (int)remaining;
- (JavaNioBuffer *)reset;
- (JavaNioBuffer *)rewind;
@end
