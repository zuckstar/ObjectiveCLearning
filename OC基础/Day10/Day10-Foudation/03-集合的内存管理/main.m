//
//  main.m
//  03-集合的内存管理
//
//  Created by a on 2019/10/19.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. 集合
    NSArray集合、NSDictionary 就叫做字典集合
 
 2. 在MRC的模式下，将一个对象存储到集合中，会不会影响对象的引用计数器
    将对象存储到集合之中，会为这个对象的引用计数器+1
 
    当集合销毁的时候，就会向存储在集合中的所有对象发送一条release消息
 
     Person *p1 = [Person new];
 
     NSLog(@"%lu",p1.retainCount);  1
     NSArray *arr = @[p1];
     NSLog(@"%lu",p1.retainCount);  2
 
     [arr release];
 
     NSLog(@"%lu",p1.retainCount);  1
     [p1 release];
 
 3. 使用@[]或者@{}创建的集合已经是被autorelease过的了。
 
    直接调用和类同名的类方法创建的对象，也是被autorelease过的了。
 
     @autoreleasepool {
        NSArray *arr1 = [NSArray arrayWithObjects:@"jack",@"rose",@"lili", nil];
        NSArray *arr2 = @[@"jack",@"rose"];
 
     }
 
 4. 在ARC的模式下，集合的元素是一个强类型的指针。
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    

    return 0;
}
