//
//  AppDelegate.m
//  jygj
//
//  Created by teacher.im on 14-11-15.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "AppDelegate.h"
#import "HomePageTableVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UINavigationController *nav = [[UINavigationController alloc] init];
    
    EntranceVC *controller = [[EntranceVC alloc] init];
    
    
    self.window = [UIWindow new];
    [self.window makeKeyAndVisible];
    self.window.frame = [[UIScreen mainScreen] bounds];
    
    [nav pushViewController:controller animated:NO];
    nav.navigationBarHidden = YES;
    
    self.window.rootViewController = nav;
    return YES;
}


@end
