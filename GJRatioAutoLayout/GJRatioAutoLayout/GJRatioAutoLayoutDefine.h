//
//  GJRatioAutoLaoutDefine.h
//  GJRatioAutoLayout
//
//  Created by wangyutao on 15/12/30.
//  Copyright © 2015年 wangyutao. All rights reserved.
//

#import "GJRatioAutoLayout.h"

#define GJ_MainScreen                   [UIScreen mainScreen]
#define GJ_ScreenW                      (GJ_MainScreen.bounds.size.width)
#define GJ_BaseW                        [GJRatioAutoLayout getScreenSizeWidth]
#define GJ_Scale                        (GJ_ScreenW/GJ_BaseW)
