//
//  StuSignupVC.m
//  jygj
//
//  Created by teacher.im on 14-11-22.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "StuSignupVC.h"
#import "StuSignupVIew.h"

@interface StuSignupVC ()

@end

@implementation StuSignupVC


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Student signup vc loaded...");
    StuSignupVIew *signupView = [[StuSignupVIew alloc] initWithFrame:FULL_SCREEN];
    [self.view addSubview:signupView];
}

-(void)viewDidAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
