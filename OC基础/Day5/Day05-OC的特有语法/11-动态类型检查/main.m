//
//  main.m
//  11-动态类型检查
//
//  Created by a on 2019/8/4.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 1.编译检查
    编译器在编译的时候，判断一个指针是否可以调用指向的对象的方法
    判断的准则就是指针的类型
    编译器LLVM
 
    但是我们很容易就把编译器给骗过
 
 2. 就算骗过了编译器，程序在运行的时候还会做运行检查
    我们写的程序就算编译通过了，不意味着可以完美地执行
 
 3. 我们就希望，我们可以写代码来先判断一下，对象中是否有这个方法，如果有再去执行，如果没有就别去执行
 
    1）判断对象中是否有这个方法可以执行。
        BOOL b1 = [p1 respondsToSelector:@selector(sayHi)];
        最常用的是这个方法。
 
    2）判断指定对象是否为指定类的对象或者子类对象
        BOOL b1 = [p1 isKindOfClass:[Person class] ];
        判断 p1 对象是否为Person对象，或者Person的子类对象
 
    3）判断对象是否为指定类的对象，不包括子类
        BOOL b2 = [s1 isMemberOfClass: [Student class]];
        判断s1对象是否为一个Student 对象，不包括它的子类对象
 
    4）判断一个类是否是另外一个类的子类
        [Student isSubclassOfClass:nil];

    5）判断类中是否有指定的类方法
        +(BOOL)[Student instancesRespondToSelector:@selector(sayHi)];
 */
#import "Student.h"
int main(int argc, const char * argv[]) {
//    Person *p1 = [Person new];
//    BOOL b1 = [p1 respondsToSelector:@selector(sayHi)];
//    if(b1 == YES) {
//        [p1 sayHi];
//    } else {
//        NSLog(@"No...");
//    }
//    return 0;
    
    
    
    Person *p1 = [Person new];
    Student *s1 = [Student new];
    BOOL b1 = [p1 isKindOfClass:[Person class] ];
    BOOL b2 = [s1 isMemberOfClass: [Person class]];
    
    [Student isSubclassOfClass:nil];
    [Student instancesRespondToSelector:@selector(sayHi)];
    NSLog(@"b1 = %d", b1);
}




















































