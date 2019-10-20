//
//  main.m
//  06-最容易的犯错
//
//  Created by a on 2019/6/25.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
 1.最容易犯的错
    1）@interface 和 @implementation 不能相互嵌套
    2）类必须先声明再实现
    3）类的声明和实现都必须要有，就算没有方法，类的实现也必不可少
    4）类的声明必须在使用的类的前面，类的实现可以在使用类的后面
    5）特殊情况下类可以只有实现而没有声明
    6）属性名一定要以下划线开头，这是规范，否则后面的知识点会对不上号、类名的每个单词首字母要大写
    7）属性不允许声明的时候初始化
     @interface Student : NSObject{
        int a = 3; 错误的语法
     }
    8）OC方法必须创建对象通过对象名来调用
    9）方法只有声明，没有实现
        a. 如果方法只有声明 没有实现，编译器会给一个警告，不会报错
        b. 如果指针指向的对象，有方法的声明，而没有方法的实现，那么这个时候通过指针来调用的这个方法在运行的时候，就会报错
            unrecognized selector to instance 0x100
            只要你看到这个错误，说明要么对象中根本就没有这个方法，要么这个方法中只有声明没有实现。
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
