//
//  ListVC.m
//  jygj
//
//  Created by teacher.im on 14-11-23.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "HomePageTableVC.h"
#import "BaseView.h"

@interface HomePageTableVC ()

@end

@implementation HomePageTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"无涯";
    self.navigationItem.leftBarButtonItem = nil;
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //前面四行固定，后面根据数据取
    return 0;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 0;
}



@end
