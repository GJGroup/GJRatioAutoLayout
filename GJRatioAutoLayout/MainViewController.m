//
//  MainViewController.m
//  GJRatioAutoLayout
//
//  Created by wangyutao on 15/12/30.
//  Copyright © 2015年 wangyutao. All rights reserved.
//

#import "MainViewController.h"
#import "UILabel+GJRatioAutoLayout.h"
#import "UIView+GJRatioAutoLayout.h"
#import "GJRatioAutoLaoutDefine.h"
#import <Masonry.h>

@interface MainViewController ()
@property (nonatomic, weak) IBOutlet UILabel *label;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *codeImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10 * GJ_Scale, 123 *GJ_Scale, 129 *GJ_Scale, 103 *GJ_Scale)];
    codeImageView.image = [UIImage imageNamed:@"icon"];
    codeImageView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:codeImageView];
    [codeImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.view).insets(UIEdgeInsetsMake(129, 10, 0, 0));
    }];
    codeImageView.aLRatio = YES;
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
