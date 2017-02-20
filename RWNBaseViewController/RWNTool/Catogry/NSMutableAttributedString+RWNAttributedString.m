//
//  NSMutableAttributedString+RWNAttributedString.m
//  yinxin
//
//  Created by hdkj005 on 16/12/24.
//  Copyright © 2016年 RWN. All rights reserved.
//

#import "NSMutableAttributedString+RWNAttributedString.h"

@implementation NSMutableAttributedString (RWNAttributedString)
- (NSMutableAttributedString *)RWNdisable_emoji:(NSMutableAttributedString *)text
{
    NSString *myText = text.string;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^\\u0020-\\u007E\\u00A0-\\u00BE\\u2E80-\\uA4CF\\uF900-\\uFAFF\\uFE30-\\uFE4F\\uFF00-\\uFFEF\\u0080-\\u009F\\u2000-\\u201f\r\n]" options:NSRegularExpressionCaseInsensitive error:nil];
    NSString *modifiedString = [regex stringByReplacingMatchesInString:myText
                                                               options:0
                                                                 range:NSMakeRange(0, [myText length])
                                                          withTemplate:@""];
    NSMutableAttributedString *atr =[[NSMutableAttributedString alloc] initWithString:modifiedString];
    return atr;
}
@end
