//
//  ZXGUIManger.m
//  ZXGSafePassword
//
//  Created by zxg on 2018/8/29.
//  Copyright © 2018年 zxg. All rights reserved.
//

#import "ZXGUIManger.h"

@implementation ZXGUIManger

@end

#pragma mark - UIColor(WebColorString)
@implementation UIColor(WebColorString)
+ (instancetype)colorWithWebColorString:(NSString*)strWebColorInHex
{
    if(!strWebColorInHex||strWebColorInHex.length<=6)return nil;
    unsigned red,green,blue;
    NSRange range;
    range.length = 2;
    range.location = 1;
    [[NSScanner scannerWithString:[strWebColorInHex substringWithRange:range]] scanHexInt:&red];
    range.location = 3;
    [[NSScanner scannerWithString:[strWebColorInHex substringWithRange:range]] scanHexInt:&green];
    range.location = 5;
    [[NSScanner scannerWithString:[strWebColorInHex substringWithRange:range]] scanHexInt:&blue];
    return [UIColor colorWithRed:red/255.0f green:green/255.0f blue:blue/255.0f alpha:1];
}
@end
