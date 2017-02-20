//
//  RWNBaseViewController.m
//  RWNBaseViewController
//
//  Created by RWN on 17/2/15.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import "RWNBaseViewController.h"

@interface RWNBaseViewController ()

@end

@implementation RWNBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor hexStringToColor:@"#eeeeee"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.dataArray.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *identifier=@"cell";
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
      cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;

}


-(NSMutableArray *)dataArray{
    
    if (!_dataArray) {
        _dataArray=[NSMutableArray array];
    }
    return _dataArray;
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
