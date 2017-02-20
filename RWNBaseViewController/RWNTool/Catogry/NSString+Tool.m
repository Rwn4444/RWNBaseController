//
//  NSString+Tool.m
//  guanjia
//
//  Created by hdkj005 on 16/7/12.
//  Copyright © 2016年 handong001. All rights reserved.
//

#import "NSString+Tool.h"

@implementation NSString (Tool)





-(NSString *)RwnTimeExchange{
    
    NSDate *sendDate = [NSDate dateWithTimeIntervalSince1970:[self longLongValue]/1000];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"YYYY-MM-dd";
//    formatter.dateFormat = @"YYYY.MM.dd";
    NSString *sendStr = [formatter stringFromDate:sendDate];
    return sendStr;
}
-(NSString *)RwnTimeExchange1{
    
    NSDate *sendDate = [NSDate dateWithTimeIntervalSince1970:[self longLongValue]/1000];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //    formatter.dateFormat = @"YYYY-MM-dd";
     [formatter setDateStyle:NSDateFormatterMediumStyle];
//    formatter.dateFormat = @"YYYY-MM-dd HH:mm:ss";
    formatter.dateFormat = @"YYYY-MM-dd HH:mm";
    NSString *sendStr = [formatter stringFromDate:sendDate];
    return sendStr;
}

-(NSString *)RwnTimeExchange2{
    
    NSDate *sendDate = [NSDate dateWithTimeIntervalSince1970:[self longLongValue]/1000];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //    formatter.dateFormat = @"YYYY-MM-dd";
    formatter.dateFormat = @"hh:mm";
    NSString *sendStr = [formatter stringFromDate:sendDate];
    return sendStr;
}


+(NSString *)RwnTimeNow{

    NSDate *data=[NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //    formatter.dateFormat = @"YYYY-MM-dd";
    formatter.dateFormat = @"YYYY.MM.dd";
    NSString *sendStr = [formatter stringFromDate:data];
    return sendStr;
}

+ (BOOL)checkForNull:(NSString *)checkString {
    if (checkString == NULL||[checkString isKindOfClass:[NSNull class]]||[checkString isEqualToString:@"null"]||[checkString isEqualToString:@"(null)"]||checkString == nil||[checkString isEqualToString:@"<null>"]||[checkString isEqualToString:@""]||([checkString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length == 0)) {
        return YES;
    }else {
        return NO;
    }
}


/**
 *  计算时间间隔
 *
 *  @param date 秒
 *
 *  @return 时间间隔
 */
+(NSString *)timeIntervalToNow:(long long)date
{
    NSDate *now=[NSDate date];
    NSNumber *time=[NSNumber numberWithLongLong:[now timeIntervalSince1970]*1000];
    long long nowTime=[time longLongValue]/1000;
    //1482904860 19542
    // 时间差
    long long   myTime=nowTime-date;
    //秒
    if (myTime<60) {
        
        return [NSString stringWithFormat:@"刚刚发表"];
    }
    //分钟
    long long mint=myTime/60;
    if (mint<60) {
        
        return [NSString stringWithFormat:@"%ld分钟前",mint];
    }
    //小时
    long long hour=myTime/(60*60);
    if (hour<24) {
        return [NSString stringWithFormat:@"%ld小时前",hour];
    }
    
    //天数
    long long day=myTime/(24*60*60);
    if (day<30) {
        return [NSString stringWithFormat:@"%ld天前",day];
    }
    
    
    //月
    long long month=myTime/(24*60*60*30);
    if (month<12) {
        return [NSString stringWithFormat:@"%ld月前",day];
    }
    
    return  nil;
}



@end
