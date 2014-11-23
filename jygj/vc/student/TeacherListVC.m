//
//  ListVC.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "TeacherListVC.h"
#import "BaseView.h"

@interface TeacherListVC ()

@end

@implementation TeacherListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    BaseView *baseView = [[BaseView alloc] initWithFrame:FULL_SCREEN];
    [self.view addSubview:baseView];
    
    [self setTitle:@"老师列表"];
    [self setTitleBarColorGrey];
}


@end
