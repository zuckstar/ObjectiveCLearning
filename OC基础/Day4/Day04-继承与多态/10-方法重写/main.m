//
//  main.m
//  10-方法重写
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. 子类从父类继承，子类就继承了父类的方法
    子类继承了父类的方法，就意味着子类拥有了这个功能。
    有的时候，虽然子类也拥有父类的这个行为，但是这个行为的具体实现和父类不同
 
 2. 这个时候怎么办？
    拥有父类的行为，但是行为的具体实现和父类的实现不一样
 
    那么子类就自己按照自己的方式重写这个方法就可以了
    如何重写：直接在类的实现中将这个方法重新实现一遍就可以了
 
 3. 什么时候子类需要重写父类的方法
    子类拥有父类的行为，但是子类行为的实现和父类不一样，那么就按照自己的方式重写这个方法就可以了。
 
 4*. 当一个父类指针指向一个子类对象的时候，通过这个父类指针调用的方法如果在子类中重写了，调用的就是子类重写的方法。
 
 5. 多态
    指的是同一个行为，对于不同的事物具有完全不同的表现形式。
 
    找三个人过来，
    医生
    演员
    理发师
 
    cut 指令
    同一个行为，具备多种形态
 Person *p1 = [Chinese new];
 Person *p2 = [Japanese new];
 Person *p3 = [Korea new];
 
 [p1 sayHi];
 [p2 sayHi];
 [p3 sayHi];
 
 
 */
#import <Foundation/Foundation.h>
#import "Chinese.h"
#import "Japanese.h"
int main(int argc, const char * argv[]) {
    
//    Chinese *ch = [Chinese new];
//    [ch sayHi];
//
//    Japanese *ja = [Japanese new];
//    [ja sayHi];
//
//
//    Person *p1 = [Chinese new];
//    [p1 sayHi];
//    Person *p2 = [Japanese new];
//    [p2 sayHi];
    
    
    
    
    return 0;
}
