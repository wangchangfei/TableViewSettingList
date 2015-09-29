//
//  CFSettingIconArrowItem.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//  cell右边是图标和箭头

#import "CFSettingItem.h"

@interface CFSettingIconArrowItem : CFSettingItem

/** Cell右边图片名称 */
@property(nonatomic, copy) NSString *icon_right;

/** 跳转的控制器的类名 */
@property(nonatomic, assign) Class destVcClass;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass;
@end
