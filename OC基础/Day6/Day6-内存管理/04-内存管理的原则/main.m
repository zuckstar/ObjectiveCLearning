//
//  main.m
//  04-内存管理的原则
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. 内存管理的重点
    1）什么时候为对象发送retain消息
        当多一个人使用这个对象的时候，应该先为这个对象发送retain消息
    2）什么时候为对象发送release消息
        当少一个人使用这个对象的时候，应该为这个对象发送release消息
 
 
 2. 在 ARC 机制下，retain, realease dealloc 这些方法无法调用

 3. 内存管理的原则
    1)有对象的创建，就要匹配一个release
    2)retain的次数要和release次数要匹配
    3)谁用谁负责retain和release
    4)只有在多一个人用的时候才retain,少一个人使用的时候才release
 
 
    有始有终，有加就有减，有retain就应该匹配一个release一定要平衡。
    
 
    
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    [p1 retain];
    
    [p1 retain];
    [p1 release];
    return 0;
}
