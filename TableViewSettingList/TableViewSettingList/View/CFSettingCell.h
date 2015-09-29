//
//  CFSettingCell.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CFSettingItem;

@interface CFSettingCell : UITableViewCell

/** 模型 */
@property (nonatomic, strong) CFSettingItem *item;

@property (nonatomic, strong) NSIndexPath *indexPath;

/** cell背景颜色 */
@property (nonatomic, strong) UIColor *backgroundColor_Normal;

/** cell选中背景颜色 */
@property (nonatomic, strong) UIColor *backgroundColor_Selected;

/** cell箭头名称 */
@property(nonatomic,copy)NSString* iconArrow;

/** cell右边Label字体 */
@property (nonatomic, strong) UIFont *rightLabelFont;

/** cell右边Label字体颜色 */
@property (nonatomic, strong) UIColor *rightLabelFontColor;



+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
