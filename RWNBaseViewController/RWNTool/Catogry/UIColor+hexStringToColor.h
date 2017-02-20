//
//  UIColor+hexStringToColor.h
//  SmartCity
//
//  Created by handong on 15/9/7.
//  Copyright (c) 2015年 handong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (hexStringToColor)
/**
 * 16进制颜色(html颜色值)字符串转为UIColor
 */
+(UIColor *) hexStringToColor: (NSString *) stringToConvert;

/**
 *  16进制颜色(html颜色值)字符串转为UIColor
 *
 *  @param stringToConvert 16进制颜色
 *  @param alpha           透明度
 *
 *   
 */
+(UIColor *) hexStringToColor: (NSString *) stringToConvert andAlph:(CGFloat)alpha;
@end
