//
//  CategortyBtn.h
//  jygj
//
//  Created by teacher.im on 14-12-6.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "SingleColorBtn.h"
#import "CategoryVO.h"

@interface CategortyBtn : SingleColorBtn

-(void)updateWithCategoryVO:(CategoryVO *)categoryVO;

@end
