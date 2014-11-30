//
//  StuMineTableVC.m
//  jygj
//
//  Created by teacher.im on 14-11-26.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "StuMineTableVC.h"
#import "SingleColorBtn.h"
#import "EntranceVC.h"

@interface StuMineTableVC ()

@end

@implementation StuMineTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"个人中心";
    self.navigationItem.leftBarButtonItem = nil;
    [self setTitleBarColorGreyWithLeftBtn:NO];
    
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
       float height = [self heightForRow:indexPath.row];
        if(indexPath.row == 0){
            UITableViewCell *cell =  [self.tableView dequeueReusableCellWithIdentifier:@"stuMineTVCInfo"];
            if(cell == nil){
                cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, height)];
                UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img_stu"]];
                [imageView setFrame:CGRectMake(16, 10, 54, 46)];
                [cell.contentView addSubview:imageView];
                UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(imageView.rightX+20, 23, 100, 20)];
                [label setTextAlignment:NSTextAlignmentLeft];
                [label setText:@"138****6875"];
                [label setFont:[UIFont systemFontOfSize:14]];
                [label setTextColor:[UIColor whiteColor]];
                [cell.contentView addSubview:label];
                [cell setBackgroundColor:WY_GREEN];
                [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
            }
            return cell;
        }else if(indexPath.row == 1){
            UITableViewCell *cell =  [self.tableView dequeueReusableCellWithIdentifier:@"stuMineTVCline1"];
            if(cell == nil){
                cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, height)];
                [cell setBackgroundColor:WY_GREY];
                UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, (height-20)/2, 100, 20)];
                [label setTextColor:WY_GREEN];
                [label setFont:[UIFont systemFontOfSize:14]];
                [label setText:@"我关注的老师"];
                [cell.contentView addSubview:label];
                [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
            }
            return cell;
        }else if(indexPath.row == 2){
            UITableViewCell *cell =  [self.tableView dequeueReusableCellWithIdentifier:@"stuMineTVCline2"];
            if(cell == nil){
                cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, height)];
                [cell setBackgroundColor:WY_GREY];
                UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16, (height-20)/2, 100, 20)];
                [label setTextColor:WY_GREEN];
                [label setFont:[UIFont systemFontOfSize:14]];
                [label setText:@"修改密码"];
                [cell.contentView addSubview:label];
                [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
            }
            return cell;
        
        }
        return nil;
    }else{
        return nil;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 76)];
    [view setBackgroundColor:[UIColor whiteColor]];
    SingleColorBtn *btn = [[SingleColorBtn alloc] initWithFrame:CGRectMake((SCREEN_WIDTH-300)/2, 20, 300, 36) textColor:[UIColor whiteColor] bgColor:WY_ORANGE text:@"退出登录"];
    [view addSubview:btn];
    [btn addTarget:self action:@selector(logout) forControlEvents:UIControlEventTouchUpInside];
    return view;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return [self heightForRow:indexPath.row];
    }else{
        return 0;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if(section == 0){
        return 76;
    }else{
        return 0;
    }
}


-(CGFloat)heightForRow:(NSInteger)row{
    float height = 44;
    if(row == 0){
        height = 66;
    }
    return height;
}

-(void)logout{
    NSLog(@"logout");
    [self.navigationController popToRootViewControllerAnimated:NO];
}


@end
