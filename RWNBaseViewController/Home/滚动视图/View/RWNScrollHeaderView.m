//
//  RWNScrollHeaderView.m
//  RWNBaseProject
//
//  Created by RWN on 17/2/16.
//  Copyright © 2017年 RWN. All rights reserved.
//

#import "RWNScrollHeaderView.h"
#import "RWNScrollHeaderLable.h"
@interface RWNScrollHeaderView ()

@property(nonatomic,strong)NSMutableArray *LableSubViews;

@property(nonatomic,assign)CGFloat itemW;

@end

@implementation RWNScrollHeaderView

-(instancetype)init{

    if (self=[super init]) {
        
        self.showsHorizontalScrollIndicator=NO;
        self.userInteractionEnabled=YES;
    }
    return self;
}

-(void)setTitles:(NSArray *)titles{

    if (titles.count==0) {
        return;
    }
    
    _titles=titles;
    
    for (int i=0; i<titles.count; i++) {
        
        RWNScrollHeaderLable *lable=[RWNScrollHeaderLable new];
        NSString * title=titles[i];
        lable.text=title;
        lable.textColor=[UIColor blackColor];
        lable.font=[UIFont systemFontOfSize:15];
        lable.textAlignment=NSTextAlignmentCenter;
        //tag 值最好不要从零开始  我开始写的0 没有找到这个lable而是查到了这个控件本身
        lable.tag=100+i;
        //UILabel 得开交互才能加手势
        lable.userInteractionEnabled=YES;
        [self addSubview:lable];
        [self.LableSubViews addObject:lable];
       
        UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(topClick:)];
        [lable addGestureRecognizer:tap];
    }
}

-(void)topClick:(UITapGestureRecognizer *)tap{
    
    RWNScrollHeaderLable *lable=(RWNScrollHeaderLable *)tap.view;
    
    if (!lable) return;
    
    for (RWNScrollHeaderLable *headerLable in self.LableSubViews) {
        if ([headerLable isEqual:lable]) {
            
            headerLable.textColor=[UIColor purpleColor];
            
        }else{
            
            headerLable.textColor=[UIColor blackColor];
            
        }
    }
    
    /***************设置自动滚动**********************/
    // 减去单个的宽度
    CGFloat flag=kScreenWidth-self.itemW;
    //最后一个
    if (lable.tag-100==(self.titles.count-1)) {
        flag=kScreenWidth;
    }
    
    if (lable.mj_origin.x+lable.mj_w>flag) {
        CGFloat magin=lable.mj_origin.x+lable.mj_w-flag;
        [self setContentOffset:CGPointMake(magin, 0)];
    }else{
        [self setContentOffset:CGPointMake(0, 0)];
    }
    
    
    /***************点击事件**********************/
    if (self.RWNScrollHeaderViewClick) {
        self.RWNScrollHeaderViewClick(self,lable.tag-100,lable.text);
    }
    
    
}


-(void)layoutSubviews{

    [super layoutSubviews];
    self.itemW=0;
    NSInteger count=self.titles.count;
    if (count<=4) {
        self.itemW=kScreenWidth/count;
    }else{
        self.itemW=80;
    }
    
    CGFloat  itemH=self.mj_h;
    
    for (int i=0; i<self.titles.count; i++) {
        
        RWNScrollHeaderLable *lable=(RWNScrollHeaderLable *)[self viewWithTag:i+100];
        
        [lable mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.mas_equalTo(i*self.itemW);
            make.top.mas_equalTo(0);
            make.width.mas_equalTo(self.itemW);
            make.height.mas_equalTo(itemH);
            
        }];
        
    }
    
    self.contentSize=CGSizeMake(self.titles.count*self.itemW, itemH);
 
}

-(NSMutableArray *)LableSubViews{

    if (!_LableSubViews) {
        _LableSubViews=[NSMutableArray array];
    }
    return _LableSubViews;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
