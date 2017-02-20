//
//  RWNHomeController.m
//  RWNBaseProject
//
//  Created by RWN on 17/2/15.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import "RWNHomeController.h"
#import "RWNScrollController.h"
#import "RWNTagLableController.h"

@interface RWNHomeController ()

@end

@implementation RWNHomeController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.dataArray addObject:@"滚动视图"];
    [self.dataArray addObject:@"标签"];
    [self addUI];
    
    // Do any additional setup after loading the view.
}

-(void)addUI{

    self.RWNTableView=[[UITableView alloc]initWithFrame:CGRectMake(0,kTopBarHeight,kScreenWidth , kScreenHeight-kTopBarHeight)];
    self.RWNTableView.backgroundColor=[UIColor hexStringToColor:@"#eeeeee"];
    self.RWNTableView.delegate=self;
    self.RWNTableView.dataSource=self;
    self.RWNTableView.separatorStyle=UITableViewCellSeparatorStyleSingleLine;
    [self.view addSubview:self.RWNTableView];

    
    [self.RWNTableView setTableFooterView:[UIView new]];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.dataArray.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *identifier=@"cell";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        
    }
    
    if (self.dataArray.count>indexPath.row) {
     cell.textLabel.text=self.dataArray[indexPath.row];
    }
    return cell;

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    if (indexPath.row==0) {
        RWNScrollController *scroll=[[RWNScrollController alloc] init];
        [self.navigationController pushViewController:scroll animated:YES];
    }else if (indexPath.row){
        
        RWNTagLableController *scroll=[[RWNTagLableController alloc] init];
        [self.navigationController pushViewController:scroll animated:YES];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
