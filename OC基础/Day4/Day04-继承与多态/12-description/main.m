//
//  main.m
//  12-description
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. %p 打印的是指针变量的值
 2. %@ 打印的是指针指向的对象
    如果我们使用%@打印一个对象。输出的格式：<对象所属的类名:对象的地址>
 3. 原理:
    当我们使用%@打印一个对象的时候，NSLog函数的底层实现。
    1) 调用传入的这个对象的description方法
    2）拿到这个方法的返回值，这个返回值是一个字符串
    3）将这个字符串输出
    4）description方法是定义在NSObject类之中的。所以每一个OC对象都有这个方法。
 
 4. description方法是定义在NSObject类之中的。所以每一个OC对象都有这个方法。
    description方法在NSObject返回的字符串格式@“<对象所属的类名:对象的地址>”
 
 5. 什么时候需要重写description方法呢？
 
    如果你希望使用%@打印一个对象的时候，你希望这个对象打印的格式是我们自定义的格式，那么就可以重写这个方法。
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
    Person *p1 = [Person new];
    NSLog(@"%@",p1);
    
    return 0;
}
