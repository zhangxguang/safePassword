//
//  ZXGAccountInfoTableViewSpreadCell.m
//  ZXGSafePassword
//
//  Created by zxg on 2018/8/31.
//  Copyright © 2018年 zxg. All rights reserved.
//

#import "ZXGAccountInfoTableViewSpreadCell.h"

@implementation ZXGAccountInfoTableViewSpreadCell

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"ZXGAccountInfoTableViewSpreadCell";
    ZXGAccountInfoTableViewSpreadCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[ZXGAccountInfoTableViewSpreadCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        UILabel *tipsLabel = [[UILabel alloc] init];
        [self.contentView addSubview:tipsLabel];
        [tipsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView.mas_top);
            make.left.equalTo(self.contentView.mas_left);
            make.right.equalTo(self.contentView.mas_right);
            make.bottom.equalTo(self.contentView.mas_bottom);
        }];
        tipsLabel.text = @"43534543534534543543";
        
    }
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
