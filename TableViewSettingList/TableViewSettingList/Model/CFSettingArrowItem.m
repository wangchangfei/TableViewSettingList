//
//  CFSettingArrowItem.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import "CFSettingArrowItem.h"

@implementation CFSettingArrowItem

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass {
  CFSettingArrowItem *item = [super itemWithIcon:icon title:title];
  item.destVcClass = destVcClass;
  return item;
}

@end
