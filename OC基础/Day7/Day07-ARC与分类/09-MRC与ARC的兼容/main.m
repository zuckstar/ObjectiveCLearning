//
//  main.m
//  09-MRC与ARC的兼容
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 有可能遇到的问题
    程序使用的是ARC机制开发的，但是其中的某些类使用的是MRC。
 
 2. 使用命令 -fno-objc-arc
 
    project->target->build Phases->指定某个类 双击文件->输入命令
 
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
