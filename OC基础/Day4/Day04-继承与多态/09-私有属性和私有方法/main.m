//
//  main.m
//  09-私有属性和私有方法
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 
 1. 真私有属性，让外界都不知道对象里有一个属性（Xcode提示）
 2. 在@implementation的大括弧之中也可以定义属性
 
    这里面的属性，是一个私有属性，各种访问修饰符对它无效，外界根本就不会提示
    将属性定义在@implementation之中，和将属性定义在@interface之中并标记为@private唯一的区别就是Xcode提示与否
 
 3. 私有方法
    方法不写声明，只写实现，那么这个方法就是一个私有方法，只能在本类的其他方法中调用，不能在外界调用。
 
 4. 里氏替换原则
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Girl.h"

int main(int argc, const char * argv[]) {

    
    Person *p1 = [Person new];
    Student *s1 = [Student new];
    
    // 里氏替换原则 --- LSP
    /*
     子类可以替换父类的位置，并且程序的功能不受影响。
     为什么？
     1）父类指针迫切地需求要一个父类对象，而我们给了一个子类对象，这是完全没有问题的。因为子类就是一个父类
     2）因为父类中拥有的成员子类当中都有，所以不会影响程序的功能。
     
     2. 里氏替换原则的表现形式
        当一个父类指针指向一个子类对象的时候，这里就有里氏替换原则
     
     3. LSP的作用
        1）一个指针不仅可以存储本类对象的地址，还可以存储子类对象的地址
        2）如果一个指针的类型是NSObject类型的，那么这个指针中可以存储任意的OC对象的地址
        3）如果一个数组的元素的类型是一个OC指针类型的，那么这个数组中不仅可以存储本类对象，还可以存储子类对象
        4）如果一个数组的元素是NSObject指针类型，那么意味着任意的OC对象都可以存储到数组之中
        5）如果一个方法的参数是个对象，那么我们在为这个参数传值的时候，可以传递一个本类对象，也可以传递一个子类对象，对方法中的代码不会有丝毫影响。
     
     4. 当一个父类指针指向一个子类对象的时候，只能通过这个父类指针调用子类对象中的父类成员。
        子类独有的成员，无法访问。
     
     
     */
    
    NSObject *bj = [Student new];
    Person *p2 = [Student new];
    Person *ps[3];
    ps[0] = [Person new];
    ps[1] = [Student new];
    ps[2] = [Girl new];
    return 0;
}
