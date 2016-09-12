//
//  leftTitle.m
//  buttondemo
//
//  Created by 腾实信 on 16/9/12.
//  Copyright © 2016年 ida. All rights reserved.
//

#import "leftTitle.h"

@implementation leftTitle

//默认左图 右文本

//左文  右图
-(void)layoutSubviews{
    [super layoutSubviews];
    CGRect imageRect = self.imageView.frame;
    imageRect.size = CGSizeMake(20, 20);
    imageRect.origin.x = (self.frame.size.width-20);
    imageRect.origin.y = (self.frame.size.height-20)/2.0f;
    CGRect titleRect = self.titleLabel.frame;
    titleRect.origin.x = (self.frame.size.width-imageRect.size.width-titleRect.size.width);
    titleRect.origin.y = (self.frame.size.height-titleRect.size.height)/2.0f;
    self.imageView.frame  = imageRect;
    self.titleLabel.frame = titleRect;

}

@end
