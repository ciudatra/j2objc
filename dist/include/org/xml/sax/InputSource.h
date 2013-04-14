//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: android/libcore/luni/src/main/java/org/xml/sax/InputSource.java
//
//  Created by retechretech on 13-4-14.
//

@class JavaIoInputStream;
@class JavaIoReader;

#import "JreEmulation.h"

@interface OrgXmlSaxInputSource : NSObject {
 @public
  NSString *publicId_;
  NSString *systemId_;
  JavaIoInputStream *byteStream_;
  NSString *encoding_;
  JavaIoReader *characterStream_;
}

@property (nonatomic, copy) NSString *publicId;
@property (nonatomic, copy) NSString *systemId;
@property (nonatomic, retain) JavaIoInputStream *byteStream;
@property (nonatomic, copy) NSString *encoding;
@property (nonatomic, retain) JavaIoReader *characterStream;

- (id)init;
- (id)initWithNSString:(NSString *)systemId;
- (id)initWithJavaIoInputStream:(JavaIoInputStream *)byteStream;
- (id)initWithJavaIoReader:(JavaIoReader *)characterStream;
- (void)setPublicIdWithNSString:(NSString *)publicId;
- (NSString *)getPublicId;
- (void)setSystemIdWithNSString:(NSString *)systemId;
- (NSString *)getSystemId;
- (void)setByteStreamWithJavaIoInputStream:(JavaIoInputStream *)byteStream;
- (JavaIoInputStream *)getByteStream;
- (void)setEncodingWithNSString:(NSString *)encoding;
- (NSString *)getEncoding;
- (void)setCharacterStreamWithJavaIoReader:(JavaIoReader *)characterStream;
- (JavaIoReader *)getCharacterStream;
@end
