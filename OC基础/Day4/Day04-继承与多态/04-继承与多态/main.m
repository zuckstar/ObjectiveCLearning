//
//  main.m
//  04-继承与多态
//
//  Created by a on 2019/7/7.
//  Copyright © 2019年 Jamie. All rights reserved.
//


/*
 1. @try...@catch异常处理
 2. 类方法
    a. 声明
    b. 调用
    c. 特点
    d. 注意
        在类方法中不能直接访问属性，也不能使用self直接调用其他的对象方法。
        在类方法的内部创建一个对象，访问这个对象的成员。
        在对象方法中可以直接使用类名来调用类方法
    e. 什么时候
    f. 规范
 
 3. NSString
    a. NSString是一个类
    b. 常用的方法
       把C字符串转为OC字符串
       拼接字符串
       获取字符串长度
       得到指定下标的字符
       字符串比较
 4. 匿名对象
    a. 匿名对象
    b. 匿名对象只能使用一次
 
 5. 属性的封装
    a. setter 和 getter 的规范
    b. 封装规范
    c. 只读与只写封装
 
 6. 类与类之间的关系
    组合
        一个类由其他的多个类组合而成的。
        电脑：CPU + 主板 + 显卡...
    依赖
 
    关联
        一个类拥有另外一个对象。
        Person iPad
    继承
        
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
