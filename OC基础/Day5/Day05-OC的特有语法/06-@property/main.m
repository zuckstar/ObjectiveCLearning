//
//  main.m
//  06-@property
//
//  Created by a on 2019/7/28.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. 我们写一个类
    a. 要先为类写属性
    b. 再声明属性的getter setter
    c. 再实现getter 和 setter
    有没有更为简单的方式来实现同样的代码效果
 2.@property
    1）作用：自动生成getter和setter方法的声明
    因为是生成方法的声明，所以应该写在@interface类的声明当中
 
    2）语法：
    @property 数据类型 名称;
    @property int age;
    3）原理：
        编译器在编译的时候，会根据@property生成getter和setter方法的声明。
        @property int age;
        生成为
        -(void)setAge:(int)age;
        -(int)age;
 
 3. 使用@property自动生成变量的声明
    1）property的类型和属性的类型一致
    2）property的名称和属性的名称一致（去掉下划线）
    3）property的名称决定了getter和setter方法的名称
    4）property只是生成getter和setter方法的声明，实现还要自己来，属性也要自己定义
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    return 0;
}
