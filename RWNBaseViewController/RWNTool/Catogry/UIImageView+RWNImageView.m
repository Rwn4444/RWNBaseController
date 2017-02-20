//
//  UIImageView+RWNImageView.m
//  gairui
//
//  Created by hdkj005 on 16/8/10.
//  Copyright © 2016年 RWN. All rights reserved.
//

#import "UIImageView+RWNImageView.h"

@implementation UIImageView (RWNImageView)

-(void)RWNAddTarget:(nullable id)target action:(SEL)action{

    self.userInteractionEnabled=YES;
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc] initWithTarget:target action:action];
    [self addGestureRecognizer:tap];

}




@end
