//
//  main.m
//  03-OC和C的对比
//
//  Created by a on 2019/6/10.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
 1. OC中的数据类型.
    1). OC中支持C语言中所有的数据类型.
        a. 基本数据类型
           int double float char
        b. 构造类型
           数组 结构体 枚举
        c. 指针类型
           int *p
        d. 空类型
           void
        e. typeof自定义类型
 
    2). BOOL类型
        1). 可以存储YES或者NO中的任意一个数据。
        2). 一般情况下BOOL类型的变量用来存储条件表达式的结果。
        3). BOOL的本质
            typedef signed char BOOL;
            实际上BOOL类型的变量是一个有符号的char变量.
 
            #define YES ((BOOL)1)
            #define NO  ((BOOL)0)
            YES 实际上就是 1
            NO 实际上就是 0
 
    3). Boolean类型
        a.Boolean类型的变量可以存储true或者false。
        b.本质上和BOOL一样。
 
    4). class 类型 - 类
    5). id类型 - 万能指针
    6). nil 与 C语言的 NULL 差不多
    7). SEL 方法选择器
    8). block 代码段
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    BOOL b = YES;
    int num1 = 10;
    int num2 = 20;
    
    BOOL b1 = num1 > num2;
    return 0;
}
