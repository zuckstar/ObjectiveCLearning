//
//  main.m
//  05-方法与函数
//
//  Created by a on 2019/6/25.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
 1. 我们之前在C中学习的函数，就叫做函数
 void test(){}
 
 2. 在OC类中写的方法就叫做方法
 -(void)sayHi;
 
 3.相同点:
 都是用来封装一段代码的，将一段代码封装在其中，表示一个相对独立的功能。
 函数或者方法只要被调用，那么封装在其中的代码就会被自动执行
 4.不同点
    1）语法不同
        函数声明的语法：
        返回值类型 函数名(参数列表){};
        方法的语法:
         -(void)sayHi;
    2）定义的位置不同
        OC方法的声明只能写在@interface的大括弧的外面，实现智能写在@implementation之中
        函数除了在函数的内部和@interface的大括弧之中，其他地方都是可以定义的
        就算把函数写在类中，这个函数仍然不属于类，所以创建的对象中也没有这个函数
    3）调用的方式不同
        函数可以直接调用
        方法必须先创建对象，通过对象来调用
    4）方法是属于类的，而函数是独立的
 
 */
#import <Foundation/Foundation.h>
void test()
{
    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
