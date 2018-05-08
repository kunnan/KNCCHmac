//
//  KNCCHmacTool.h
//  KNCCHmac
//
//  Created by devzkn on 08/05/2018.
//  Copyright © 2018 devzkn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KNCCHmacTool : NSObject
+ (NSString *)hmacsha1:(NSString *)text key:(NSString *)secret ;
@end
