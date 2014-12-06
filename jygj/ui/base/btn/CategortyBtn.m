//
//  CategortyBtn.m
//  jygj
//
//  Created by teacher.im on 14-12-6.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "CategortyBtn.h"

@implementation CategortyBtn


-(void)updateWithCategoryVO:(CategoryVO *)categoryVO{
    [self setBackgroundColor:[UIColor whiteColor]];
    [self setTitle:categoryVO.categoryName forState:UIControlStateNormal];
    [self setTitleColor:[UIColor colorWithHex:categoryVO.categoryTextColor] forState:UIControlStateNormal];
    [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
    [self.titleLabel setFont:[UIFont systemFontOfSize:14]];
}

@end
