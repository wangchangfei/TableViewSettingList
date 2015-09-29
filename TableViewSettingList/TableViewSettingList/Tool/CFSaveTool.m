//
//  CFSaveTool.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright © 2015年 wangchangfei. All rights reserved.
//

#import "CFSaveTool.h"

@implementation CFSaveTool

+ (void)setBool:(BOOL)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (BOOL)boolForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] boolForKey:defaultName];
}

/** 是否打开了 */
+ (BOOL)isTurnOnSwitchByTitle:(NSString *)key {
    BOOL voice = NO;
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    NSDictionary *dic = [defs dictionaryRepresentation];
    if ([dic.allKeys containsObject:key]) {
        voice = [defs boolForKey:key];
    } else {
        voice = NO;
    }
    return voice;
}

/** 是否设置过 */
+ (BOOL)isContainsKey:(NSString *)key  {
    NSUserDefaults *defs = [NSUserDefaults standardUserDefaults];
    NSDictionary *dic = [defs dictionaryRepresentation];
    if ([dic.allKeys containsObject:key]) {
        return YES;
    } else {
        return NO;
    }

}

@end
