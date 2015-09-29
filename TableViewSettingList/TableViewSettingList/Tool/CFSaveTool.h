//
//  CFSaveTool.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright © 2015年 wangchangfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CFSaveTool : NSObject

/** 设置 */
+ (void)setBool:(BOOL)value forKey:(NSString *)defaultName;

/** 取出设置结果 */
+ (BOOL)boolForKey:(NSString *)defaultName;

/** 是否打开了 */
+ (BOOL)isTurnOnSwitchByTitle:(NSString *)key;

/** 是否设置过 */
+ (BOOL)isContainsKey:(NSString *)key;
@end
