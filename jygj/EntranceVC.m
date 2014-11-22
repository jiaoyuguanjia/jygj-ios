//
//  ViewController.m
//  jygj
//
//  Created by teacher.im on 14-11-15.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "EntranceVC.h"
#import "SignupVC.h"

@interface EntranceVC () <HomeViewDelegate>

@end

@implementation EntranceVC

-(void)loadView{
    [super loadView];
    self.entranceView = [[EntranceView alloc]initWithFrame:FULL_SCREEN];
    [self.entranceView setHomeViewDelegate:self];
    [self.view addSubview:self.entranceView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma delegate methods

- (void) enterList:(id)sender{
    NSLog(@"enterList");
}

- (void) enterLogin:(id)sender{
    NSLog(@"enterLogin");
}

- (void) signupStudent:(id)sender{
    NSLog(@"signupStudent");
    SignupVC *stuVC = [[SignupVC alloc] init];
    [stuVC setTitle:@"学生注册"];
    [self.navigationController pushViewController:stuVC animated:YES];
    
}

- (void) signupTeacher:(id)sender{
    NSLog(@"signupTeacher");
}


@end
