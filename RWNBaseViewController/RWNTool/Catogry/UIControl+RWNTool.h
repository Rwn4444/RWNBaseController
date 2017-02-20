//
//  UIControl+RWNTool.h
//  UIButtonMutablieClick
//
//  Created by RWN on 16/8/5.
//  Copyright © 2016年 RWN. All rights reserved.
//
/**
 *  让btn不能连续点击
 *
 *  @param RWNTool
 *
 *  @return
 */
#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface UIControl (RWNTool)
/**
 *  是否忽略点击事件
 */
@property(nonatomic,assign)BOOL RWNignoreEvent;
/**
 *  接受点击的时间间隔
 */
@property(nonatomic,assign)CGFloat RWNTime;

@end
