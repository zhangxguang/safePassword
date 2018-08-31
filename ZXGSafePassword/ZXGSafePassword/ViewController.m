//
//  ViewController.m
//  ZXGSafePassword
//
//  Created by zxg on 2018/8/29.
//  Copyright © 2018年 zxg. All rights reserved.
//

#import "ViewController.h"
#import "ZXGUIManger.h"
#import "ZXGAccountInfoTableViewCell.h"
#import "ZXGAccountInfoTableViewCellModel.h"
#import "ZXGAccountInfoTableViewSpreadCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) UITableView *accountInfoTableView;
@property (nonatomic, copy) NSArray *accountInfoTableViewData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.accountInfoTableViewData = @[@"11", @"22", @"33"];
    
    NSMutableArray *mutArray = [NSMutableArray array];
    ZXGAccountInfoTableViewCellModel *tableViewCellModel01 = [[ZXGAccountInfoTableViewCellModel alloc] init];
    tableViewCellModel01.spreadStatus = @0;
    [mutArray addObject:tableViewCellModel01];
    ZXGAccountInfoTableViewCellModel *tableViewCellModel02 = [[ZXGAccountInfoTableViewCellModel alloc] init];
    tableViewCellModel02.spreadStatus = @1;
    [mutArray addObject:tableViewCellModel02];
    ZXGAccountInfoTableViewCellModel *tableViewCellModel03 = [[ZXGAccountInfoTableViewCellModel alloc] init];
    tableViewCellModel03.spreadStatus = @1;
    [mutArray addObject:tableViewCellModel03];
    ZXGAccountInfoTableViewCellModel *tableViewCellModel04 = [[ZXGAccountInfoTableViewCellModel alloc] init];
    tableViewCellModel04.spreadStatus = @1;
    [mutArray addObject:tableViewCellModel04];
    ZXGAccountInfoTableViewCellModel *tableViewCellModel05 = [[ZXGAccountInfoTableViewCellModel alloc] init];
    tableViewCellModel05.spreadStatus = @0;
    [mutArray addObject:tableViewCellModel05];
    
    self.accountInfoTableViewData = [mutArray copy];
    
    
    [self addSubViews];
}

- (void)addSubViews
{
    UITableView *accountInfoTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) style:UITableViewStylePlain];
    accountInfoTableView.separatorInset = UIEdgeInsetsZero;
    accountInfoTableView.showsVerticalScrollIndicator = NO;
    accountInfoTableView.dataSource = self;
    accountInfoTableView.delegate = self;
    [self.view addSubview:accountInfoTableView];
    self.accountInfoTableView = accountInfoTableView;
    [self.accountInfoTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.bottom.equalTo(self.view.mas_bottom);
    }];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.accountInfoTableViewData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZXGAccountInfoTableViewCellModel *tableViewCellModel = self.accountInfoTableViewData[indexPath.row];
    if ([tableViewCellModel.spreadStatus integerValue] == 0) {
        //
        ZXGAccountInfoTableViewCell *cell = [ZXGAccountInfoTableViewCell cellWithTableView:tableView];
        return cell;
    }else{
        ZXGAccountInfoTableViewSpreadCell *spreadCell = [ZXGAccountInfoTableViewSpreadCell cellWithTableView:tableView];
        return spreadCell;
    }
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZXGAccountInfoTableViewCellModel *tableViewCellModel = self.accountInfoTableViewData[indexPath.row];
    if ([tableViewCellModel.spreadStatus integerValue] == 0) {
        return ZXGFixFont(40);
    }else{
        return ZXGFixFont(60);
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZXGAccountInfoTableViewCellModel *tableViewCellModel = self.accountInfoTableViewData[indexPath.row];
    if ([tableViewCellModel.spreadStatus integerValue] == 0) {
        tableViewCellModel.spreadStatus = @1;
    }else{
        tableViewCellModel.spreadStatus = @0;
    }
    [self.accountInfoTableView reloadData];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.01;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.01;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
