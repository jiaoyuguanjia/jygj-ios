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
}

-(void)setTitleBarColorGreen{
     self.navigationController.navigationBar.barTintColor = WY_GREEN;
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
}

-(void)setTitleBarColorGrey{
    self.navigationController.navigationBar.barTintColor = COLOR_GREY(246);
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
}



@end
