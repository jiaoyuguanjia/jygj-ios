//
//  SingleColorBtn.m
//  jygj
//
//  Created by teacher.im on 14-11-16.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "SingleColorBtn.h"

@implementation SingleColorBtn

-(SingleColorBtn *)initWithFrame:(CGRect)frame color:(UIColor *)color bgColor:(UIColor *) bgColor text:(NSString *)text{
    SingleColorBtn *btn = [[SingleColorBtn alloc] initWithFrame:frame];
    [btn setTitle:text forState:UIControlStateNormal];
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn setBackgroundColor:bgColor];
    [btn.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [btn.titleLabel setFont:[UIFont boldSystemFontOfSize:frame.size.height / 2.0]];
    btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    return btn;
}

@end
