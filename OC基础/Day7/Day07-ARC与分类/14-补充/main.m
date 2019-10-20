//
//  main.m
//  14-补充
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//



/*
 1. ARC机制和垃圾回收机制的区别
    垃圾回收机制GC：程序在运行的期间，有一个东西叫做垃圾回收器，不断地扫描堆中的对象是否无人使用，只要无人使用就直接回收掉。（运行时）
 
    ARC：不是运行时，在编译的时候就在合适的地方插入retain（编译时）
        插入的代码足以让对象无人使用的时候，引用计数器为0
 
 2. 
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
