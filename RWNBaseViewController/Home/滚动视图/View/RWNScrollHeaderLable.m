//
//  RWNScrollHeaderLable.m
//  RWNBaseProject
//
//  Created by RWN on 17/2/16.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import "RWNScrollHeaderLable.h"

@implementation RWNScrollHeaderLable

// 滑动进度

- (void)setProgress:(CGFloat)progress {
    _progress = progress;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    [_fillColor set];
    
    CGRect newRect = rect;
    newRect.size.width = rect.size.width * self.progress;
    UIRectFillUsingBlendMode(newRect, kCGBlendModeSourceIn);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
