//
//  RWNScrollHeaderLable.h
//  RWNBaseProject
//
//  Created by RWN on 17/2/16.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWNScrollHeaderLable : UILabel

/** 填充色，从左开始*/
@property (nonatomic, strong) UIColor *fillColor;
/** 滑动进度*/
@property (nonatomic, assign) CGFloat progress;

@end
