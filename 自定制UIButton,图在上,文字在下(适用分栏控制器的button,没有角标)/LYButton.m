//
//  LYButton.m
//  WeiKu
//
//  Created by ChangLuyang on 15/4/23.
//  Copyright (c) 2015年 chang. All rights reserved.
//

#import "LYButton.h"

@implementation LYButton

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.imageView.contentMode = UIViewContentModeCenter;
    }
    return self;
}

// 高亮状态下什么也不做
- (void)setHighlighted:(BOOL)highlighted {
    
}


// 设置图片的显示范围
- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
}

// 设置文字的显示范围
- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
}

@end
