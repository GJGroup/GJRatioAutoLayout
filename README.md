# GJRatioAutoLayout
A scaled Autolayout framework by screen ratio.（一个根据屏幕比率进行缩放的AutoLayout库）

## Start开始使用

add Directory 'GJRatioAutoLayout';

添加文件夹'GJRatioAutoLayout'到项目中;

contain this files:

包含如下文件:


- GJRatioAutoLayout
- GJRatioAutoLayoutDefine
- UILabel+GJRatioAutoLayout
- UIView+GJRatioAutoLayout


you can use this code to set base screen:

你可以使用这段代码来设置以哪个屏幕为基准:

```objective-c
[GJRatioAutoLayout startWithScreenSizeType:GJScreenSizeTypeiPhone4or5]; 
```

 default is 320 width screen, if you don't do anything.
 
 如果你什么都不写，则默认以320屏幕宽度为基础。
 
 
 you can use Interface builder or Code to set scale start, ALRatio set On in IB and object's property of UIView aLRatio = YES.
 
 你可以使用界面编辑器或者代码来启动等比缩放，在IB中得ALRatio属性设为On，或者将UIView的对象的属性aLRatio = YES来开启。
 
