//
//  CFSettingSwitchItem.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import "CFSettingSwitchItem.h"
#import "CFSaveTool.h"

@implementation CFSettingSwitchItem

/** 根据CFSettingSwitchItem 设置的title获取 UISwitch的开关状态 */
+(BOOL)isONSwitchByTitle:(NSString *)title{
    return [CFSaveTool isTurnOnSwitchByTitle:title];
}
@end
