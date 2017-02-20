//
//  RWNScrollHeaderView.h
//  RWNBaseProject
//
//  Created by RWN on 17/2/16.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWNScrollHeaderView : UIScrollView

@property(nonatomic,strong)NSArray *titles;

@property(nonatomic,copy)void(^RWNScrollHeaderViewClick)(RWNScrollHeaderView * view,NSInteger index,NSString *text);



@end
