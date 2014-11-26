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
    [label setTextAlignment:NSTextAlignmentLeft];
    if(msg != nil){
        [self setMsg:msg];
    }else{
        [label setText:@""];
    }
    return label;
}


-(void)clean{
    self.text = @"";
    [self.errorImageView removeFromSuperview];
}

-(void)setMsg:(NSString *)msg{
    if(msg != nil){
        [self setText:[NSString stringWithFormat:@"    %@",msg]];
        if(self.errorImageView == nil){
            self.errorImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"warning"]];
            [self.errorImageView setFrame:CGRectMake(0, 6, 14, 14)];
        }
        [self addSubview:self.errorImageView];
    }else{
        [self clean];
    }
}




@end
