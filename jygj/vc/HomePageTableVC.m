//
//  ListVC.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "HomePageTableVC.h"
#import "BaseView.h"

@interface HomePageTableVC ()

@end

@implementation HomePageTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    BaseView *baseView = [[BaseView alloc] initWithFrame:FULL_SCREEN];
    [self.view addSubview:baseView];
    [self setTitleBarColorGreen];
}


@end
