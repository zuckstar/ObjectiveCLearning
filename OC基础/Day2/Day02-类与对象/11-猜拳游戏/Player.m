//
//  Player.m
//  11-猜拳游戏
//
//  Created by a on 2019/6/27.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Player.h"
/*
 玩家类：代表一个玩家
 */
@implementation Player
-(void)showFist
{
/*
1. 先提示用户选择拳头
2. 接收用户输入拳头
3. 显示用户选择拳头
4. 将用户选择的拳头存储在当前对象的属性中
 */
    NSLog(@"亲爱的玩家[%@]请选择您要出的拳头:1.剪刀 2.石头 3.布",_name);
    int userSelect = 0;
    scanf("%d",&userSelect);
    NSString *type = [self fistTypeWithNumber:userSelect];
    NSLog(@"玩家[%@]出的拳是:%@",_name,type);
    
    _selectedType = userSelect;
    
}
/*
 根据传入的整型的数返回响应的字符串的拳头的类型。
 @param number 整型的数
 @return 对应的拳头类型
 */
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
