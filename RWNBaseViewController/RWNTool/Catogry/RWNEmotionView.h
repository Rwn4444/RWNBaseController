//
//  RWNEmotionView.h
//  yinxin
//
//  Created by RWN on 16/12/25.
//  Copyright © 2016年 RWN. All rights reserved.
//

#import "RWNTextView.h"
@class RWNEmotion;
@interface RWNEmotionView : RWNTextView
/**
 *  拼接表情到最后面
 */
- (void)appendEmotion:(RWNEmotion *)emotion;

/**
 *  具体的文字内容
 */
- (NSString *)realText;


@end
