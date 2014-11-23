//
//  ErrorMsgLabel.h
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ErrorMsgLabel : UILabel

@property(nonatomic,strong) UIImageView *errorImageView;


-(ErrorMsgLabel *)initWithFrame:(CGRect)frame message:(NSString *)msg;

-(void)clean;

@end
