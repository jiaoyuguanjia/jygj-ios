//
//  HomeView.h
//  jygj
//
//  Created by teacher.im on 14-11-16.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SingleColorBtn.h"

@protocol HomeViewDelegate <NSObject>

- (void) enterList:(id)sender;

- (void) enterLogin:(id)sender;

- (void) signupStudent:(id)sender;

- (void) signupTeacher:(id)sender;

@end

@interface EntranceView : UIView

@property(nonatomic,assign) id<HomeViewDelegate> homeViewDelegate;
@property(nonatomic,strong) SingleColorBtn *stuSignBtn;

@end
