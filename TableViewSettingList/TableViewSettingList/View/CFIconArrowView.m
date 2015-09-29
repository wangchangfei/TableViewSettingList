//
//  CFIconArrowView.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import "CFIconArrowView.h"

@interface CFIconArrowView ()

@property(nonatomic, weak) UIButton *btn_Icon;

@property(nonatomic, weak) UIImageView *imgView;

@end

@implementation CFIconArrowView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        UIButton *btn_Icon = [[UIButton alloc] init];
        btn_Icon.userInteractionEnabled = NO;
        btn_Icon.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        self.btn_Icon = btn_Icon;
        
        [self addSubview:btn_Icon];
        
        UIImageView *imgView = [[UIImageView alloc] init];
        imgView.userInteractionEnabled = NO;
        self.imgView = imgView;
        [self addSubview:imgView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat imgW = self.imgView.image.size.width;
    CGFloat imgH = self.imgView.image.size.height;
    self.btn_Icon.frame = CGRectMake(0, 0, self.frame.size.width - imgW * 1.5, self.frame.size.height);
    self.imgView.frame = CGRectMake(self.frame.size.width - imgW,(self.frame.size.height - imgH) / 2, imgW, imgH);
}

- (void)setIconArrow:(NSString *)iconArrow{
    _iconArrow = iconArrow;
    if(self.iconArrow.length > 0){
        self.imgView.image = [UIImage imageNamed:self.iconArrow];
    }
}

-(void)setIcon_right:(NSString *)icon_right{
    _icon_right = icon_right;
    
    [self.btn_Icon setImage:[UIImage imageNamed:icon_right] forState:UIControlStateNormal];
    
}


@end
