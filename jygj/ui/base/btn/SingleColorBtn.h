//
//  SingleColorBtn.h
//  jygj
//
//  Created by teacher.im on 14-11-16.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleColorBtn : UIButton

-(SingleColorBtn *)initWithFrame:(CGRect)frame textColor:(UIColor *)textColor bgColor:(UIColor *) bgColor text:(NSString *)text;

-(SingleColorBtn *)initWithFrame:(CGRect)frame textColor:(UIColor *)textColor bgColor:(UIColor *) bgColor text:(NSString *)text
                            font:(UIFont *) font radius:(float) radius;

@end
