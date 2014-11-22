//
//  StuSignupVIew.m
//  jygj
//
//  Created by teacher.im on 14-11-22.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "SignupView.h"
#import "BaseTableView.h"
#import "SignupTableVC.h"

@implementation SignupView

- (id)initWithFrame:(CGRect)frame{
    SignupView *view = [super initWithFrame:frame];
    [view setBackgroundColor:WY_GREY];
    
    SignupTableVC *signupTableVC = [[SignupTableVC alloc] init];
    
    
    
    return view;
}

@end
