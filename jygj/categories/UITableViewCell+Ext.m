//
//  UITableViewCell+Ext.m
//  jygj
//
//  Created by teacher.im on 14-12-6.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "UITableViewCell+Ext.h"

@implementation UITableViewCell (Ext)


+ (NSString *)cellReuseIdentifier
{
    return NSStringFromClass([self class]);
}

@end
