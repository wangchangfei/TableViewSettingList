//
//  CFSettingLabelArrowItem.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/6/23.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//  cell右边是文本和箭头

#import "CFSettingItem.h"

@interface CFSettingLabelArrowItem : CFSettingItem

/** 右边label显示什么内容 */
@property(nonatomic, copy) NSString *text_right;

/** 跳转的控制器的类名*/
@property(nonatomic, assign) Class destVcClass;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass;
@end
