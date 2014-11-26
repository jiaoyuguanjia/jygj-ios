//
//  StuSignupVC.h
//  jygj
//
//  Created by teacher.im on 14-11-22.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseTableVC.h"

@interface SignupTableVC : BaseTableVC

@property(nonatomic, assign) BOOL isTutor;
-(id)initWithUserType:(BOOL)isTutor;
@end
