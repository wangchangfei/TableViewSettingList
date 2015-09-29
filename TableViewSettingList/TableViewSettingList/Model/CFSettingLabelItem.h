//
//  CFSettingLabelItem.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//  cell右边是文本

#import "CFSettingItem.h"

@interface CFSettingLabelItem : CFSettingItem

/** 右边label显示什么内容 */
@property (nonatomic, copy) NSString *text_right;

@end
