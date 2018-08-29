//
//  ZXGCreatGradualChangeColorImage.h
//  ZXGSafePassword
//
//  Created by zxg on 2018/8/29.
//  Copyright © 2018年 zxg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZXGMacroDefinitionHeader.h"
#import <UIKit/UIKit.h>

@interface ZXGCreatGradualChangeColorImage : NSObject

/**
 生成颜色渐变图片
 
 @param imageSize 需要的图片大小
 @param startColor 渐变的起始颜色
 @param endColor 渐变的最终颜色
 @return 生成好的图片
 */
+ (UIImage *)creatGradualChangeColorImage:(CGSize)imageSize startColor:(UIColor *)startColor endColor:(UIColor *)endColor;

@end
