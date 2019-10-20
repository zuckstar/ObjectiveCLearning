//
//  Player.h
//  11-猜拳游戏
//
//  Created by a on 2019/6/27.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FistType.h"
@interface Player : NSObject
{
    @public
    NSString *_name;
    int _score;
    //    玩家选择的拳头
    FistType _selectedType;
}
// 出拳的方法
-(void)showFist;
/*
 根据传入的整型的数返回响应的字符串的拳头的类型。
 @param number 整型的数
 @return 对应的拳头类型
 */
-(NSString *)fistTypeWithNumber:(int)number;
@end
