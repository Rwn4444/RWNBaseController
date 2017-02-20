//
//  UIControl+RWNTool.m
//  UIButtonMutablieClick
//
//  Created by RWN on 16/8/5.
//  Copyright © 2016年 RWN. All rights reserved.
//

#import "UIControl+RWNTool.h"

static const void * RWNBoolKey = &RWNBoolKey;
static const void * RWNFolatKey = &RWNFolatKey;

@implementation UIControl (RWNTool)

-(BOOL)RWNignoreEvent{
    return  [objc_getAssociatedObject(self, RWNBoolKey) boolValue];
}

-(void)setRWNignoreEvent:(BOOL)RWNignoreEvent{
    
  objc_setAssociatedObject(self, RWNBoolKey, @(RWNignoreEvent), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(CGFloat)RWNTime{
    return [objc_getAssociatedObject(self, RWNFolatKey) floatValue];
}

-(void)setRWNTime:(CGFloat)RWNTime{
    objc_setAssociatedObject(self, RWNFolatKey, @(RWNTime), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+(void)load{

    SEL SysSend =@selector(sendAction:to:forEvent:);
    SEL RWNSend =@selector(RWNSendAction:to:forEvent:);
    Method SysMethod = class_getInstanceMethod([self class], SysSend);
    Method RwnMethod =class_getInstanceMethod([self class], RWNSend);
    method_exchangeImplementations(SysMethod, RwnMethod);
    
}

- (void)RWNSendAction:(SEL)action to:(nullable id)target forEvent:(nullable UIEvent *)event{

    if (self.RWNignoreEvent) {return;}
    if (self.RWNTime>0) {
        
        self.RWNignoreEvent=YES;
        [self performSelector:@selector(setRWNignoreEvent:) withObject:@(NO) afterDelay:self.RWNTime];
    }

    [self RWNSendAction:action to:target forEvent:event];
}

@end
