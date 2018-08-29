//
//  ZXGUIManger.h
//  ZXGSafePassword
//
//  Created by zxg on 2018/8/29.
//  Copyright © 2018年 zxg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZXGMacroDefinitionHeader.h"
#import "ZXGHelpApis.h"
#import <UIKit/UIKit.h>

@interface ZXGUIManger : NSObject

@end

#pragma mark - ZXGUILabel
@interface ZXGUILabel : UILabel

@end

#pragma mark - ZXGUIButton
@interface ZXGUIButton : UIButton

@end

#pragma mark - ZXGUITextField
@interface ZXGUITextField : UITextField

@end





#pragma mark - UIColor(WebColorString)
@interface UIColor(WebColorString)
+(__nullable instancetype)colorWithWebColorString:(NSString* __nonnull)strWebColorInHex;
@end


