//
//  main.m
//  01-继承的本质
//
//  Created by a on 2019/7/20.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 创建一个对象，这个对象在内存中是如何分配的
    1）子类对象中有自己的属性和所有父类的属性
    2）代码段中的每一个类都有一个叫做isa的指针，这个指针指向它的父类，一直指导NSObject
        [p1 sayHi];
        在调用方法的时候，先根据p1指针找到p1指向的对象，然后根据对象的isa指针找到Person类，
        搜索Person类中是否有这个sayHi方法，如果有就执行，如果没有，就根据类的isa指针找父类。直到NSObject，NSObject如果没有就报错。
    
 
 
 */
#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    Student *s1 = [Student new];
    
    return 0;
}
