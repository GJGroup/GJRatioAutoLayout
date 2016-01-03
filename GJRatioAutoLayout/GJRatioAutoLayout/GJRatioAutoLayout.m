//
//  GJRatioAutoLayout.m
//  GJRatioAutoLayout
//
//  Created by wangyutao on 16/1/3.
//  Copyright © 2016年 wangyutao. All rights reserved.
//

#import "GJRatioAutoLayout.h"

static GJScreenSizeType screenSizeType = GJScreenSizeTypeiPhone4or5;

@implementation GJRatioAutoLayout

+ (void)startWithScreenSizeType:(GJScreenSizeType)type {
    screenSizeType = type;
}

+ (GJScreenSizeType)getScreenSizeType {
    return screenSizeType;
}

+ (NSInteger)getScreenSizeWidth {
    switch (screenSizeType) {
        case GJScreenSizeTypeiPhone4or5:
            return 320;
            break;
        case GJScreenSizeTypeiPhone6:
            return 375;
        case GJScreenSizeTypeiPhone6Plus:
            return 414;
        default:
            break;
    }
    return 320;
}

@end
