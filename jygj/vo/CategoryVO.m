//
//  CategoryVO.m
//  jygj
//
//  Created by teacher.im on 14-12-6.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "CategoryVO.h"

@implementation CategoryVO

-(CategoryVO *)initWithCategory:(NSInteger) categoryId Name:(NSString *)name andColor:(NSString *) color{
    CategoryVO *category = [[CategoryVO alloc] init];
    category.categoryId = categoryId;
    category.categoryName = name;
    category.categoryTextColor = color;
    return category;
}

@end
