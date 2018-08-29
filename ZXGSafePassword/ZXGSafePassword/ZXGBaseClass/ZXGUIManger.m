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

#pragma mark - ZXGUILabel
@implementation ZXGUILabel
- (void)commonInit
{
    
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

@end

#pragma mark - ZXGUIButton
@implementation ZXGUIButton
- (void)commonInit
{
    //字体大小
    [self.titleLabel setFont:[UIFont systemFontOfSize:ZXGFixFont(18)]];
    
    //字体颜色
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateDisabled];
    
    //各种状态下，背景颜色
    [self setBackgroundImage:ButtonImageFromColor([UIColor whiteColor]) forState:UIControlStateNormal];
    [self setBackgroundImage:ButtonImageFromColor([UIColor colorWithRed:204/255.0 green:204/255.0 blue:204/255.0 alpha:0.5]) forState:UIControlStateDisabled];
    
    //倒角
//    self.layer.cornerRadius = ZXGFixFont(38.5/2);
//    self.layer.borderWidth = JPFixFont(1.0);
//    self.layer.borderColor = [UIColor whiteColor].CGColor;
//    self.layer.masksToBounds = YES;
}

//- (void)setEnabled:(BOOL)enabled
//{
//    [super setEnabled:enabled];
//
//    if (enabled == YES) {
//        self.layer.borderColor = JPMainColor.CGColor;
//    }else {
//        self.layer.borderColor = [UIColor clearColor].CGColor;
//    }
//}

// 重写去掉高亮状态
- (void)setHighlighted:(BOOL)highlighted
{
    
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

@end

#pragma mark - ZXGUITextField
@implementation ZXGUITextField

- (void)commonInit
{
    //背景色
    self.backgroundColor = [UIColor whiteColor];
    //字体颜色
    self.textColor = [UIColor blackColor];
    //placeholder颜色
    [self setValue:[UIColor blackColor] forKeyPath:@"_placeholderLabel.textColor"];
    //字体大小
    self.font = [UIFont systemFontOfSize:ZXGFixFont(16)];
    //清除按钮
    self.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ZXGFixFont(20), ZXGFixFont(38.5))];
    self.leftView = paddingView;
    self.leftViewMode = UITextFieldViewModeAlways;
    
    //倒角
    self.layer.cornerRadius = ZXGFixFont(38.5/2);
    self.layer.masksToBounds = YES;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}
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
