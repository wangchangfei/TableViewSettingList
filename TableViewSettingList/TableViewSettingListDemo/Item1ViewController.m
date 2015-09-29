//
//  Item1ViewController.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright © 2015年 wangchangfei. All rights reserved.
//

#import "Item1ViewController.h"

@interface Item1ViewController ()

@end

@implementation Item1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // cell箭头名称
    self.icon_arrow = @"CellArrow";
    
//    //设置相关参数
//    //cell背景颜色
//    self.backgroundColor_Normal = [UIColor whiteColor];
//    //cell选中背景颜色
//    self.backgroundColor_Selected = CFCellBackgroundColor_Highlighted;
//    //cell右边Label字体
//    self.rightLabelFont = [UIFont systemFontOfSize:15];
//    //cell右边Label文字颜色
//    self.rightLabelFontColor = CFRightLabelTextColor;
    
    
    CFSettingArrowItem *item1 =[CFSettingArrowItem itemWithIcon:@"icon1" title:@"朋友圈" destVcClass:[Item1ViewController class]];
    CFSettingGroup *group1 = [[CFSettingGroup alloc] init];
    group1.items = @[ item1];
    
    UIImageView *view = [[UIImageView alloc]init];
    view.frame = CGRectMake(0, 0, self.view.frame.size.width, 200);
    view.image = [UIImage imageNamed:@"icon_header"];
    group1.headerHeight = 200;
    group1.headerView = view;
    
    
    CFSettingArrowItem *item2 =[CFSettingArrowItem itemWithIcon:@"icon2" title:@"扫一扫" destVcClass:[Item1ViewController class]];
    CFSettingArrowItem *item3 =[CFSettingArrowItem itemWithIcon:@"icon3" title:@"摇一摇" destVcClass:[Item1ViewController class]];
    CFSettingGroup *group2 = [[CFSettingGroup alloc] init];
    group2.items = @[ item2,item3 ];
    
    
    CFSettingIconArrowItem *item4 =[CFSettingIconArrowItem itemWithIcon:@"icon4" title:@"附近的人" destVcClass:[Item1ViewController class]];
    item4.icon_right = @"FootStep";
    CFSettingGroup *group3 = [[CFSettingGroup alloc] init];
    group3.items = @[ item4];
    
    group3.header = @"头部文本";
    group3.footer = @"底部文本";
    group3.headerHeight = 30;
    group3.footerHeight = 30;
    
    
    CFSettingLabelArrowItem *item5 =[CFSettingLabelArrowItem itemWithIcon:@"icon2" title:@"扫一扫" destVcClass:[Item1ViewController class]];
    item5.text_right = @"扫一扫扫一扫";
    
    CFSettingLabelItem *item6 =[CFSettingLabelItem itemWithIcon:@"icon3" title:@"摇一摇"];
    item6.text_right = @"摇一摇摇一摇";
    CFSettingGroup *group4 = [[CFSettingGroup alloc] init];
    group4.items = @[ item5,item6 ];
    
    
    CFSettingSwitchItem *item7 =[CFSettingSwitchItem itemWithIcon:@"icon3" title:@"账号保护"];
    // 用户第一次设置前  默认打开开关
    item7.defaultOn = YES;
    // 开关状态改变时执行的操作
    item7.opration_switch = ^(BOOL isON){
        CFLog(@"UISwitch状态改变 %d",isON);
    };
    
    // 根据CFSettingSwitchItem的title获取开关状态
    BOOL isON = [CFSettingSwitchItem isONSwitchByTitle:item7.title];
    CFLog(@"是否打开了开关 %d",isON);
    
    CFSettingGroup *group5 = [[CFSettingGroup alloc] init];
    group5.items = @[ item7 ];
    
    
    CFSettingIconItem *item8 =[CFSettingIconItem itemWithIcon:@"icon3" title:@"右边头像"];
    item8.cellHeight = 60;
    item8.icon_right =@"icon_touxiang";
    CFSettingGroup *group6 = [[CFSettingGroup alloc] init];
    group6.items = @[ item8 ];
    
    [self.dataList addObject:group1];
    [self.dataList addObject:group2];
    [self.dataList addObject:group3];
    [self.dataList addObject:group4];
    [self.dataList addObject:group5];
    [self.dataList addObject:group6];
    
}
@end
