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

@interface SignupTableVC ()

@end

@implementation SignupTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    if (indexPath.row == 0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            cell.textLabel.text = @"3秒快速注册";
            cell.textLabel.font = [UIFont systemFontOfSize:14];
            cell.backgroundColor = WY_GREY;
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (indexPath.row == 1){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            
            UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(5,5,SCREEN_WIDTH*5/7-5, 60)];
            textField.height = 60;
            textField.keyboardType = UIKeyboardTypeNumberPad;
            textField.returnKeyType = UIReturnKeyDone;
            textField.borderStyle = UITextBorderStyleRoundedRect;
            textField.placeholder = @"请输入手机号";
            
            SingleColorBtn *btn = [[SingleColorBtn alloc] initWithFrame:CGRectMake((SCREEN_WIDTH*5/7+5), 5,(SCREEN_WIDTH*2/7-10), 60) color:[UIColor whiteColor] bgColor:WY_GREEN text:@"获取验证码"];
            [btn.titleLabel setFont:[UIFont boldSystemFontOfSize:14]];
            
            [cell.contentView addSubview:textField];
            [cell.contentView addSubview:btn];
        }
        return cell;
    }else if (indexPath.row == 2){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            
            UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(5,5,SCREEN_WIDTH-10,60)];
            textField.height = 60;
            textField.returnKeyType = UIReturnKeyDone;
            textField.borderStyle = UITextBorderStyleRoundedRect;
            textField.placeholder = @"输入短信验证码";
            
            [cell.contentView addSubview:textField];
        }
        return cell;
    }else if (indexPath.row == 3){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            
            UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(5,5,SCREEN_WIDTH-10,60)];
            textField.height = 60;
            textField.borderStyle = UITextBorderStyleRoundedRect;
            textField.placeholder = @"设置帐户密码";
            
            [cell.contentView addSubview:textField];
        }
        return cell;
    }else if (indexPath.row == 4){
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            cell.textLabel.text = @"条款";
            cell.backgroundColor = WY_GREY;
        }
        return cell;
    }else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
            cell.textLabel.text = @"注册";
            cell.backgroundColor = WY_GREEN;
        }
        return cell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            return 50;
            break;
        case 4:
            return SCREEN_HEIGHT - 375;
            break;
        case 5:
            return 60;
            break;
        default:
            return 70;
            break;
    }
    
}


@end
