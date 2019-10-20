//
//  main.m
//  04-匿名对象
//
//  Created by a on 2019/6/29.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
 1. 我们之前创建对象的做法
    Person *p1 = [Person new];
    让一个指针指向一个对象，这个指针就叫做这个对象的名字。
 
 2. 匿名对象
    没有名字的对象，如果我们创建一个对象，没有用一个指针存储这个对象的地址。
    也就是说没有任何指针指向这个对象，那么这个对象就叫做匿名对象。
 
 3. 如何去使用一个匿名对象呢？
    因为new实际上是一个类方法，这个方法做的事情创建对象（4个步骤），返回值是创建的对象的地址

 4. 匿名对象只能使用一次
    1）匿名对象只能使用一次
    2）每次创建匿名对象都是不同的对象
 
 5. 有什么用？
    1）如果某个对象的成员只会被我们使用一次，用完之后这个对象再也不需要了，那么就可以使用匿名对象
    2）如果方法的参数是一个对象，而调用者为这个参数赋值的时候就是专门来给这个方法传递的
       并且这个对象的调用者不会使用，那么这个时候就可以直接为方法传递一个匿名对象。
 6.
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "God.h"

int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    God *ys = [God new];
    
    [ys killWithPerson:[Person new]];
    
    
    return 0;
}
