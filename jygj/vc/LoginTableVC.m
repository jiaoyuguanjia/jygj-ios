//
//  LoginVC.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "LoginTableVC.h"
#import "BaseTextField.h"
#import "SingleColorBtn.h"
#import "ErrorMsgLabel.h"

@interface LoginTableVC ()<UITextFieldDelegate>

@property(nonatomic,strong) BaseTextField *phoneTextField;
@property(nonatomic,strong) BaseTextField *passTextField;
@property(nonatomic,strong) ErrorMsgLabel *errorMsg;

@end

@implementation LoginTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title =@"登录";
    self.tableView.delegate = self;
    [self.tableView setBackgroundColor:WY_GREY];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat height = 0.0f;
    if(indexPath.section == 0){
        switch (indexPath.row) {
            case 0:
                height = 56;
                break;
            case 1:
                height = 56;
                break;
            case 2:
                height = SCREEN_HEIGHT - 196;
                break;
            default:
                break;
                
        }
    }
    return height;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if(section == 0){
        return 34;
    }else{
        return 0;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if(section == 0){
        return 50;
    }else{
        return 0;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section == 0){
        return 3;
    }else{
        return 0;
    }
}





- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        if(indexPath.row ==0 || indexPath.row == 1){
            if(indexPath.row == 0){
                UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"loginInputPhone"];
                if(cell == nil){
                    cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50)];
                    self.phoneTextField = [[BaseTextField alloc] initWithTextFrame:CGRectMake(16, 0, SCREEN_WIDTH-16, 50) placeHolder:@"请输入手机号" keyboard:UIKeyboardTypeNumberPad];
                    [self.phoneTextField setDelegate:self];
                    self.phoneTextField.tag = 1;
                    [cell.contentView addSubview:self.phoneTextField];
                }
                return cell;
                
            }else if(indexPath.row == 1){
                UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"loginInputPassword"];
                if(cell == nil){
                    cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50)];
                    self.passTextField = [[BaseTextField alloc] initWithTextFrame:CGRectMake(16, 0, SCREEN_WIDTH-16, 50) placeHolder:@"密码" keyboard:UIKeyboardTypeASCIICapable];
                    self.passTextField.secureTextEntry= YES;
                    self.passTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
                    self.passTextField.returnKeyType = UIReturnKeyDone;
                    self.passTextField.tag = 2;
                    [self.passTextField setDelegate:self];
                    [cell.contentView addSubview:self.passTextField];
                }
                return cell;
            }else{
                return nil;
            }
            
            
        }else if(indexPath.row == 2){
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"loginGreyCell"];
            [cell setBackgroundColor:WY_GREY];
            self.errorMsg = [[ErrorMsgLabel alloc] initWithFrame:CGRectMake(16, 0, SCREEN_WIDTH-16, 30) message:@""];
            [cell.contentView addSubview:self.errorMsg];
            return cell;
        }else{
            return nil;
        }
    }else{
        return nil;
    }
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 34)];
    [label setBackgroundColor:WY_GREY];
    [label setFont:[UIFont boldSystemFontOfSize:14]];
    [label setTextColor:WY_BLACK];
    [label setText:@"   登录账户："];
    return label;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    SingleColorBtn *loginBtn = [[SingleColorBtn alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50) textColor:[UIColor whiteColor] bgColor:WY_GREEN text:@"登 录" font:[UIFont boldSystemFontOfSize:20] radius:0];
    [loginBtn addTarget:self action:@selector(submitLogin) forControlEvents:UIControlEventTouchUpInside];
    return loginBtn;
}

#pragma 提交
-(void)submitLogin{
    if([self isInputCorrect]){
        [_errorMsg clean];
        
        
        
        
    }else{
        [self showErrors];
    }
}


#pragma TextField delegates
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    NSMutableString *text = [textField.text mutableCopy];
    [text replaceCharactersInRange:range withString:string];
    if (textField.tag == 1) {
        return [text length] < 12;
    }else{
        return [text length] <= 20;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if([self isInputCorrect]){
        [_errorMsg clean];
    }else{
        [self showErrors];
    }
    return YES;
}


-(BOOL)isInputCorrect{
    if([[self.phoneTextField.text copy] length] != 11 || [[self.passTextField.text copy] length] <6 || [[self.passTextField.text copy] length] >20){
        return NO;
    }else{
        return YES;
    }
}

-(void)showErrors{
    if([[self.phoneTextField.text copy] length] != 11){
        //手机号码输入不完整
        [_errorMsg setMsg:@"手机号码输入不正确"];
    }else if([[self.passTextField.text copy] length] < 6 || [[self.passTextField.text copy] length] > 20){
        [_errorMsg setMsg:@"密码长度在6到20位之间"];
    }
}


@end
