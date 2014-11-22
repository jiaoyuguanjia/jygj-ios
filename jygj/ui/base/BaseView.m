//
//  BaseView.m
//  jygj
//
//  Created by teacher.im on 14-11-22.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

- (id)initWithFrame:(CGRect)frame{
   UIView *view = [super initWithFrame:frame];
   [view setBackgroundColor:WY_GREEN];
   
   return (id)view;
}

@end
