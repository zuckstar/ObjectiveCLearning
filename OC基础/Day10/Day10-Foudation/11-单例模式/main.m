//
//  main.m
//  11-单例模式
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 单例模式
    1个类的对象，无论在何时何地创建,无论创建多少次，创建出来的都是同一个对象。
 
 
 2. 无论如何创建对象，最终都会调用alloc方法来创建对象。
 
 
    1) alloc 方法的内部。其实什么都没有做，只是调用了allocWithZone:方法
    2）实际上真正地申请空间，创建对象的事情是allocWithZone:方法在做
 
 3. 要实现单例模式
 
     重写 + allocWithZone：
 
         + (instancetype)allocWithZone:(struct _NSZone *)zone
         {
            static id instance = nil;
            if(instance == nil) {
            instance = [super allocWithZone:zone];
         }
            return instance;
         }
 4. 单例模式的规范
    如果类是一个单例模式，要求为类提供一个类方法，来返回单例对象。
 
    类方法的名称必须以 shared类名，default类名
 
 5. 什么时候要把类定义成单例的。
    1）单例的特点
        无论何时何地创建过多少个对象，得到的都是同一个对象。
        单例对象可以被共享。存储在单例对象中的数据可以被共享。
        也就是无论在什么地方，创建单例对象，访问的都是同一个对象。
    2）
    做游戏，游戏的面板参数 宽度800，高度600
 
    以上的这个两个数据在很多地方都会用到
 
    1. 直接写，滚蛋. 不方便维护，修改的时候需要一个个修改
    2. 定义宏。程序运行的时候无法更改。
    3. 还是要定义为变量
 
    定义为属性保存在对象中，如果不是单例对象。
 
    如果数据需要被整个程序所共享，将数据以属性的方式存储在单例对象中。
    
 
 */

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
    
//    Person *p1 = [[Person alloc] init];
    
    
    
    Person *p1 = [Person new];
    Person *p2 = [Person new];
    Person *p3 = [Person new];
    Person *p4 = [Person sharedPerson];
    
    return 0;
}
