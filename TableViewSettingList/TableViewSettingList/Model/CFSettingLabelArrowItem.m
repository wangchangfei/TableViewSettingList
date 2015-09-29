//
//  CFSettingLabelArrowItem.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/6/23.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import "CFSettingLabelArrowItem.h"
#import "CFSaveTool.h"

@implementation CFSettingLabelArrowItem

-(void)setText_right:(NSString *)text_right{
    _text_right = text_right;
}

- (void)setTitle:(NSString *)title {
  [super setTitle:title];
}

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title destVcClass:(Class)destVcClass {
  CFSettingLabelArrowItem *item = [super itemWithIcon:icon title:title];
  item.destVcClass = destVcClass;

  return item;
}
@end
