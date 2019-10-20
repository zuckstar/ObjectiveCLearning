//
//  main.m
//  09-@class
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. 当两个类相互包含的时候，当Person.h 包含Book.h，Book.h 又包含Person.h
    这个时候，就会出现循环引用的问题，就会造成无限递归的问题，而导致无法编译通过。
 2. 解决方案
    其中一边不要使用@import引入对方的头文件，而是使用@class类名，来标注这是一个类，这样子就可以在不引入对方头文件的情况下，告诉编译器这是一个类
 
    
 
 3. @class 与 #import 的区别
    1）import 是将指定的文件的内容拷贝到写指定的地方
    2）@class 并不会拷贝任何内容，只是告诉编译器，这是一个类，这样编译器在编译的时候才知道这是一个类。
    
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    Book *b1 = [Book new];
    
    p1.book = b1;
    
    
    [p1 read];
    
    [b1 release];
    [p1 release];
    
    
    return 0;
}
