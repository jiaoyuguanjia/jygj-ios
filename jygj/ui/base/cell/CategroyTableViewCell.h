//
//  CategroyTableViewCell.h
//  jygj
//
//  Created by teacher.im on 14-12-6.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategortyBtn.h"
#import "TeacherSearchLogic.h"

@interface CategroyTableViewCell : UITableViewCell

@property(nonatomic,strong) CategortyBtn *leftBtn;
@property(nonatomic,strong) CategortyBtn *midBtn;
@property(nonatomic,strong) CategortyBtn *rightBtn;
@property(nonatomic,strong) UIView *leftLine;
@property(nonatomic,strong) UIView *rightLine;
@property(nonatomic,strong) UIView *bottomLine;


-(void)updateWithLogic:(TeacherSearchLogic *)logic andIndex:(NSInteger) row;

@end
