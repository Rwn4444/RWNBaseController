//
//  RWNBtn.m
//  gairui
//
//  Created by hdkj005 on 16/8/9.
//  Copyright © 2016年 RWN. All rights reserved.
//

#import "RWNBtn.h"
#import "UIView+MJExtension.h"


@implementation RWNBtn

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (self.currentImage)
    {
        if (self.titleLabel.mj_x > self.imageView.mj_x)
        {
            self.titleLabel.mj_x = self.imageView.mj_x;
            self.imageView.mj_x = CGRectGetMaxX(self.titleLabel.frame);
        }
    }
    
    
}

@end
