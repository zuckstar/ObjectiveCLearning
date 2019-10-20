//
//  main.m
//  03-类的本质
//
//  Created by a on 2019/7/27.
//  Copyright © 2019 Jamie. All rights reserved.
//
/*
 1. 内存中的五大区域
    栈
    堆
    BSS段
    数据段
    代码段
 
    代码段是用来存储代码的。
    类加载。当类第一次被访问的时候，这个类就会被加载到代码段存储起来。
 2. 讨论三个问题
 
    1）类什么时候加载到代码段
        类第一次被访问的时候，类就会被加载到代码段存储，这个过程叫类加载。
    2）类以什么样的形式存储在代码段
 
 
    3）类一旦被加载到代码段后什么时候回收
        类一旦被加载到代码段后什么时候回收，是不会被回收的，直到程序结束。
 
 3. 类以什么样的形式存储在代码段的
 
    1）任何存储在内存中的数据都有一个数据类型
 
        int num = 12
        float 12.12f
        'a'
 
        任何在内存中申请的空间也有自己的类型。
 
        Person *p1 = [Person new];
 
    2）在代码段存储类的那块空间是个什么类型的
        在代码段中存储类的步骤
        a. 先在代码段中创建一个Class对象，Class是Foundation框架中的一个类
           这个Class对象就是用来存储类信息的。
        b. 将类的信息存储在这个Class对象之中。
            这个Class对象至少有3个属性。
            className: 存储类名
            存储类的属性们
            存储类的方法们
 
        所以，类是以Class对象的形式存储在代码段的。
        存储类的这个Class对象，我们也叫做类对象，用来存储类的一个对象。
        所以，存储类的类对象也有一个叫做isa指针的属性，这个指针指向存储父类的类对象。
 
    4. 如果拿到存储在代码段中的类对象
        1）调用类的类方法，class就可以得到存储类的类对象的地址
 
        2）调用对象的对象方法 class 就可以得到存储这个对象所属的类的class对象的地址
 
        3）对象的isa指针的值其实就是代码段中存储类的类对象的地址。
 
        注意：声明Class指针的时候，不需要加*，因为在typedef的时候已经加了*了。
 
    5. 如何使用类对象
 
        1）拿到存储的类对象后
            Class c1 = [Person class]
            c1对象就是Person类
            c1 完全等价于 Person
        2）使用类对象来调用类的类方法
            因为类对象就代表存储在这个类对象中的类
            Class c1 = [Person class]
            c1就代表Person类
            所以在使用Person的地方完全可以使用c1来代替
            比如我们使用类名来调用类方法
            [Person sayHi] = [c1 sayHi]
            因为c1就等于Person
 
        3）可以使用类对象来调用new方法，创建存储在类中的类对象
            Class c1 = [Person new];
            Person *p1 = [c1 new];
 
 
        4）注意：使用类对象就只能调用类的类方法，因为类对象就等价于存在其中的类
            Class c1 = [Person new];
            c1 就是 Person
 
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main() {
//    Class c1 = [Person class];
//    // c1 指的是存储Person类的类对象
//    NSLog(@"c1 = %p", c1);
//
//    Person *p1 = [Person new];
//    Class c2 = [p1 class];
//    NSLog(@"c1 = %p", c2);
//
//    [c1 sayHi];

    Class c1 = [Person new];
    Person *p1 = [c1 new];
    
}
