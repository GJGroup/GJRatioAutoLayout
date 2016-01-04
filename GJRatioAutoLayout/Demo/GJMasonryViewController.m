//
//  GJMasonryViewController.m
//  GJRatioAutoLayout
//
//  Created by wangyutao on 16/1/3.
//  Copyright © 2016年 wangyutao. All rights reserved.
//

#import "GJMasonryViewController.h"
#import "GJRatioAutoLayout.h"
#import <Masonry.h>
#import "UIView+GJRatioAutoLayout.h"
#import "UILabel+GJRatioAutoLayout.h"

@interface GJMasonryViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *sbImageView;

@end

@implementation GJMasonryViewController

- (void)viewDidLoad {
    
    UILabel *codeLabel = [UILabel new];
    codeLabel.aLRatio = YES;
    codeLabel.text = @"This view is created by masonry by code:";
    codeLabel.font = [UIFont systemFontOfSize:14];
    codeLabel.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:codeLabel];
    
    UIImageView *codeImageView = [[UIImageView alloc]init];
    codeImageView.image = [UIImage imageNamed:@"icon"];
    codeImageView.backgroundColor = [UIColor lightGrayColor];
    codeImageView.aLRatio = YES;
    [self.view addSubview:codeImageView];
    
    [codeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(10);
        make.top.equalTo(self.sbImageView.mas_bottom).offset(50);
    }];
    
    [codeImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(10);
        make.top.equalTo(codeLabel.mas_bottom).offset(10);
    }];

}

@end
