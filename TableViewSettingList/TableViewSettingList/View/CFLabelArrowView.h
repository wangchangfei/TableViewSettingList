//
//  CFLabelArrowView.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/6/23.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//  Cell右边的文本和箭头

#import <UIKit/UIKit.h>

@interface CFLabelArrowView : UIView

/** 文本内容 */
@property(nonatomic,copy)NSString* text;

/** cell箭头名称 */
@property(nonatomic,copy)NSString* iconArrow;

/** cell右边Label字体 */
@property (nonatomic, strong) UIFont *rightLabelFont;

/** cell右边Label字体颜色 */
@property (nonatomic, strong) UIColor *rightLabelFontColor;

@end
