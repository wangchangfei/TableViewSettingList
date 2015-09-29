//
//  CFLabelArrowView.m
//  TableViewSettingList
//
//  Created by wangchangfei on 15/9/24.
//  Copyright (c) 2015年 wangchangfei. All rights reserved.
//

#import "CFLabelArrowView.h"
#import "Const.h"

@interface CFLabelArrowView ()

@property(nonatomic, weak) UILabel *lbMsg;
@property(nonatomic, weak) UIImageView *imgView;

@end

@implementation CFLabelArrowView
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        UILabel *lbMsg = [[UILabel alloc] init];
        self.lbMsg = lbMsg;
        [self addSubview:lbMsg];
        
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
    self.lbMsg.frame = CGRectMake(0, 0, self.frame.size.width - imgW * 1.5, self.frame.size.height);
    self.imgView.frame = CGRectMake(self.frame.size.width - imgW, (self.frame.size.height - imgH) / 2, imgW, imgH);
}

- (void)setIconArrow:(NSString *)iconArrow{
    _iconArrow = iconArrow;
    if(self.iconArrow.length > 0){
        self.imgView.image = [UIImage imageNamed:self.iconArrow];
    }
}

- (void)setText:(NSString *)text {
    _text = text;
    self.lbMsg.text = text;
    self.lbMsg.textColor = CFRightLabelTextColor;
    self.lbMsg.font = [UIFont systemFontOfSize:15];
    self.lbMsg.textAlignment = NSTextAlignmentRight;
}


-(void)setRightLabelFont:(UIFont *)rightLabelFont{
    _rightLabelFont = rightLabelFont;
    self.lbMsg.font = rightLabelFont;
}

-(void)setRightLabelFontColor:(UIColor *)rightLabelFontColor{
    _rightLabelFontColor = rightLabelFontColor;
    self.lbMsg.textColor = rightLabelFontColor;
}


@end
