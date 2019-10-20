//
//  main.m
//  10-找女朋友
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 男孩子找女朋友。

 要求：
    必须
    1）会洗衣服
    2）会做饭
    优先考虑
    如果有份过万的月薪的工作
 
 
 男孩子类：
    属性：姓名，年龄，钱，女朋友
    行为：谈恋爱
 
 
 定义一个协议：女朋友协议
    洗衣
    做饭
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Boy.h"
#import <limits.h>
#import "Girl.h"
#import "Pig.h"

int main(int argc, const char * argv[]) {

    
    Boy *b1 = [Boy new];
    b1.name = @"李刚";
    b1.age = 18;
    b1.money = INT32_MAX;
    
    
    
//    Girl *fj = [Girl new];
//    fj.name = @"凤姐";
//    b1.girlFriend = fj;
//    [b1 makeFriends];
    
    
    Pig *zhuzhu = [Pig new];
    b1.girlFriend = zhuzhu;
    [b1 makeFriends];
    
    return 0;
}
