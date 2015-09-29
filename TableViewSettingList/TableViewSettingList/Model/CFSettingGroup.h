//
//  CFSettingGroup.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CFSettingGroup : NSObject

/** TableView每组的数据 */
@property(nonatomic, strong) NSArray *items;

/** TableView头部高度 */
@property(nonatomic, assign) CGFloat headerHeight;

/** TableView头部文本 */
@property(nonatomic, copy) NSString *header;

/** TableView底部高度 */
@property(nonatomic, assign) CGFloat footerHeight;

/** TableView底部文本 */
@property(nonatomic, copy) NSString *footer;

/** TableView头部视图 */
@property(nonatomic, strong) UIView *headerView;

/** TableView底部视图 */
@property(nonatomic, strong) UIView *footerrView;

@end
