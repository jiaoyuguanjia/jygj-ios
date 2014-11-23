//
//  LoginVC.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "LoginVC.h"
#import "BaseView.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    BaseView *baseView = [[BaseView alloc] initWithFrame:FULL_SCREEN];
    [self.view addSubview:baseView];
    
    [self setTitleBarColorGreen];
    [self setTitle:@"登录"];
}

@end
