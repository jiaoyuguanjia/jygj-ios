//
//  ViewController.m
//  jygj
//
//  Created by teacher.im on 14-11-15.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)loadView{
    [super loadView];
    HomeView *view = [[HomeView alloc]initWithFrame:FULL_SCREEN];
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
