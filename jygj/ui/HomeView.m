//
//  HomeView.m
//  jygj
//
//  Created by teacher.im on 14-11-16.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView

- (id)initWithFrame:(CGRect)frame{
    HomeView *view = [super initWithFrame:frame];
  
    
    [view setBackgroundColor:WY_GREEN];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:WY_CGRectMake(68, 64, 324, 160)];
    [imageView setImage:[UIImage imageNamed:@"img_wuya"]];
    
    
    
  
    //
    

    return view;
}

@end
