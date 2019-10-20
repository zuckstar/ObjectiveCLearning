//
//  Judge.m
//  11-猜拳游戏
//
//  Created by a on 2019/6/27.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Judge.h"

@implementation Judge
-(void)judgeWithPlayer:(Player *)player andRobot:(Robot *)robot
{
    //1.先拿到玩家出的拳头
    FistType playerType = player->_selectedType;
    FistType robotType = robot->_selectedType;
    
    //2.判断输赢，为胜利者加分，显示结果
    /*
        剪刀  1
        石头  2
        布    3
     
        1 3 -2
        2 1 1
        3 2 1
    */
    NSLog(@"我是裁判[%@],现在我来宣布比赛结果.",_name);
    
    if(playerType - robotType == -2 || playerType - robotType == 1){
        
        // 玩家胜利
        NSLog(@"恭喜玩家[%@]取得了胜利.",player->_name);
        player->_score++;
        
    } else if(playerType == robotType){
        
        //平局
        NSLog(@"[%@]、[%@]你们真是心有灵犀一点通啊！平局！",player->_name,robot->_name);
        
        
    } else {
        // 机器人胜利
        NSLog(@"恭喜机器人[%@]取得了胜利.",robot->_name);
        robot->_score++;
    }
    NSLog(@"玩家:[%@]:[%d] --- 机器人:[%@]:[%d]",
          player->_name,
          player->_score,
          robot->_name,
          robot->_score);
}
@end
