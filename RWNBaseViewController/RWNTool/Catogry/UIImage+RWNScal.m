//
//  UIImage+RWNScal.m
//  yinxin
//
//  Created by hdkj005 on 17/1/6.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import "UIImage+RWNScal.h"

@implementation UIImage (RWNScal)


- (UIImage *)RWNImageByScalingAndCroppingForSourceImage:(UIImage *)sourceImage targetSize:(CGSize)targetSize
{
    UIImage *newImage = nil;
    
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat WandH = width/height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    if (CGSizeEqualToSize(imageSize, targetSize) == NO)
    {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        
        if (widthFactor < heightFactor){
            scaleFactor = widthFactor; // scale to fit height
            
//            scaledWidth  = width * scaleFactor;
//            scaledHeight = scaledWidth / WandH;
        
        }
        else{
        
            scaleFactor = heightFactor; // scale to fit width
            
//            scaledHeight = height * scaleFactor;
//            scaledWidth  = scaledHeight * WandH;
        }
        
        
        scaledWidth  = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        
        // center the image
//        if (widthFactor > heightFactor)
//        {
//            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
//        }
//        else
//            if (widthFactor < heightFactor)
//            {
//                thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
//            }
    }
    /*
    UIGraphicsBeginImageContext(targetSize); // this will crop
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width  = scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    
    [sourceImage drawInRect:thumbnailRect];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    if(newImage == nil) NSLog(@"could not scale image");
    
    //pop the context to get back to the default
    UIGraphicsEndImageContext();
    return newImage;
     */
    CGSize mySize =CGSizeMake(scaledWidth, scaledHeight);
    
    UIGraphicsBeginImageContext(mySize);
    [sourceImage drawInRect:CGRectMake(0,0,mySize.width,mySize.height)];
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
    
}

- (CGSize )RWNSizeByScalingAndCroppingForSourceImage:(UIImage *)sourceImage targetSize:(CGSize)targetSize
{
    UIImage *newImage = nil;
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat WandH = width/height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    if (CGSizeEqualToSize(imageSize, targetSize) == NO)
    {
              
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        
//        CGFloat widthFactor = width / targetWidth;
//        CGFloat heightFactor = height / targetHeight;
        
        
        if (widthFactor < heightFactor){
            scaleFactor = widthFactor; // scale to fit height
            
//            scaledWidth  = width * scaleFactor;
//            scaledHeight = scaledWidth / WandH;
            
        }
        else{
            
            scaleFactor = heightFactor; // scale to fit width
            
//            scaledHeight = height * scaleFactor;
//            scaledWidth  = scaledHeight * WandH;
        }
        scaledWidth  = width * scaleFactor;
        scaledHeight = height * scaleFactor;
        return CGSizeMake(scaledWidth, scaledHeight);
    }
   
    return targetSize;
    
}

-(UIImage *)RWNScaltoSize:(CGSize )targetSize {

    
    UIImage *newImage=nil;
    UIGraphicsBeginImageContext(targetSize);
    [self drawInRect:CGRectMake(0,0,targetSize.width,targetSize.height)];
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;

}


//图片压缩到指定大小
- (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize
{
    UIImage *sourceImage = self;
    UIImage *newImage = nil;
    CGSize imageSize = sourceImage.size;
    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;
    CGFloat targetWidth = targetSize.width;
    CGFloat targetHeight = targetSize.height;
    CGFloat scaleFactor = 0.0;
    CGFloat scaledWidth = targetWidth;
    CGFloat scaledHeight = targetHeight;
    CGPoint thumbnailPoint = CGPointMake(0.0,0.0);
    
    if (CGSizeEqualToSize(imageSize, targetSize) == NO)
    {
        CGFloat widthFactor = targetWidth / width;
        CGFloat heightFactor = targetHeight / height;
        
        if (widthFactor > heightFactor)
            scaleFactor = widthFactor; // scale to fit height
        else
            scaleFactor = heightFactor; // scale to fit width
        scaledWidth= width * scaleFactor;
        scaledHeight = height * scaleFactor;
        
        // center the image
        if (widthFactor > heightFactor)
        {
            thumbnailPoint.y = (targetHeight - scaledHeight) * 0.5;
        }
        else if (widthFactor < heightFactor)
        {
            thumbnailPoint.x = (targetWidth - scaledWidth) * 0.5;
        }
    }
    
    UIGraphicsBeginImageContext(targetSize); // this will crop
    
    CGRect thumbnailRect = CGRectZero;
    thumbnailRect.origin = thumbnailPoint;
    thumbnailRect.size.width= scaledWidth;
    thumbnailRect.size.height = scaledHeight;
    
    [sourceImage drawInRect:thumbnailRect];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    if(newImage == nil)
        NSLog(@"could not scale image");
    
    //pop the context to get back to the default
    UIGraphicsEndImageContext();
    return newImage;
}




@end
