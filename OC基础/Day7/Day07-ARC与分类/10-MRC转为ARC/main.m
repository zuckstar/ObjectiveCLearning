//
//  main.m
//  10-MRC转为ARC
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//



/*
 1. 可以将整个MRC程序，转换为ARC程序
    可以把当前项目转成ARC程序
    菜单->EDIT->Convert->To Object-c ARC
    IDE中的转ARC的代码只是简单地把有关于 dealloc 和 retain 、 release 相关的代码移除或转换。
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
