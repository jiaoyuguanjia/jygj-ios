//
//  CategroyTableViewCell.m
//  jygj
//
//  Created by teacher.im on 14-12-6.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "CategroyTableViewCell.h"
#import "CategoryVO.h"

@implementation CategroyTableViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self setBackgroundColor:WY_GREY];
        
        CGFloat width = (SCREEN_WIDTH-2) / 3.0;
        self.leftBtn = [[CategortyBtn alloc] initWithFrame:CGRectMake(0, 0, width, 49)];
        self.midBtn = [[CategortyBtn alloc] initWithFrame:CGRectMake(width+1, 0, width, 49)];
        self.rightBtn = [[CategortyBtn alloc] initWithFrame:CGRectMake(width*2+1, 0, width, 49)];
        self.leftLine = [[UIView alloc] initWithFrame:CGRectMake(width, 0, 1, 50)];
        [self.leftLine setBackgroundColor:WY_GREY_LINE];
        
        self.rightLine = [[UIView alloc]initWithFrame:CGRectMake(width*2+1, 0, 1, 50)];
        [self.rightLine setBackgroundColor:WY_GREY_LINE];
        
        self.bottomLine = [[UIView alloc]initWithFrame:CGRectMake(0, self.leftBtn.bottomY, SCREEN_WIDTH, 1)];
        [self.bottomLine setBackgroundColor:WY_GREY_LINE];
        [self.contentView addSubview:self.bottomLine];
        
        [self.contentView addSubview:self.leftBtn];
        [self.contentView addSubview:self.midBtn];
        [self.contentView addSubview:self.rightBtn];
        [self.contentView addSubview:self.leftLine];
        [self.contentView addSubview:self.rightLine];
    }
    return self;
}


-(void)updateWithLogic:(TeacherSearchLogic *)logic andIndex:(NSInteger) row{
    CategoryVO *leftVo = [logic.categories objectAtIndex:row*3];
    CategoryVO *midVo = [logic.categories objectAtIndex:row*3+1];
    CategoryVO *rightVo = [logic.categories objectAtIndex:row*3+2];
    
    [self.leftBtn updateWithCategoryVO:leftVo];
    [self.midBtn updateWithCategoryVO:midVo];
    [self.rightBtn updateWithCategoryVO:rightVo];
}

@end
