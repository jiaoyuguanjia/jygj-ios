//
//  PhoneNumberTextField.h
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTextField : UITextField

-(BaseTextField *)initWithTextFrame:(CGRect)frame placeHolder:(NSString *) holderText keyboard:(UIKeyboardType)keyboardType;

@end
