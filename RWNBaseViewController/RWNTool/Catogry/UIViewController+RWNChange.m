//
//  UIViewController+RWNChange.m
//  gairui
//
//  Created by hdkj005 on 16/7/29.
//  Copyright © 2016年 RWN. All rights reserved.
//

#import "UIViewController+RWNChange.h"

@implementation UIViewController (RWNChange)

+(void)load{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      
        //获得系统的两个方法
        SEL systemWill = @selector(viewWillAppear:);
        SEL systemDis  = @selector(viewWillDisappear:);
        Method  systemWillMethod = class_getInstanceMethod([self class], systemWill);
        Method  systemDisMethod =class_getInstanceMethod([self class], systemDis);
        //获得自己的两个方法
        SEL rwnWill    =@selector(RWNViewWillAppear:);
        SEL rwnDis     =@selector(RWNViewWillDisappear:);
        Method  rwnWillMethod = class_getInstanceMethod([self class], rwnWill);
        Method  rwnDisMethod = class_getInstanceMethod([self class], rwnDis);
      //首先动态添加方法，实现是被交换的方法，返回值表示添加成功还是失败
       BOOL success = class_addMethod(self, systemWill, method_getImplementation(rwnWillMethod), method_getTypeEncoding(rwnWillMethod));
        if (success) {
            //如果成功，说明类中不存在这个方法的实现
            //将被交换方法的实现替换到这个并不存在的实现
            class_replaceMethod(self, rwnWill, method_getImplementation(systemWillMethod), method_getTypeEncoding(systemWillMethod));
        }else{
           //否则，交换两个方法的实现
            method_exchangeImplementations(systemWillMethod, rwnWillMethod);
        }
        
        BOOL success1 = class_addMethod(self, systemDis, method_getImplementation(rwnDisMethod), method_getTypeEncoding(rwnDisMethod));
        if (success1) {
            //如果成功，说明类中不存在这个方法的实现
            //将被交换方法的实现替换到这个并不存在的实现
            class_replaceMethod(self, rwnDis, method_getImplementation(systemDisMethod), method_getTypeEncoding(systemDisMethod));
        }else{
            //否则，交换两个方法的实现
            method_exchangeImplementations(systemDisMethod, rwnDisMethod);
        }
        
        
    });
    
    

}

//自己的方法
-(void)RWNViewWillAppear:(BOOL)animated{
    
    //这时候调用自己，看起来像是死循环
    //但是其实自己的实现已经被替换了
    [self RWNViewWillAppear:animated];
//    NSString *name=[NSString stringWithUTF8String:object_getClassName(self)];
//    [MobClick beginLogPageView:name];
    self.navigationItem.title=NSStringFromClass([self class]);
   
}
-(void)RWNViewWillDisappear:(BOOL)animated{
    
    //这时候调用自己，看起来像是死循环
    //但是其实自己的实现已经被替换了
    [self RWNViewWillDisappear:animated];
    
    
//    NSString *name=[NSString stringWithUTF8String:object_getClassName(self)];
//    [MobClick endLogPageView:name];
    
    
}


@end
