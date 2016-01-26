//
//  UILabel+GJRatioAutoLayout.m
//  GJRatioAutoLayout
//
//  Created by wangyutao on 15/12/30.
//  Copyright © 2015年 wangyutao. All rights reserved.
//

#import "UILabel+GJRatioAutoLayout.h"
#import "UIView+GJRatioAutoLayout.h"
#import "GJRatioAutoLayoutDefine.h"
#import <objc/runtime.h>

@interface UILabel (_GJRatioAutoLayoutStroge)
@property (nonatomic, assign) CGFloat gj_originalFontSize;
@end

@implementation UILabel (_GJRatioAutoLayoutStroge)

- (void)setGj_originalFontSize:(CGFloat)originalFontSize {
    objc_setAssociatedObject(self, @selector(gj_originalFontSize), @(originalFontSize), OBJC_ASSOCIATION_RETAIN);
}

- (CGFloat)gj_originalFontSize {
#if CGFLOAT_IS_DOUBLE
    return [objc_getAssociatedObject(self, _cmd) doubleValue];
#else
    return [objc_getAssociatedObject(self, _cmd) floatValue];
#endif
}

@end

@implementation UILabel (GJRatioAutoLayout)

+ (void)load {
    GJExchangeImplementations(self, @selector(setPreferredMaxLayoutWidth:), @selector(gj_setPreferredMaxLayoutWidth:));
}

#pragma mark- aLRatio rewrite
- (void)setALRatio:(BOOL)aLRatio {
    if (self.gj_aLRatio == aLRatio) return;
    [super setALRatio:aLRatio];
    //reset only when changed
    [self resetFont];
    [self resetPreferredMaxLayoutWidth];
}


#pragma mark - preferredMaxLayoutWidth
//scaled when user set by code.
- (void)gj_setPreferredMaxLayoutWidth:(CGFloat)width {
    CGFloat maxWidth = width;
    if (self.gj_aLRatio && maxWidth > 0) {
        maxWidth *= GJ_Scale;
    }
    [self gj_setPreferredMaxLayoutWidth:maxWidth];
}

//- (void)gj_setFont:(UIFont *)font {
//    if (self.gj_aLRatio || self.gj_fontRatio) {
//        self.gj_originalFontSize = self.font.pointSize;
//        CGFloat size = floorl(self.font.pointSize * GJ_Scale);
//        NSString *name = self.font.fontName;
//       [self gj_setFont:[UIFont fontWithName:name size:size]];
//    }
//}

#pragma mark- private method
- (void)resetFont {
    if (self.gj_aLRatio) {
        self.gj_originalFontSize = self.font.pointSize;
        CGFloat size = floorl(self.font.pointSize * GJ_Scale);
        NSString *name = self.font.fontName;
        self.font = [UIFont fontWithName:name size:size];
    }
    else {
        self.font = [UIFont fontWithName:self.font.fontName size:self.gj_originalFontSize];
    }
}

- (void)resetPreferredMaxLayoutWidth {
    if (self.gj_aLRatio && self.preferredMaxLayoutWidth > 0) {
        [self gj_setPreferredMaxLayoutWidth:self.preferredMaxLayoutWidth * GJ_Scale];
    }
}

@end
