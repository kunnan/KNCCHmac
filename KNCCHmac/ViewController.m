//
//  ViewController.m
//  KNCCHmac
//
//  Created by devzkn on 08/05/2018.
//  Copyright © 2018 devzkn. All rights reserved.
//

#import "ViewController.h"
#import "KNCCHmacTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    ;
    NSLog(@"%@",[KNCCHmacTool hmacsha1:@"kn" key:@"kn"]);//musksf4d0ewfocjWO3X2nr5w9uA=
}
@end
