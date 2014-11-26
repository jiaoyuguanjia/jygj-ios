//
//  SingleColorBtn.m
//  jygj
//
//  Created by teacher.im on 14-11-16.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "SingleColorBtn.h"

@implementation SingleColorBtn

-(SingleColorBtn *)initWithFrame:(CGRect)frame textColor:(UIColor *)textColor bgColor:(UIColor *) bgColor text:(NSString *)text{
    return [self initWithFrame:frame textColor:textColor bgColor:bgColor text:text font:nil radius:3.0f];
}

-(SingleColorBtn *)initWithFrame:(CGRect)frame textColor:(UIColor *)textColor bgColor:(UIColor *) bgColor text:(NSString *)text
                            font:(UIFont *) font radius:(float) radius{
    SingleColorBtn *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(radius > 0){
        [btn.layer setMasksToBounds:YES];
        [btn.layer setCornerRadius:radius];//设置矩形四个圆角半径
    }
    [btn setFrame:frame];
    [btn setTitle:text forState:UIControlStateNormal];
    [btn setTitleColor:textColor forState:UIControlStateNormal];
    [btn setBackgroundColor:bgColor];
    [btn.titleLabel setTextAlignment:NSTextAlignmentCenter];
    if(font == nil){
        [btn.titleLabel setFont:[UIFont boldSystemFontOfSize:frame.size.height / 2.0]];
    }else{
        [btn.titleLabel setFont:font];
    }
    return btn;
}

@end
