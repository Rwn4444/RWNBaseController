//
//  UIImage+RWNScal.h
//  yinxin
//
//  Created by hdkj005 on 17/1/6.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (RWNScal)

- (UIImage *)RWNImageByScalingAndCroppingForSourceImage:(UIImage *)sourceImage targetSize:(CGSize)targetSize;

- (CGSize )RWNSizeByScalingAndCroppingForSourceImage:(UIImage *)sourceImage targetSize:(CGSize)targetSize;


-(UIImage *)RWNScaltoSize:(CGSize )targetSize;
- (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
@end
