# GJRatioAutoLayout
A scaled Autolayout framework by screen ratio.

一个根据屏幕比率进行缩放的AutoLayout库，iOS程序员经常会被UI虐待，要么是UI太水，不会根据iOS适配规则进行UI设计，要么是真的需要一些地方采用UI根据屏幕进行等比缩放，但程序员们大都中了Autolayout的毒，很难打破重新使用frame的心理障碍，痛不欲生；根据这种情况，我们开发了在Autolayout下，只需一个开关，即可让当前view进行等比缩放，不必放弃Autolayout，又完成了UI缩放任务。

## Start

add Directory 'GJRatioAutoLayout', contain this files:

- GJRatioAutoLayout
- GJRatioAutoLayoutDefine
- UILabel+GJRatioAutoLayout
- UIView+GJRatioAutoLayout


you can use this code to set base screen:
```objective-c
[GJRatioAutoLayout startWithScreenSizeType:GJScreenSizeTypeiPhone4or5]; 
```
 default is 320 width screen, if you don't do anything.

 you can use Interface builder or Code to set scale start, ALRatio set On in IB and object's property of UIView aLRatio = YES.
```objective-c
- (void)createSomeViews {
    self.oneView.aLRatio = YES;
}
```

we support Masonry and PureLayout:
```objective-c
- (void)createSomeViews {
    UIImageView *codeImageView = [[UIImageView alloc]init];
    codeImageView.image = [UIImage imageNamed:@"icon"];
    codeImageView.backgroundColor = [UIColor lightGrayColor];
    codeImageView.aLRatio = YES;
    [self.view addSubview:codeImageView];
    [codeImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(50);
        make.top.equalTo(self.sbImageView.mas_bottom).offset(50);
    }];
}
```

 
## 开始使用

添加文件夹'GJRatioAutoLayout'到项目中，包含如下文件:

- GJRatioAutoLayout
- GJRatioAutoLayoutDefine
- UILabel+GJRatioAutoLayout
- UIView+GJRatioAutoLayout

你可以使用这段代码来设置以哪个屏幕为基准:
```objective-c
[GJRatioAutoLayout startWithScreenSizeType:GJScreenSizeTypeiPhone4or5]; 
```
如果你什么都不写，则默认以320屏幕宽度为基础。

你可以使用界面编辑器或者代码来启动等比缩放，在IB中得ALRatio属性设为On，或者将UIView的对象的属性aLRatio = YES来开启。
```objective-c
- (void)createSomeViews {
 self.oneView.aLRatio = YES;
}
```

我们也支持Masonry和PureLayout等第三方库:
```objective-c
- (void)createSomeViews {
    UIImageView *codeImageView = [[UIImageView alloc]init];
    codeImageView.image = [UIImage imageNamed:@"icon"];
    codeImageView.backgroundColor = [UIColor lightGrayColor];
    codeImageView.aLRatio = YES;
    [self.view addSubview:codeImageView];
    [codeImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(50);
        make.top.equalTo(self.sbImageView.mas_bottom).offset(50);
    }];
}
```
