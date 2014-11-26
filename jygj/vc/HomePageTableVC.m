//
//  ListVC.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "HomePageTableVC.h"
#import "BaseView.h"

@interface HomePageTableVC ()

@end

@implementation HomePageTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    BaseView *baseView = [[BaseView alloc] initWithFrame:FULL_SCREEN];
    [self.view addSubview:baseView];
    [self setTitleBarColorGreen];
}


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
//        UITabBarItem *bar = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"btn_home_i"] selectedImage:[UIImage imageNamed:@"btn_home_a"]];
//        UITabBarItem *bar = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:1];

//        self.tabBarItem = bar;
        
    
    }
    return self;
}


@end
