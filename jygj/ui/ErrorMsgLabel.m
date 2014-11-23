//
//  ErrorMsgLabel.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "ErrorMsgLabel.h"

@implementation ErrorMsgLabel

-(ErrorMsgLabel *)initWithFrame:(CGRect)frame message:(NSString *)msg{
    ErrorMsgLabel *label = [[ErrorMsgLabel alloc] initWithFrame:frame];
    [label setTextColor:[UIColor redColor]];
    [label setFont:[UIFont systemFontOfSize:14]];
    if(msg != nil){
        [self setMessage:msg];
    }else{
        [label setText:@""];
    }
    return label;
}


-(void)clean{
    self.text = @"";
    [self.errorImageView removeFromSuperview];
}

-(void)setMessage:(NSString *)msg{
    if(msg != nil){
        self.text = msg;
        self.errorImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"warning"]];
        [self addSubview:self.errorImageView];
    }else{
        [self clean];
    }
}


//-(void)drawTextInRect:(CGRect)rect{
//    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, UIEdgeInsetsMake(0,14,0,0))];
//}

@end
