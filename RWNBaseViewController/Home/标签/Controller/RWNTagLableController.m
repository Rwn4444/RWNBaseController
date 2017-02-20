//
//  RWNTagLableController.m
//  RWNBaseProject
//
//  Created by RWN on 17/2/17.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import "RWNTagLableController.h"
#import "SKTagView.h"
#import "SKTag.h"
@interface RWNTagLableController ()

@property (strong, nonatomic) SKTagView *tagView;

@end

@implementation RWNTagLableController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupTagView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private
- (void)setupTagView {
    
    self.tagView = ({
        SKTagView *view = [SKTagView new];
        view.backgroundColor = [UIColor whiteColor];
        //标签距离 上下左右的间距
        view.padding = UIEdgeInsetsMake(15, 15, 15, 15);
        //行间距
        view.interitemSpacing = 15;
        //纵间距
        view.lineSpacing = 10;
        __weak SKTagView *weakView = view;
        view.didTapTagAtIndex = ^(NSUInteger index){
            [weakView removeTagAtIndex:index];
        };
        view;
    });
    [self.view addSubview:self.tagView];
    [self.tagView mas_makeConstraints: ^(MASConstraintMaker *make) {
        UIView *superView = self.view;
        make.centerY.equalTo(superView.mas_centerY).with.offset(0);
        make.leading.equalTo(superView.mas_leading).with.offset(0);
        make.trailing.equalTo(superView.mas_trailing);
    }];
    
    //Add Tags
    [@[@"RWN",@"Python", @"Javascript", @"Python", @"Swift", @"Go", @"Objective-C", @"C", @"PHP"] enumerateObjectsUsingBlock: ^(NSString *text, NSUInteger idx, BOOL *stop) {
        SKTag *tag = [SKTag tagWithText: text];
        tag.textColor = [UIColor whiteColor];
        tag.fontSize = 15;
        //tag.font = [UIFont fontWithName:@"Courier" size:15];
        //tag.enable = NO;
        tag.padding = UIEdgeInsetsMake(13.5, 12.5, 13.5, 12.5);
        tag.bgColor = [UIColor magentaColor];
        tag.cornerRadius = 5;
        [self.tagView addTag:tag];
    }];
    
    
    SKTag *bg=[[SKTag alloc] init];
    bg.padding =UIEdgeInsetsMake(13.5, 12.5, 13.5, 12.5);
    bg.bgColor=[UIColor redColor];
    bg.text=@"123";
    bg.textColor=[UIColor clearColor];
    bg.bgImg=[UIImage imageNamed:@"icon_jiahao"];
    bg.cornerRadius=5;
    [self.tagView addTag:bg];
    
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
