//
//  UIView+GJRatioAutoLayout.h
//  GJRatioAutoLayout
//
//  Created by wangyutao on 15/12/30.
//  Copyright © 2015年 wangyutao. All rights reserved.
//

#import <UIKit/UIKit.h>

void GJExchangeImplementations(Class class, SEL newSelector, SEL oldSelector);

@interface UIView (GJRatioAutoLayout)

@property (nonatomic, assign, getter=gj_aLRatio) IBInspectable BOOL aLRatio;

@end
