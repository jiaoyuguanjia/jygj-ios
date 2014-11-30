//
//  UIViewController+Ext.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "UIViewController+Ext.h"

@implementation UIViewController (Ext)

-(void)setTitleBarColorGreenWithLeftBtn:(Boolean)hasLeftBtn{
    self.navigationController.navigationBar.barTintColor = WY_GREEN;
    NSDictionary *dic = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    self.navigationController.navigationBar.titleTextAttributes = dic;
    if(hasLeftBtn){
        [self showLeftBtn];
    }else{
        [self hideLeftBtn];
    }
}

-(void)setTitleBarColorGreyWithLeftBtn:(Boolean) hasLeftBtn{
    self.navigationController.navigationBar.barTintColor = WY_GREY;
    NSDictionary *dic = @{NSForegroundColorAttributeName:[UIColor blackColor]};
    self.navigationController.navigationBar.titleTextAttributes = dic;
    if(hasLeftBtn){
        [self showLeftBtn];
    }else{
        [self hideLeftBtn];
    }
}

-(void)showLeftBtn{
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

-(void)hideLeftBtn{
    [self.navigationItem setHidesBackButton:YES animated:NO];
}

@end
