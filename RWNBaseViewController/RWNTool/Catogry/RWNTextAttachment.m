//
//  RWNTextAttachment.m
//  yinxin
//
//  Created by RWN on 16/12/25.
//  Copyright © 2016年 RWN. All rights reserved.
//

#import "RWNTextAttachment.h"
#import "RWNEmotion.h"
@implementation RWNTextAttachment

-(void)setEmotion:(RWNEmotion *)emotion{

    _emotion=emotion;
    self.image=[UIImage imageNamed:emotion.png];

}

@end
