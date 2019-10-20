//
//  main.m
//  08-协议的基本使用
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 协议与协议之间可以相互继承
    1）继承的语法
        @protocol 协议名称  <父协议的名称>
        @end;
    2)效果：
        子协议当中不仅有自己的方法的声明，还有父协议中的所有的方法的声明。
        如果一个类遵守了某份协议，那么这个类就拥有这个协议和这个协议的父协议的所有的方法的声明。
 
  2. 介绍NSObject
    在 Foundation 框架中，有一个类叫 NSObject，是所有OC类的基类。
    在 Foundation 框架中，有一个协议，叫NSObject。
 
    NSObject 协议被 NSObject 类遵守。所以，NSObject 协议中的所有的方法全部的OC类都拥有了。
    照这么说，所有的OC都遵守了NSObject的协议的。NSObject 的协议叫做基协议。

 
    类的名称可以和协议的名称一致
 
3. 写协议的规范
    要求所有的协议都必须直接地或者间接地从NSObject基协议继承。
 
    
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
    
    Person *p1 = [Person new];
    [p1 description];
    
    return 0;
}
