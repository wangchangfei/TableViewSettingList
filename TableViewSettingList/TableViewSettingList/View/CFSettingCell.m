//
//  CFSettingCell.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import "CFSettingCell.h"

#import "CFSettingItem.h"
#import "CFSettingArrowItem.h"
#import "CFSettingSwitchItem.h"
#import "CFSettingLabelItem.h"
#import "CFSettingLabelArrowItem.h"
#import "CFSettingIconItem.h"
#import "CFLabelArrowView.h"
#import "CFSettingIconArrowItem.h"
#import "CFIconArrowView.h"
#import "Const.h"
#import "CFSaveTool.h"

@interface CFSettingCell ()

@property(nonatomic, strong) UIImageView *imgView;
@property(nonatomic, strong) UISwitch *switchView;
@property(nonatomic, strong) UILabel *labelView;
@property(nonatomic, strong) CFLabelArrowView *labelarrowView;
@property(nonatomic, strong) CFIconArrowView *iconArrowView;
@property(nonatomic, strong) UIButton *headView;

@property(nonatomic, weak) UIView *divider;

@end

@implementation CFSettingCell

- (UIView *)divider {
    if (_divider == nil) {
        if (!iOS7) { // 不是ios7才需要创建分割线
            UIView *divider = [[UIView alloc] init];
            divider.backgroundColor = [UIColor blackColor];
            divider.alpha = 0.2;
            
            [self.contentView addSubview:divider];
            _divider = divider;
        }
    }
    
    return _divider;
}

- (UILabel *)labelView {
    if (_labelView == nil) {
        _labelView = [[UILabel alloc] init];
        _labelView.bounds = CGRectMake(0, 0, self.frame.size.width * 0.55, self.frame.size.height);
    }
    return _labelView;
}

- (UIImageView *)imgView {
    if (_imgView == nil) {
        if(self.iconArrow.length > 0){
            _imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.iconArrow]];
        }
        else{
            return nil;
        }
    }
    return _imgView;
}

- (UIButton *)headView {
    if (_headView == nil) {
        _headView = [[UIButton alloc] init];
        _headView.userInteractionEnabled = NO;
        _headView.frame = CGRectMake(0, 0, 80, 80);
    }
    return _headView;
}

- (CFLabelArrowView *)labelarrowView {
    if (_labelarrowView == nil) {
        _labelarrowView = [[CFLabelArrowView alloc] init];
        _labelarrowView.iconArrow = self.iconArrow;
        _labelarrowView.bounds = CGRectMake(0, 0, self.frame.size.width * 0.55, self.frame.size.height);
    }
    return _labelarrowView;
}

- (CFIconArrowView *)iconArrowView {
    if (_iconArrowView == nil) {
        _iconArrowView = [[CFIconArrowView alloc] init];
        _iconArrowView.iconArrow = self.iconArrow;
        _iconArrowView.bounds = CGRectMake(0, 0, self.frame.size.width * 0.55, self.frame.size.height);
    }
    return _iconArrowView;
}

- (UISwitch *)switchView {
    if (_switchView == nil) {
        _switchView = [[UISwitch alloc] init];
    }
    return _switchView;
}

- (void)setItem:(CFSettingItem *)item {
    _item = item;
    
    // 设置cell的子控件的数据
    [self setUpData];
    
    // 设置右边视图
    [self setUpAccessoryView];
}

/**
 *  设置cell的子控件的数据
 */
- (void)setUpData {
    if (_item.icon.length) {
        self.imageView.image = [UIImage imageNamed:_item.icon];
    } else {
        self.imageView.image = nil;
    }
    self.textLabel.text = _item.title;
    
    self.detailTextLabel.text = _item.subTitle;
}

/**
 *  设置右边视图
 */
