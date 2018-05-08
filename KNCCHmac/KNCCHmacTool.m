//
//  KNCCHmacTool.m
//  KNCCHmac
//
//  Created by devzkn on 08/05/2018.
//  Copyright © 2018 devzkn. All rights reserved.
//

#import "KNCCHmacTool.h"
#import <CommonCrypto/CommonHMAC.h>
# import "Base64Transcoder.h"

@implementation KNCCHmacTool


+ (NSString *)hmacsha1:(NSString *)text key:(NSString *)secret {
    NSData *secretData = [secret dataUsingEncoding:NSUTF8StringEncoding];
    NSData *clearTextData = [text dataUsingEncoding:NSUTF8StringEncoding];
    unsigned char result[20];
    // SHA1加密
    CCHmac(kCCHmacAlgSHA1, [secretData bytes], [secretData length], [clearTextData bytes], [clearTextData length], result);
    char base64Result[32];
    size_t theResultLength = 32;
//     转为Base64
    Base64EncodeData(result, 20, base64Result, &theResultLength);
    NSData *theData = [NSData dataWithBytes:base64Result length:theResultLength];
    NSString *base64EncodedResult = [[NSString alloc] initWithData:theData encoding:NSUTF8StringEncoding];
    return base64EncodedResult;
}

@end
