//
//  MainViewController.m
//  GJRatioAutoLayout
//
//  Created by wangyutao on 15/12/30.
//  Copyright © 2015年 wangyutao. All rights reserved.
//

#import "MainViewController.h"
#import "UILabel+GJRatioAutoLayout.h"
@interface MainViewController ()
@property (nonatomic, weak) IBOutlet UILabel *label;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *a = @"2";
    
    BOOL b = a.boolValue;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.label.fontRatio = !self.label.fontRatio;
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
