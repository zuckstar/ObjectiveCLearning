//
//  main.m
//  05-第一个ARC程序
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//



/*
 1. ARC下的单个对象的内存管理
    在ARC的机制下，当一个对象没有任何的强指针指向它的时候，这个对象就会被立即回收。
    1)当指向对象的所有的强指针被回收的时候，对象就会被立即回收。（局部的指针变量）
    2）当指向对象的强指针赋值为nil的时候，对象就会被立即回收。
 
 2. 强指针与弱指针
    1）强指针与弱指针的声明。
       a) 默认情况下，所有的指针都是强类型的。
       b) 使用__strong来显示地标识指针是强类型指针
       c) 使用__weak标志指针的类型是弱类型指针
 
    2）在操作对象的时候，通过强指针或者弱指针都可以操作，没有任何区别。
 
    3) 最重要的一点，不能创建对象用一个弱指针存储这个对象的指针。
    这样的话，刚创建出来的对象就没有任何强指针的指向，创建出来就会被回收。
    __weak Person *p1 = [[Person alloc] init];
 
    4) 在ARC的机制下，当对象被回收的时候，原来指向这个对象的弱指针，会自动指向nil
 
    
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
    __strong Person *p1 = [Person new];
    __weak Person *p2 = p1;
    
    p1 = nil;
    
    
    
//    __weak Person *p2 = nil;
//    if(1)
//    {
//        Person *p1 = [Person new];
//        p2 = p1;
//
//    }
    return 0;
}
