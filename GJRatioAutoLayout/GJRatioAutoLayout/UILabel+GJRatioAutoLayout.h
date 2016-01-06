//
//  UILabel+GJRatioAutoLayout.h
//  GJRatioAutoLayout
//
//  Created by wangyutao on 15/12/30.
//  Copyright © 2015年 wangyutao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (GJRatioAutoLayout)

/**
 *  only scale font size, and widtd & height if you don't set width and height constraint.
 */
@property (nonatomic, assign, getter=gj_fontRatio) IBInspectable BOOL fontRatio;

@end
