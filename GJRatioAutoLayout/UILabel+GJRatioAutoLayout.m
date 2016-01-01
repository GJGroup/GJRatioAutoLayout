//
//  UILabel+GJRatioAutoLayout.m
//  GJRatioAutoLayout
//
//  Created by wangyutao on 15/12/30.
//  Copyright © 2015年 wangyutao. All rights reserved.
//

#import "UILabel+GJRatioAutoLayout.h"
#import "GJRatioAutoLaoutDefine.h"
#import <objc/runtime.h>

@interface UILabel (_GJRatioAutoLayoutStroge)
@property (nonatomic, assign) CGFloat gj_originalFontSize;
@end

@implementation UILabel (_GJRatioAutoLayoutStroge)

- (void)setGj_originalFontSize:(CGFloat)originalFontSize
{
    objc_setAssociatedObject(self, @selector(gj_originalFontSize), @(originalFontSize), OBJC_ASSOCIATION_RETAIN);
}

- (CGFloat)gj_originalFontSize
{
#if CGFLOAT_IS_DOUBLE
    return [objc_getAssociatedObject(self, _cmd) doubleValue];
#else
    return [objc_getAssociatedObject(self, _cmd) floatValue];
#endif
}

@end

@implementation UILabel (GJRatioAutoLayout)

- (BOOL)gj_fontRatio
{
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}

- (void)setGj_fontRatio:(BOOL)fontRatio
{
    objc_setAssociatedObject(self, @selector(gj_fontRatio), @(fontRatio), OBJC_ASSOCIATION_RETAIN);
    
    if (fontRatio) {
        self.gj_originalFontSize = self.font.pointSize;
        CGFloat size = self.font.pointSize * GJ_Scale;
        NSString *name = self.font.fontName;
        self.font = [UIFont fontWithName:name size:size];
    }
    else {
        self.font = [UIFont fontWithName:self.font.fontName size:self.gj_originalFontSize];
    }
}

- (void)setFontRatio:(BOOL)fontRatio
{
    if (self.gj_fontRatio == fontRatio) return;

    self.gj_fontRatio = fontRatio;
}

@end
