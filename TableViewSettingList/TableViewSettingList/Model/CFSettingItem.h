//
//  CFSettingItem.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^CFSettingItemOpration)();

@interface CFSettingItem : NSObject

/** cell高度 */
@property (nonatomic, assign) CGFloat cellHeight;

/** cell文本 */
@property(nonatomic, copy) NSString *title;

/** cell图标 */
@property(nonatomic, copy) NSString *icon;

/** cell子文本 */
@property(nonatomic, copy) NSString *subTitle;

@property(nonatomic, assign) UITableViewCellSelectionStyle cellSelectionStyle;

/** 使用block保存一段功能，在恰当的时候调用 */
@property(nonatomic, copy) CFSettingItemOpration opration;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;

@end
