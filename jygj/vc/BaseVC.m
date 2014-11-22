//
//  BaseVC.m
//  jygj
//
//  Created by teacher.im on 14-11-22.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "BaseVC.h"


@interface BaseVC ()

@end

@implementation BaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBar.translucent = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self setTitleBarColorGrey];
    [self setLeftBtn];
}

-(void)setTitleBarColorGreen{
     self.navigationController.navigationBar.barTintColor = WY_GREEN;
    NSDictionary *dic = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    self.navigationController.navigationBar.titleTextAttributes = dic;
}

-(void)setTitleBarColorGrey{
    self.navigationController.navigationBar.barTintColor = COLOR_GREY(246);
    NSDictionary *dic = @{NSForegroundColorAttributeName:[UIColor blackColor]};
    self.navigationController.navigationBar.titleTextAttributes = dic;
}

-(void)setLeftBtn{
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftBtn setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [leftBtn addTarget:self action:@selector(leftBtnClicked)
     forControlEvents:UIControlEventTouchUpInside];
    leftBtn.width = 25;
    leftBtn.height = 25;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
}

/**
 * 如果需要覆盖默认的按钮行为可覆盖此方法
 **/
-(void)leftBtnClicked{
    [self.navigationController popViewControllerAnimated:YES];
}




@end
