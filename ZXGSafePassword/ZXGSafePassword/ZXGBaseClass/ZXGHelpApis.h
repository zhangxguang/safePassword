//
//  ZXGHelpApis.h
//  ZXGSafePassword
//
//  Created by zxg on 2018/8/29.
//  Copyright © 2018年 zxg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ZXGMacroDefinitionHeader.h"

@interface ZXGHelpApis : NSObject

@end


/**
 *  用颜色生成纯色图片
 *
 *  @param color 颜色
 *
 *  @return 生产的图片，size(10, 10)
 */
UIImage * __nonnull ButtonImageFromColor(UIColor * __nonnull color);
