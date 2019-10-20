//
//  main.m
//  04-ARC机制概述
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

/*
 1. 什么是ARC
    Automatic Reference Counting 自动引用计数，即ARC
    顾名思义：系统自动地帮助我们去计算对象的引用计数器的值
 
    可以说是WWDC2011和iOS5引入的最大的变革和最激动人心的变化。
    ARC是最新的LLVM3.0编译器的一项特性，使用ARC，可以说是解决了广大iOS开发者所憎恨的手动管理内存的麻烦。
 
    在程序中使用ARC非常简单，只需要像往常那样编写代码
    只不过永远不要写retain，release，autorelease这三个关键字就好，永远不要手动地调用dealloc。这是ARC的基本原则
 
    当ARC开启时，编译器会自动的在合适的地方插入retain，release，autorelease代码
    编译器自动为对象做引用计数，而作为开发者，完全不需要担心编译器会做错。
 
 2. ARC机制下，对象何时被释放
    本质：对象的引用计数器为0的时候，自动释放。
 
    表象：只要没有强指针指向这个对象，这个对象就会立即被回收
 
 3. 强指针与弱指针
    强指针：默认情况下，我们声明一个指针，这个指针就是一个强指针
          我们也可以使用__strong来显式地声明这是一个强指针
 
            Person *p1 这是一个强指针，默认情况下都是一个强指针。
            __strong Person *p1 这也是一个强指针，使用__strong来显式地声明一个强指针
 
    弱指针：使用 __weak Person *p2 标识的指针叫做弱指针。
 
    无论是强指针还是弱指针，都是指针，都可以用来存储地址，这一点没有任何区别。
    都可以通过这个指针访问对象的成员。
 
    唯一的区别就是在ARC模式下，他们用来作为回收对象的基准。
 
    如果一个对象没有任何强类型的指针指向这个对象的时候，对象就会被自动释放。
 
 4. 确认程序是否开启ARC机制
    1）默认情况下，Xcode开启ARC机制
    2）ARC机制下，不允许调用retain，release，retainCount、autorelease方法
    3）在dealloc中，不允许 [super dealloc];
 
 5. 演示一个ARC案例
 
 */
int main(int argc, const char * argv[]) {
    __strong Person *p1 = [Person new];
    
    __weak Person *p2 = p1;
    
    [p1 sayHi];
    [p2 sayHi];
    
    return 0;
}
