//
//  TeacherSearchLogic.m
//  jygj
//
//  Created by teacher.im on 14-12-6.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "TeacherSearchLogic.h"

@implementation TeacherSearchLogic


-(void)getAllCategories{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    CategoryVO *c1 = [[CategoryVO alloc] initWithCategory:0 Name:@"小学" andColor:@"#86ba75"];
    [array addObject:c1];
    CategoryVO *c2 = [[CategoryVO alloc] initWithCategory:0 Name:@"初中" andColor:@"#4ea847"];
    [array addObject:c2];
    CategoryVO *c3 = [[CategoryVO alloc] initWithCategory:0 Name:@"高中" andColor:@"#d9a24d"];
    [array addObject:c3];
    CategoryVO *c4 = [[CategoryVO alloc] initWithCategory:0 Name:@"学前教育" andColor:@"#e26a68"];
    [array addObject:c4];
    CategoryVO *c5 = [[CategoryVO alloc] initWithCategory:0 Name:@"大学" andColor:@"#d9792b"];
    [array addObject:c5];
    CategoryVO *c6 = [[CategoryVO alloc] initWithCategory:0 Name:@"出国留学" andColor:@"#51b1a3"];
    [array addObject:c6];
    CategoryVO *c7 = [[CategoryVO alloc] initWithCategory:0 Name:@"艺术体育" andColor:@"#7383c0"];
    [array addObject:c7];
    CategoryVO *c8 = [[CategoryVO alloc] initWithCategory:0 Name:@"生活技能" andColor:@"#6ba74e"];
    [array addObject:c8];
    CategoryVO *c9 = [[CategoryVO alloc] initWithCategory:0 Name:@"语言培训" andColor:@"#de6444"];
    [array addObject:c9];
    self.categories = array;
}

@end
