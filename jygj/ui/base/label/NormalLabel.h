//
//  NormalWhiteLabel.h
//  jygj
//
//  Created by teacher.im on 14-11-16.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <UIKit/UIKit.h>

#define NORMAL_LABEL_SIZE 14

@interface NormalLabel : UILabel

-(NormalLabel *)initWithColor:(UIColor *)color andTextAutoLength:(NSString *)text;

-(NormalLabel *)initWithColor:(UIColor *)color andText:(NSString *)text andLength:(NSInteger *)length;

@end
