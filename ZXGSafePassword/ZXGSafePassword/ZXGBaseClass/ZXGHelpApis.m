//
//  ZXGHelpApis.m
//  ZXGSafePassword
//
//  Created by zxg on 2018/8/29.
//  Copyright © 2018年 zxg. All rights reserved.
//

#import "ZXGHelpApis.h"

@implementation ZXGHelpApis

@end

/**
 *  用颜色生成纯色图片
 *
 *  @param color 颜色
 *
 *  @return 生产的图片，size(10, 10)
 */
UIImage* ButtonImageFromColor(UIColor *color)
{
    CGRect rect = CGRectMake(0, 0, 10, 10);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext(); return img;
}
