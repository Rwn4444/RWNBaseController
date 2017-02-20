//
//  NSString+Tool.h
//  guanjia
//
//  Created by hdkj005 on 16/7/12.
//  Copyright © 2016年 handong001. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Tool)

-(NSString *)RwnTimeExchange;
-(NSString *)RwnTimeExchange1;
-(NSString *)RwnTimeExchange2;
+(NSString *)RwnTimeNow;
+(NSString *)timeIntervalToNow:(long )date;
+ (BOOL)checkForNull:(NSString *)checkString;

@end
