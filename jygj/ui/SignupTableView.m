//
//  SignupTableView.m
//  jygj
//
//  Created by yhd on 14-11-22.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "SignupTableView.h"
#import "SingleColorBtn.h"

@implementation SignupTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.dataSource = self;
        self.delegate = self;
        self.separatorInset = UIEdgeInsetsZero;
        [self setBackgroundColor:WY_GREY];
    }
    return self;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    //UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    //UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(60,180,200,35)];
    //textField.adjustsFontSizeToFitWidth = YES;
    //textField.borderStyle = UITextBorderStyleRoundedRect;
    //UIImageView *imageView = [[UIImageView alloc] initWithFrame:WY_CGRectMake(0, 62, 324, 160)];
    //[imageView setImage:[UIImage imageNamed:@"img_wuya"]];
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
            textField.borderStyle = UITextBorderStyleRoundedRect;
            textField.placeholder = @"请输入手机号";
            
            SingleColorBtn *btn = [[SingleColorBtn alloc] initWithFrame:CGRectMake((SCREEN_WIDTH*5/7+5), 5,(SCREEN_WIDTH*2/7-10), 60) color:[UIColor whiteColor] bgColor:RGB(255, 145, 64) text:@"获取验证码"];
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


    
    
//    switch (indexPath.row) {
//        case 0:
//            cell.textLabel.text = @"3秒快速注册";
//            cell.textLabel.font = [UIFont systemFontOfSize:14];
//            cell.backgroundColor = WY_GREY;
//            break;
//        case 1:
//            textField.tag = 1;
//            textField.placeholder = @"请输入手机号";
//            textField.rightView = imageView;
//            cell.accessoryView = textField;
//            //cell.textLabel.text = @"请输入手机号";
//            break;
//        case 2:
//            textField.tag = 2;
//            textField.placeholder = @"输入手机验证码";
//            cell.accessoryView = textField;
//            //cell.textLabel.text = @"输入手机验证码";
//            break;
//        case 3:
//            textField.tag = 3;
//            textField.placeholder = @"设置帐户秘密";
//            textField.secureTextEntry = YES; //密码
//            cell.accessoryView = textField;
//            //cell.textLabel.text = @"设置帐户秘密";
//            break;
//        case 4:
//            cell.textLabel.text = @"条款";
//            cell.backgroundColor = WY_GREY;
//            break;
//        default:
//            cell.textLabel.text = @"注册";
//            cell.backgroundColor = WY_GREEN;
//            break;
//    }
//
//    return cell;
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




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
