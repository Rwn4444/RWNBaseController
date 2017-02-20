//
//  RWNScrollController.m
//  RWNBaseProject
//
//  Created by RWN on 17/2/16.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import "RWNScrollController.h"
#import "RWNScrollHeaderView.h"

@interface RWNScrollController ()

@property(nonatomic,strong)RWNScrollHeaderView *RWNheaderView;

@end

@implementation RWNScrollController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.RWNheaderView.titles=@[@"RWN",@"滚动试图",@"看几个字",@"棒棒的的",@"胖胖的的",@"萌萌的的",@"哈哈的的",@"傻傻的的",@"白白的的"];
    self.RWNheaderView.RWNScrollHeaderViewClick=^(RWNScrollHeaderView * view,NSInteger index,NSString *text){
    
    };
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(RWNScrollHeaderView *)RWNheaderView{

    if (!_RWNheaderView) {
        
        _RWNheaderView=[RWNScrollHeaderView new];
        _RWNheaderView.backgroundColor=[UIColor whiteColor];
        [self.view addSubview:_RWNheaderView];
        
        [_RWNheaderView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(0);
            make.top.mas_equalTo(64);
            make.height.mas_equalTo(40);
        }];
    }
    return _RWNheaderView;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
