//
//  main.m
//  10-士兵突击
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//


/*
 利用面向对象，模拟如下流程
 士兵 开枪 射出子弹
 士兵类：
    属性：姓名、兵种
    行为：开火的方法
 枪类：
    属性：型号、射程
    行为：射击
 
 
 
 子弹类：
 
 枪里面有一个弹夹，弹夹里面有子弹
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Soldier.h"
#import "Gun.h"
#import "Clip.h"
int main(int argc, const char * argv[]) {
    Clip *clip = [Clip new];
    
    [clip setMaxCapcity:10];
    [clip setBulletCount:3];
    
    Gun *ak47 = [Gun new];
    [ak47 setModel:@"AK47"];
    [ak47 setClip:clip];
    
    Soldier *xsd = [Soldier new];
    [xsd setName:@"许三多"];
    [xsd setType:@"炮兵"];
    [xsd setGun:ak47];
    
    [xsd fire];
    [xsd fire];
    [xsd fire];
    [xsd fire];
    [xsd fire];
    return 0;
}
