//
//  CGButton.m
//  06-常用结构体
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "CGButton.h"

@implementation CGButton
-(void)show
{
    NSLog(@"我显示出来了。我的坐标是%d,%f 我的大小是%lf.%lf",_point.x,_point.y,_size.width,_size.height);
}
-(void)hide
{
    NSLog(@"按钮隐藏了");
}
@end
