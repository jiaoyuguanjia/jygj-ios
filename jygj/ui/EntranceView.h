//
//  HomeView.h
//  jygj
//
//  Created by teacher.im on 14-11-16.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SingleColorBtn.h"
#import "BaseView.h"

@protocol HomeViewDelegate <NSObject>

- (void) enterList:(id)sender;

- (void) enterLogin:(id)sender;

- (void) signupStudent:(id)sender;

- (void) signupTeacher:(id)sender;

@end

@interface EntranceView : BaseView

@property(nonatomic,assign) id<HomeViewDelegate> homeViewDelegate;
@property(nonatomic,strong) SingleColorBtn *stuSignBtn;
@property(nonatomic,strong) SingleColorBtn *teacherBtn;
@property(nonatomic,strong) SingleColorBtn *loginBtn;
@property(nonatomic,strong) UIButton *enterBtn;

@end
