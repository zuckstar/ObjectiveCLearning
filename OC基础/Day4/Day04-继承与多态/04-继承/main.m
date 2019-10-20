//
//  main.m
//  04-继承
//
//  Created by a on 2019/7/13.
//  Copyright © 2019年 Jamie. All rights reserved.
//


/*
 1. 遇到的问题
    多个类具有相同的成员
    a. 复制粘贴
        ->代码冗余
        ->后期维护不方便
    b. 使用继承
 
 2. 继承的目的：
    儿子类想拥有父亲类中的所有的成员，但是不想自己去定义，而是想凭空拥有。
 
 3. 继承的语法：如何让一个类继承另外一个类，因为子类可以拥有父类的所有成员
    语法：
 @interface 类名 : 父类的名称
 @end
 
 4. 继承的效果
    子类一旦从父类那里继承，那么子类就拥有了父类中的所有成员，不用自己去定义
 
 5. 术语
  @interface Student : Person
    1）student 类从Person类继承，Student类是Person类的子类，Person类是Student的父类
    2）Student 类从Person类派生，Student类是Person类的派生类，Person类是Student类的基类
 */

#import <Foundation/Foundation.h>
#import "Person.h"


@interface Chinese : Person
{
    
}
@end

@implementation Chinese
@end
int main(int argc, const char * argv[]) {
    Chinese *ch = [Chinese new];
    [ch setName:@"小明"];
    [ch setAge:28];
    
    NSLog(@"name->%@, age->%d",[ch name],[ch age]);
    return 0;
}
