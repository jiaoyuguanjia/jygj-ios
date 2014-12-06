//
//  CategoryVO.h
//  jygj
//
//  Created by teacher.im on 14-12-6.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol CategoryVO <NSObject>
@end

@interface CategoryVO : NSObject

@property(nonatomic) NSInteger categoryId;
@property(nonatomic,strong) NSString *categoryName;
@property(nonatomic,strong) NSString *categoryTextColor;
@property(nonatomic,strong) NSArray<CategoryVO> *subCategory;

-(CategoryVO *)initWithCategory:(NSInteger) categoryId Name:(NSString *)name andColor:(NSString *) color;

@end
