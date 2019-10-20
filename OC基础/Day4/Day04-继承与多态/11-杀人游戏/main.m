//
//  main.m
//  11-杀人游戏
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 多态
 1. 杀手
    方法：可以杀各种各样的人
 
 2. 每一个人被杀的时候，都要叫一声，但是每一个人叫的形式是不一样的。
    每一个人都有一个叫的方法
 
    Person:父类
    男人、超级赛亚人、火星人
 3.
 
 */
#import <Foundation/Foundation.h>
#import "Killer.h"
#import "Man.h"
#import "FireMan.h"
#import "SuperMan.h"

int main(int argc, const char * argv[]) {
    Killer *bill = [Killer new];
    
    Man *m1 = [Man new];
    FireMan *fm = [FireMan new];
    SuperMan *sm = [SuperMan new];
    
    [bill killWith:m1];
    [bill killWith:fm];
    [bill killWith:sm];
    
    return 0;
}
