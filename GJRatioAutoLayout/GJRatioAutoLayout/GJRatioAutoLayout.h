//
//  GJRatioAutoLayout.h
//  GJRatioAutoLayout
//
//  Created by wangyutao on 16/1/3.
//  Copyright © 2016年 wangyutao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GJRatioAutoLayoutDefine.h"
#import "UIView+GJRatioAutoLayout.h"
#import "UILabel+GJRatioAutoLayout.h"

typedef NS_ENUM(NSUInteger, GJScreenSizeType) {
    GJScreenSizeTypeiPhone4or5,
    GJScreenSizeTypeiPhone6,
    GJScreenSizeTypeiPhone6Plus,
};

@interface GJRatioAutoLayout : NSObject

+ (void)startWithScreenSizeType:(GJScreenSizeType)type;

+ (GJScreenSizeType)getScreenSizeType;

+ (NSInteger)getScreenSizeWidth;

@end