- (void)setUpAccessoryView {
    if ([_item isKindOfClass:[CFSettingArrowItem class]]) { // Cell右边箭头
        self.accessoryView = self.imgView;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    } else if ([_item isKindOfClass:[CFSettingSwitchItem class]]) { // Cell右边Switch
        self.accessoryView = self.switchView;
         CFSettingSwitchItem *switchItem = (CFSettingSwitchItem *)_item;
        if([CFSaveTool isContainsKey:_item.title]){
            self.switchView.on = [CFSaveTool isTurnOnSwitchByTitle:_item.title];
        }
        else{
            [CFSaveTool setBool:switchItem.defaultOn forKey:_item.title];
            self.switchView.on = switchItem.defaultOn;
        }
        [self.switchView addTarget:self action:@selector(switchValueChanged:) forControlEvents:UIControlEventValueChanged];
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    } else if ([_item isKindOfClass:[CFSettingLabelItem class]]) { // Cell右边Label
        self.accessoryView = self.labelView;
        CFSettingLabelItem *labelItem = (CFSettingLabelItem *)_item;
        self.labelView.text = labelItem.text_right;
        self.labelView.textColor = CFRightLabelTextColor;
        self.labelView.font = [UIFont systemFontOfSize:15];
        self.labelView.textAlignment = NSTextAlignmentRight;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    } else if ([_item isKindOfClass: [CFSettingLabelArrowItem class]]) { // Cell右边Label和Arrow
        self.accessoryView = self.labelarrowView;
        CFSettingLabelArrowItem *labelarrowItem = (CFSettingLabelArrowItem *)_item;
        self.labelarrowView.text = labelarrowItem.text_right;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    } else if ([_item isKindOfClass:[CFSettingIconItem class]]) { //Cell右边是图片
        self.accessoryView = self.headView;
        CFSettingIconItem *iconItem = (CFSettingIconItem *)_item;
        [self.headView setImage:[UIImage imageNamed:iconItem.icon_right] forState:UIControlStateNormal];
        self.selectionStyle = iconItem.cellSelectionStyle;
    } else if ([_item isKindOfClass: [CFSettingIconArrowItem class]]) { //Cell右边有图片和箭头
        self.accessoryView = self.iconArrowView;
        CFSettingIconArrowItem *iconArrowItem = (CFSettingIconArrowItem *)_item;
        self.iconArrowView.icon_right = iconArrowItem.icon_right;
        self.selectionStyle = iconArrowItem.cellSelectionStyle;
    } else {
        self.accessoryView = nil;
        self.selectionStyle = UITableViewCellSelectionStyleDefault;
    }
}

-(void)switchValueChanged:(UISwitch *)switchControl{
    CFLog(@"switchValueChanged %d",switchControl.isOn);
    [CFSaveTool setBool:switchControl.isOn forKey:_item.title];
    if ([_item isKindOfClass:[CFSettingSwitchItem class]]) { // Cell右边Switch
        CFSettingSwitchItem *switchItem = (CFSettingSwitchItem *)_item;
        if(switchItem.opration_switch){
            switchItem.opration_switch(switchControl.isOn);
        }
    }
}

/**
 *  快速创建cell
 */
+ (instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"CFSettingCell";
    CFSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[CFSettingCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
        cell.textLabel.textColor = CFCellTextColor;
        cell.textLabel.font = [UIFont boldSystemFontOfSize:17];
    }
    
    return cell;
}

/**
 *  判断分割线是否需要显示
 */
- (void)setIndexPath:(NSIndexPath *)indexPath {
    _indexPath = indexPath;
    
    self.divider.hidden = indexPath.row == 0;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        // 清空子视图的背景
        [self setSubViews];
    }
    
    return self;
}

/**
 *  清空子控件的背景颜色
 */
- (void)setSubViews {
    self.textLabel.backgroundColor = [UIColor clearColor];
    self.detailTextLabel.backgroundColor = [UIColor clearColor];
}

/**
 * 适配ios6的cell
 */
- (void)setFrame:(CGRect)frame {
    if (!iOS7) {
        frame.size.width += 20;
        frame.origin.x -= 10;
    }
    
    [super setFrame:frame];
}

/**
 *  cell箭头
 */
-(void)setIconArrow:(NSString *)iconArrow{
    _iconArrow = iconArrow;
}

/**
 *  cell右边Label字体
 */
-(void)setRightLabelFont:(UIFont *)rightLabelFont{
    _rightLabelFont = rightLabelFont;
    self.labelView.font = rightLabelFont;
    self.labelarrowView.rightLabelFont = rightLabelFont;
}

/**
 *  cell右边Label字体颜色
 */
-(void)setRightLabelFontColor:(UIColor *)rightLabelFontColor{
    _rightLabelFontColor = rightLabelFontColor;    
    self.labelView.textColor = rightLabelFontColor;
    self.labelarrowView.rightLabelFontColor = rightLabelFontColor;
}

/**
 *  设置背景颜色
 */
-(void)setBackgroundColor_Normal:(UIColor *)backgroundColor_Normal{
    _backgroundColor_Normal = backgroundColor_Normal;
    
    UIView *bg = [[UIView alloc] init];
    bg.backgroundColor = backgroundColor_Normal;
    self.backgroundView = bg;
}

/**
 *  设置选中的背景颜色
 */
-(void)setBackgroundColor_Selected:(UIColor *)backgroundColor_Selected{
    _backgroundColor_Selected = backgroundColor_Selected;
    
    UIView *selectedBg = [[UIView alloc] init];
    selectedBg.backgroundColor = backgroundColor_Selected;
    self.selectedBackgroundView = selectedBg;
}

/**
 *  设置分割线的frame
 */
- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat dividerX = self.textLabel.frame.origin.x;
    CGFloat dividerY = 0;
    CGFloat dividerH = 1;
    CGFloat dividerW = self.frame.size.width;
    
    self.divider.frame = CGRectMake(dividerX, dividerY, dividerW, dividerH);
}

@end
