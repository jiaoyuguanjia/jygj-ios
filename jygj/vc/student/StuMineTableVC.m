//
//  StuMineTableVC.m
//  jygj
//
//  Created by teacher.im on 14-11-26.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "StuMineTableVC.h"

@interface StuMineTableVC ()

@end

@implementation StuMineTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"个人中心";
    self.navigationItem.leftBarButtonItem = nil;
    [self setTitleBarColorGreyWithLeftBtn:NO];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
