//
//  PhoneNumberTextField.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "BaseTextField.h"

@implementation BaseTextField

-(BaseTextField *)initWithTextFrame:(CGRect)frame placeHolder:(NSString *) holderText keyboard:(UIKeyboardType)keyboardType{
    BaseTextField *textField = [[BaseTextField alloc] initWithFrame:frame];
    [textField setTextColor:WY_BLACK];
    if(holderText != nil){
        [textField setPlaceholder:holderText];
    }
    [textField setKeyboardType:keyboardType];
    return textField;
}

@end
