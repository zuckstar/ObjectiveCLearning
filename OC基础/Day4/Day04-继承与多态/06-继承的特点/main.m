//
//  main.m
//  06-继承的特点
//
//  Created by a on 2019/7/14.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
 1. 单根性
    一个类有且只能有一个父类，不能有多个父类
 2. 传递性
    A类从B类继承，B类又从C类继承，那么A类就同时拥有B、C类中的成员
 
 3. NSObject 类
    是Foundation框架中的类，在这个类中有一个类方法new
    这个方法是用来创建对象的，方法的返回值是创建这个对象的指针。
 
    也就是说如果要创建类的对象，就必须要调用new方法
 
    如果我们想要让我们的类具备创建对象的能力，就必须要让我们的类直接或者间接地从NSObject类继承
 
    所以，要求：我们写的类必须直接地或者间接地要从NSObject类继承
    如果你不继承，我们的类就无法创建对象，那么类就毫无意义了。
 
    在NSObject类之中，还定义了一个属性。这个属性叫做isa指针。
    所以，每一个类对象中都有一个叫做isa的指针
 
    NSObject类是OC中所有类的祖宗类，因为OC中的类全部都是直接的或者间接的从它继承
 4.
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
