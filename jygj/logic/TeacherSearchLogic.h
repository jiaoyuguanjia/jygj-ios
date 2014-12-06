//
//  TeacherSearchLogic.h
//  jygj
//
//  Created by teacher.im on 14-12-6.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CategoryVO.h"

@interface TeacherSearchLogic : NSObject

@property(nonatomic,strong) NSArray *categories;

-(void)getAllCategories;

@end
