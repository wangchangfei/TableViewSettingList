//
//  CFIconArrowView.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//  Cell右边的图片和箭头

#import <UIKit/UIKit.h>

@interface CFIconArrowView : UIView

/** cell右边的图片 */
@property(nonatomic,copy)NSString* icon_right;


/** cell箭头名称 */
@property(nonatomic,copy)NSString* iconArrow;
@end
