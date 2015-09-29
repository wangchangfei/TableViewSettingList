//
//  CFSettingArrowItem.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//  cell右边是箭头

#import "CFSettingItem.h"

@interface CFSettingArrowItem : CFSettingItem

/** 跳转的控制器的类名 */
@property(nonatomic, assign) Class destVcClass;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass;

@end
