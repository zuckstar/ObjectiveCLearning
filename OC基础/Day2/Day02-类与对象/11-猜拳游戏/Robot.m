//
//  Robot.m
//  11-猜拳游戏
//
//  Created by a on 2019/6/27.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Robot.h"
#import <stdlib.h>

@implementation Robot
/*
 机器人出拳方法。
 */
-(void)showFist
{
    //1. 随机出拳
    int robotSelect = arc4random_uniform(3)+1;
    //2. 显示随机出的拳头
    NSString *type = [self fistTypeWithNumber:robotSelect];
    NSLog(@"机器人[%@]出的拳头是:%@",_name,type);
    //3. 将出的拳头保存在当前的对象的属性中
    _selectedType = robotSelect;
}
-(NSString *)fistTypeWithNumber:(int)number
{
    switch(number){
        case 1:
            return @"剪刀";
        case 2:
            return @"石头";
        default:
            return @"布";
    }
}
@end
