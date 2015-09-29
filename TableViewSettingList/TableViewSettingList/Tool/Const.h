//
//  Const.h
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright © 2015年 wangchangfei. All rights reserved.
//

#ifndef Const_h
#define Const_h

#ifdef DEBUG // 处于开发阶段
#define CFLog(...) NSLog(__VA_ARGS__)
#else // 处于发布阶段
#define CFLog(...)
#endif
#import "UIColor+Hex.h"

// RGBA颜色
#define CFColorRGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define CFColor(r, g, b) CFColorRGBA(r, g, b, 1.0)

// view背景颜色
#define CFViewBackgroundColor CFColor(244, 243, 241)

// Cell上右边Label文字颜色
#define CFRightLabelTextColor [UIColor colorWithHexString:@"#a2a2a3"]

// Cell上文字颜色
#define CFCellTextColor [UIColor colorWithHexString:@"#5e5e5e"]

// iOS7以上
#define iOS7 ([[UIDevice currentDevice].systemVersion floatValue] >= 7.0)

//cell的高亮颜色
#define CFCellBackgroundColor_Highlighted CFColor(237, 233, 218)


#endif
