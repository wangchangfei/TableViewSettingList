//
//  CFSettingSwitchItem.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//  cell右边是Switch

#import "CFSettingItem.h"


typedef void (^CFSwitchValueChangedOpration)(BOOL);

@interface CFSettingSwitchItem : CFSettingItem

/** 使用block保存一段功能，在恰当的时候调用 */
@property(nonatomic, copy) CFSwitchValueChangedOpration opration_switch;

/** 默认打开开关 */
@property (nonatomic, assign) BOOL defaultOn;

/** 根据CFSettingSwitchItem 设置的title获取 UISwitch的开关状态 */
+ (BOOL) isONSwitchByTitle:(NSString *)title;

@end
