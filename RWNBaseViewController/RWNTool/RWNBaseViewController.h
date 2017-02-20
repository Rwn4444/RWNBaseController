//
//  RWNBaseViewController.h
//  RWNBaseViewController
//
//  Created by RWN on 17/2/15.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RWNBaseViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)NSMutableArray *dataArray;
///tableView
@property(nonatomic,strong) UITableView *RWNTableView;


// 添加一个无数据时显示的数据
//- (void)addNoDataViewWithDataArray:(NSArray *)array;


@end
