//
//  CFSettingItem.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import "CFSettingItem.h"

@implementation CFSettingItem

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title
{
    CFSettingItem *item = [[self alloc] init];
    
    item.icon = icon;
    item.title = title;
    
    return item;
}

@end
