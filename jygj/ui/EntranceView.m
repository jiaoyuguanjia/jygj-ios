//
//  HomeView.m
//  jygj
//
//  Created by teacher.im on 14-11-16.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "EntranceView.h"
#import "SingleColorBtn.h"

@implementation EntranceView

- (id)initWithFrame:(CGRect)frame{
    EntranceView *view = [super initWithFrame:frame];
    
    
    UIView *mainView = [[UIView alloc]initWithFrame:WY_CGRectMake((view.width - 252), 40, 504, view.height)];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:WY_CGRectMake(0, 62, 324, 160)];
    [imageView setImage:[UIImage imageNamed:@"img_wuya"]];
    
    [mainView addSubview:imageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:WY_CGRectMake(10, 292, 300, 32)];
    [label setText:@"还没有账号？"];
    [label setFont:[UIFont systemFontOfSize:16]];
    [label setTextColor:RGB(236, 247, 241)];
    [mainView addSubview:label];
    
    
     self.stuSignBtn = [[SingleColorBtn alloc] initWithFrame:WY_CGRectMake(10, 352, 482, 76) color:[UIColor whiteColor] bgColor:RGB(255, 145, 64) text:@"我是学生"];
    [mainView addSubview:self.stuSignBtn];
    [self.stuSignBtn addTarget:self action:@selector(clickStudent) forControlEvents:UIControlEventTouchUpInside];
    
    
    SingleColorBtn *teacherBtn = [[SingleColorBtn alloc] initWithFrame:WY_CGRectMake(10, 466, 482, 76) color:[UIColor whiteColor] bgColor:RGB(255, 145, 64) text:@"我是老师"];
    [mainView addSubview:teacherBtn];
    [teacherBtn addTarget:self action:@selector(clickTeacher) forControlEvents:UIControlEventTouchUpInside];
    
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:WY_CGRectMake(10, 624, 300, 32)];
    [label2 setText:@"已有账号"];
    [label2 setFont:[UIFont systemFontOfSize:16]];
    [label2 setTextColor:RGB(236, 247, 241)];
    [mainView addSubview:label2];
    
    
    
    SingleColorBtn *loginBtn = [[SingleColorBtn alloc] initWithFrame:WY_CGRectMake(10, 676, 482, 76) color:[UIColor whiteColor] bgColor:RGB(255, 145, 64) text:@"立即登录"];
    [mainView addSubview:loginBtn];
    [loginBtn addTarget:self action:@selector(clickLogin) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *enter = [[UILabel alloc] initWithFrame:WY_CGRectMake((mainView.width-100), view.height-108, 200, 32)];
    [enter setText:@"先随便看看>>"];
    [enter setFont:[UIFont systemFontOfSize:16]];
    [enter setTextColor:[UIColor whiteColor]];
    [mainView addSubview:enter];
    
    
    [view addSubview:mainView];
    

    return view;
}


- (void) clickEnter{
    if([_homeViewDelegate respondsToSelector:@selector(enterList:)]){
        [_homeViewDelegate enterList:self];
    }
}

- (void) clickLogin{
    if([_homeViewDelegate respondsToSelector:@selector(enterLogin:)]){
        [_homeViewDelegate enterLogin:self];
    }
}

- (void) clickStudent{
    if([_homeViewDelegate respondsToSelector:@selector(signupStudent:)]){
        [_homeViewDelegate signupStudent:self];
    }
}

- (void) clickTeacher{
    if([_homeViewDelegate respondsToSelector:@selector(signupTeacher:)]){
        [_homeViewDelegate signupTeacher:self];
    }
}

@end
