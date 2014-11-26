//
//  StuSignupVC.m
//  jygj
//
//  Created by teacher.im on 14-11-22.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "SignupTableVC.h"
#import "BaseView.h"
#import "SingleColorBtn.h"
#import "BaseTextField.h"
#import "ErrorMsgLabel.h"

@interface SignupTableVC ()<UITextFieldDelegate>

@property(nonatomic,strong) BaseTextField *phoneTextField;
@property(nonatomic,strong) BaseTextField *veriCodeTextField;
@property(nonatomic,strong) BaseTextField *passTextField;
@property(nonatomic,strong) ErrorMsgLabel *errorMsg;

@end

@implementation SignupTableVC

-(id)initWithUserType:(BOOL)isTutor{
    self=[super init];
    if(self){
        self.isTutor = isTutor;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.isTutor) {
        [self setTitle:@"老师注册"];
    }else{
        [self setTitle:@"学生注册"];
    }
    
    self.tableView.delegate = self;
    [self.tableView setBackgroundColor:WY_GREY];

}


#pragma mark - Table view data source
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height = 0.0f;
    if(indexPath.section == 0){
        switch (indexPath.row) {
            case 3:
                height = SCREEN_HEIGHT - 70*3 - 34 - 50;
                break;
            default:
                height = 70;
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
        return 4;
    }else{
        return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
        if(indexPath.row == 0){
            UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"signupInputPhone"];
            if(cell == nil){
                cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 70)];
                self.phoneTextField = [[BaseTextField alloc] initWithTextFrame:CGRectMake(5,5,SCREEN_WIDTH*5/7-5, 60) placeHolder:@"请输入手机号" keyboard:UIKeyboardTypeNumberPad];
                [self.phoneTextField setDelegate:self];
                self.phoneTextField.tag = 1;
                
                SingleColorBtn *btn = [[SingleColorBtn alloc] initWithFrame:CGRectMake((SCREEN_WIDTH*5/7+5), 5,(SCREEN_WIDTH*2/7-10), 60) textColor:[UIColor whiteColor] bgColor:WY_GREEN text:@"获取验证码"];
                [btn.titleLabel setFont:[UIFont boldSystemFontOfSize:14]];
                
                [cell.contentView addSubview:self.phoneTextField];
                [cell.contentView addSubview:btn];
            }
            return cell;
        }else if (indexPath.row == 1){
            UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"signupVeriCodeCell"];
            if (cell == nil) {
                cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 70)];
                self.veriCodeTextField = [[BaseTextField alloc] initWithTextFrame:CGRectMake(5,5,SCREEN_WIDTH-10,60) placeHolder:@"输入短信验证码" keyboard:UIKeyboardTypeNumberPad];
                self.veriCodeTextField.tag = 2;
                [cell.contentView addSubview:self.veriCodeTextField];
            }
            return cell;
        }else if(indexPath.row == 2){
            UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"signupInputPassword"];
            if(cell == nil){
                cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 70)];
                self.passTextField = [[BaseTextField alloc] initWithTextFrame:CGRectMake(5,5,SCREEN_WIDTH-10,60) placeHolder:@"设置帐户密码" keyboard:UIKeyboardTypeASCIICapable];
                self.passTextField.secureTextEntry= YES;
                self.passTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
                self.passTextField.returnKeyType = UIReturnKeyDone;
                self.passTextField.tag = 3;
                [self.passTextField setDelegate:self];
                [cell.contentView addSubview:self.passTextField];
            }
            return cell;
        }else if(indexPath.row == 3){
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"sugnupGreyCell"];
            [cell setBackgroundColor:WY_GREY];
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:WY_CGRectMake(5, 20, 219, 26)];
            [imageView setImage:[UIImage imageNamed:@"provision"]];
            [cell.contentView addSubview:imageView];
            
            self.errorMsg = [[ErrorMsgLabel alloc] initWithFrame:CGRectMake(5, 35, SCREEN_WIDTH-16, 30) message:@""];
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
    [label setFont:[UIFont systemFontOfSize:14]];
    [label setTextColor:WY_BLACK];
    if (!self.isTutor) {
        [label setText:@"   3秒快速注册"];
    }
    
    return label;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    SingleColorBtn *sigBtn = [[SingleColorBtn alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50) textColor:[UIColor whiteColor] bgColor:WY_GREEN text:@"注 册" font:[UIFont boldSystemFontOfSize:20] radius:0];
    [sigBtn addTarget:self action:@selector(submitSignup) forControlEvents:UIControlEventTouchUpInside];
    return sigBtn;
}

#pragma 提交
-(void)submitSignup{
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
    [textField resignFirstResponder];
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
