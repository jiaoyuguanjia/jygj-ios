//
//  HomeView.m
//  jygj
//
//  Created by teacher.im on 14-11-16.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "HomeView.h"
#import "SingleColorBtn.h"

@implementation HomeView

- (id)initWithFrame:(CGRect)frame{
    HomeView *view = [super initWithFrame:frame];
    
    
    UIView *mainView = [[UIView alloc]initWithFrame:WY_CGRectMake((view.width - 252), 0, 504, view.height)];
    
    
    [view setBackgroundColor:WY_GREEN];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:WY_CGRectMake(0, 62, 324, 160)];
    [imageView setImage:[UIImage imageNamed:@"img_wuya"]];
    
    [mainView addSubview:imageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:WY_CGRectMake(10, 292, 300, 32)];
    [label setText:@"还没有账号？"];
    [label setFont:[UIFont systemFontOfSize:16]];
    [label setTextColor:RGB(236, 247, 241)];
    [mainView addSubview:label];
    
    
    SingleColorBtn *stuSignBtn = [[SingleColorBtn alloc] initWithFrame:WY_CGRectMake(10, 352, 482, 76) color:[UIColor whiteColor] bgColor:RGB(248, 127, 32) text:@"我是学生"];
    [mainView addSubview:stuSignBtn];
    
    SingleColorBtn *teacherBtn = [[SingleColorBtn alloc] initWithFrame:WY_CGRectMake(10, 466, 482, 76) color:[UIColor whiteColor] bgColor:RGB(248, 127, 32) text:@"我是老师"];
    [mainView addSubview:teacherBtn];
    
    
    UILabel *label2 = [[UILabel alloc] initWithFrame:WY_CGRectMake(10, 624, 300, 32)];
    [label2 setText:@"已有账号"];
    [label2 setFont:[UIFont systemFontOfSize:16]];
    [label2 setTextColor:RGB(236, 247, 241)];
    [mainView addSubview:label2];
    
    
    
    SingleColorBtn *loginBtn = [[SingleColorBtn alloc] initWithFrame:WY_CGRectMake(10, 676, 482, 76) color:[UIColor whiteColor] bgColor:RGB(248, 127, 32) text:@"立即登录"];
    [mainView addSubview:loginBtn];
    
    UILabel *enter = [[UILabel alloc] initWithFrame:WY_CGRectMake((mainView.width-100), view.height-88, 200, 32)];
    [enter setText:@"先随便看看>>"];
    [enter setFont:[UIFont systemFontOfSize:16]];
    [enter setTextColor:[UIColor whiteColor]];
    [mainView addSubview:enter];
    
    [view addSubview:mainView];
    

    return view;
}

@end
