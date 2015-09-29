//
//  CFSettingIconArrowItem.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import "CFSettingIconArrowItem.h"

@implementation CFSettingIconArrowItem
+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass {
  CFSettingIconArrowItem *item = [super itemWithIcon:icon title:title];
  item.destVcClass = destVcClass;
  return item;
}
@end
