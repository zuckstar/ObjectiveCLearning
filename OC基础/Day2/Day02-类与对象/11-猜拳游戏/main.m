//
//  main.m
//  11-猜拳游戏
//
//  Created by a on 2019/6/27.
//  Copyright © 2019年 Jamie. All rights reserved.
//

/*
 1.猜拳游戏的流程
    1）玩家出拳
    2）机器人出拳
    3）裁判宣布比赛结果
 2. 面向对象的重点在于找类
    玩家类：
        属性：姓名、选择的拳头、得分
        方法：出拳->自选选择拳头
    机器人类；
        属性：姓名、选择的拳头、得分
        方法：出拳->随机出拳
    裁判类：
        属性：姓名
        方法：判断输赢并显示分数
 3. 枚举或者结构体定义在什么地方
    如果只是一个类要用，那么就定义在这个类的头文件中
    如果多个类要用，那么就定义在一个单独的头文件中，谁要用谁就去引就可以了
 
 4. 如果要在方法中调用当前对象的另外一个方法
    [self 方法名];
    self 代表当前对象.
 
 */
#import <Foundation/Foundation.h>
#import "Player.h"
#import "Robot.h"
#import "Judge.h"
int main(int argc, const char * argv[]) {
    
    
    Player *xiaoMing = [Player new];
    xiaoMing->_name=@"小明";
    
    
    Robot *aphlgo = [Robot new];
    aphlgo->_name = @"阿法狗";
    
    while(1){
        [xiaoMing showFist];
        [aphlgo showFist];
        
        //裁判：拿到他们的拳头
        Judge *heishao = [Judge new];
        heishao->_name = @"黑哨";
        [heishao judgeWithPlayer:xiaoMing andRobot:aphlgo];
        
        NSLog(@"还要再玩一次吗？y/n");
        char ans = '0';
        rewind(stdin);
        scanf("%c",&ans);
        
        if(ans != 'y'){
            break;
        }
        
    }

    
    return 0;
}
