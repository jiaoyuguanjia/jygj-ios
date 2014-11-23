//
//  StuSignupVC.m
//  jygj
//
//  Created by teacher.im on 14-11-22.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "SignupVC.h"
#import "BaseView.h"
#import "SignupTableView.h"

@interface SignupVC ()

@end

@implementation SignupVC


- (void)viewDidLoad {
    [super viewDidLoad];
    BaseView *signupView = [[BaseView alloc] initWithFrame:FULL_SCREEN];
    
    [self.view addSubview:signupView];
    
    SignupTableView *tableView = [[SignupTableView alloc] initWithFrame:signupView.bounds];
    
    [signupView addSubview:tableView];
    
    [self setTitleBarColorGreen];
}

-(void)viewDidAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
