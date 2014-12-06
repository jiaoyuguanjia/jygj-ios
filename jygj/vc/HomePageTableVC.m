//
//  ListVC.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "HomePageTableVC.h"
#import "BaseView.h"
#import "CategroyTableViewCell.h"

@interface HomePageTableVC ()

@end

@implementation HomePageTableVC

-(void)loadView{
    [super loadView];
    self.logic = [[TeacherSearchLogic alloc] init];
    self.navigationItem.title = @"无涯";
    self.navigationItem.leftBarButtonItem = nil;
    self.tableView = [[UITableView alloc] initWithFrame:FULL_SCREEN style:UITableViewStylePlain];
    [self.tableView setDelegate:self];
    [self.tableView setDataSource:self];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.logic getAllCategories];
}


//前面两行为类别，第三行为标题，从第四行起为取接口数据
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    
    return 3;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row < 3){
        CategroyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[CategroyTableViewCell cellReuseIdentifier]];
        if(cell == nil){
            cell = [[CategroyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[CategroyTableViewCell cellReuseIdentifier]];
            [cell updateWithLogic:self.logic andIndex:indexPath.row];
        }
        return cell;
    }else{
        return [[UITableViewCell alloc] init];
    }
    
    
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}



@end
