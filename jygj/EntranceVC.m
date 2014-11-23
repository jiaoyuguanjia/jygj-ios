//
//  ViewController.m
//  jygj
//
//  Created by teacher.im on 14-11-15.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "EntranceVC.h"
#import "SignupVC.h"
#import "LoginTableVC.h"
#import "TeacherListVC.h"

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

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma delegate methods

- (void) enterList:(id)sender{
    TeacherListVC *listVC = [[TeacherListVC alloc] init];
    [self.navigationController pushViewController:listVC animated:YES];
}

- (void) enterLogin:(id)sender{
    LoginTableVC *loginVC = [[LoginTableVC alloc]init];
    [self.navigationController pushViewController:loginVC animated:YES];
}

- (void) signupStudent:(id)sender{
    SignupVC *stuVC = [[SignupVC alloc] init];
    [stuVC setTitle:@"学生注册"];
    [self.navigationController pushViewController:stuVC animated:YES];
}

- (void) signupTeacher:(id)sender{
    SignupVC *stuVC = [[SignupVC alloc] init];
    [stuVC setTitle:@"老师注册"];
    [self.navigationController pushViewController:stuVC animated:YES];
}


@end
