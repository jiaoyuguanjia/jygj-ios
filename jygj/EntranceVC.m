//
//  ViewController.m
//  jygj
//
//  Created by teacher.im on 14-11-15.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "EntranceVC.h"

@interface EntranceVC ()

@end

@implementation EntranceVC

-(void)loadView{
    [super loadView];
    EntranceView *view = [[EntranceView alloc]initWithFrame:FULL_SCREEN];
    [self.view addSubview:view];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
