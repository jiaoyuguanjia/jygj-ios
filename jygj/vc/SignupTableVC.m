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
@property(nonatomic,strong) NSTimer *countDowntimer;
@property(nonatomic) int _countDownNum;
@property(nonatomic) BOOL isCheck;
@property(nonatomic,strong) UIButton *checkBox;
@property(nonatomic,strong) SingleColorBtn *sendVerificationCodeBtn;

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
    [self showLeftBtn];
    if (self.isTutor) {
        [self setTitle:@"老师注册"];
    }else{
        [self setTitle:@"学生注册"];
    }
    
    self.tableView.delegate = self;
    [self.tableView setBackgroundColor:WY_GREY];
    /**默认选择*/
    self.isCheck = YES;

}


#pragma mark - Table view data source
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height = 0.0f;
    if(indexPath.section == 0){
        switch (indexPath.row) {
            case 3:
                height = SCREEN_HEIGHT - 56*3 - 34 - 50;
                break;
            default:
                height = 56;
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
                self.phoneTextField = [[BaseTextField alloc] initWithTextFrame:CGRectMake(12,3,SCREEN_WIDTH*5/7-12, 50) placeHolder:@"请输入手机号" keyboard:UIKeyboardTypeNumberPad];
                [self.phoneTextField setDelegate:self];
                self.phoneTextField.tag = 1;
                
                self.sendVerificationCodeBtn = [[SingleColorBtn alloc] initWithFrame:CGRectMake(SCREEN_WIDTH*5/7, 0,(SCREEN_WIDTH*2/7), 56) textColor:[UIColor whiteColor] bgColor:WY_GREEN text:@"获取验证码" font:[UIFont boldSystemFontOfSize:13] radius:0];
                [self.sendVerificationCodeBtn.titleLabel setNumberOfLines:2];
                [self.sendVerificationCodeBtn addTarget:self action:@selector(sendVerificationCode) forControlEvents:UIControlEventTouchUpInside];
                [cell.contentView addSubview:self.phoneTextField];
                [cell.contentView addSubview:self.sendVerificationCodeBtn];
            }
            return cell;
        }else if (indexPath.row == 1){
            UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"signupVeriCodeCell"];
            if (cell == nil) {
                cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 56)];
                self.veriCodeTextField = [[BaseTextField alloc] initWithTextFrame:CGRectMake(12,3,SCREEN_WIDTH-24,50) placeHolder:@"输入短信验证码" keyboard:UIKeyboardTypeNumberPad];
                self.veriCodeTextField.tag = 2;
                [self.veriCodeTextField setDelegate:self];
                [cell.contentView addSubview:self.veriCodeTextField];
            }
            return cell;
        }else if(indexPath.row == 2){
            UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"signupInputPassword"];
            if(cell == nil){
                cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 56)];
                self.passTextField = [[BaseTextField alloc] initWithTextFrame:CGRectMake(12,3,SCREEN_WIDTH-24,50) placeHolder:@"设置帐户密码" keyboard:UIKeyboardTypeASCIICapable];
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
            self.checkBox = [[UIButton alloc] initWithFrame:CGRectMake(12, 12, 22, 22)];
            [self.checkBox setImage:[UIImage imageNamed:@"icon_checkbox_a"] forState:UIControlStateNormal];
            [self.checkBox addTarget:self action:@selector(checkOrUnCheckCheckBox) forControlEvents:UIControlEventTouchUpInside];
            [cell.contentView addSubview:self.checkBox];
            //label
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(44, 15, 100, 16)];
            [label setFont:[UIFont systemFontOfSize:12]];
            [label setTextColor:WY_BLACK];
            [label setText:@"我已经阅读并同意"];
            UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(145, 15, 115, 16)];
            [label1 setFont:[UIFont systemFontOfSize:12]];
            [label1 setTextColor:WY_GREEN];
            [label1 setText:@"使用条款和隐私政策"];
            [cell.contentView addSubview:label];
            [cell.contentView addSubview:label1];
            
            self.errorMsg = [[ErrorMsgLabel alloc] initWithFrame:CGRectMake(12, 35, SCREEN_WIDTH-16, 30) message:@""];
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

#pragma 发送验证码
-(void)sendVerificationCode{
    if (self._countDownNum > 0) {
        return;
    }
   /**发送验证码**/
    
    if (self.countDowntimer) {
        [self.countDowntimer invalidate];
    }
    self._countDownNum = 10;
    //[self toCountDometimer];
    self.countDowntimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(toCountDometimer) userInfo:nil repeats:YES];
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
    }else if(textField.tag == 2){
        return [text length] < 6;
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
    if([[self.phoneTextField.text copy] length] != 11 || [[self.passTextField.text copy] length] <6 || [[self.passTextField.text copy] length] >20 || [[self.veriCodeTextField.text copy] length] != 5){
        return NO;
    }else{
        return YES;
    }
}

-(void)showErrors{
    [_errorMsg setTextColor:[UIColor redColor]];
    if([[self.phoneTextField.text copy] length] != 11){
        //手机号码输入不完整
        [_errorMsg setMsg:@"手机号码输入不正确"];
    }else if([[self.passTextField.text copy] length] < 6 || [[self.passTextField.text copy] length] > 20){
        [_errorMsg setMsg:@"密码长度在6到20位之间"];
    }else if([[self.veriCodeTextField.text copy] length] != 5){
        [_errorMsg setMsg:@"验证码输入不正确"];
    }
}
-(void)toCountDometimer{
    if (self._countDownNum >= 0) {
        NSString *msg = [NSString stringWithFormat:@"%i秒后重新获取",self._countDownNum];
        
        [self.sendVerificationCodeBtn setTitle:msg forState:UIControlStateNormal];
        [self.sendVerificationCodeBtn setBackgroundColor:RGB(200, 200, 200)];
        self.sendVerificationCodeBtn.contentEdgeInsets = UIEdgeInsetsMake(0,15, 0, 15);
    }else{
        [self.sendVerificationCodeBtn setTitle:@"获取验证码" forState:UIControlStateNormal];
        [self.sendVerificationCodeBtn setBackgroundColor:WY_GREEN];
        [self.countDowntimer invalidate];
        self.sendVerificationCodeBtn.contentEdgeInsets = UIEdgeInsetsMake(0,0,0,0);
    }
    self._countDownNum--;
}
-(void)failedSendVeriCode{
    [_errorMsg setTextColor:[UIColor redColor]];
    [_errorMsg setMsg:@"验证码发送失败，请重试！"];
}
-(void)checkOrUnCheckCheckBox{
    if (self.isCheck) {
        self.isCheck = NO;
        [self.checkBox setImage:[UIImage imageNamed:@"icon_checkbox_i"] forState:UIControlStateNormal];
    }else{
        self.isCheck = YES;
        [self.checkBox setImage:[UIImage imageNamed:@"icon_checkbox_a"] forState:UIControlStateNormal];
    }
}
@end
