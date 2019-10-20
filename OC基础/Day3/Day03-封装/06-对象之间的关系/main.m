//
//  main.m
//  06-对象之间的关系
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//


/*
 对象与对象之间的关系：
 1. 组合关系
    一个类是由其他的几个类联合起来组合而成，那他们之间的关系讲就叫做组合关系
 2. 依赖关系
    一个对象的方法的参数是另外一个对象，那么我们就说他们的关系是依赖关系
    人类打电话：有人的类和电话类
    就说人类依赖于电话类
    低耦合(与对象之间的联系少)、高内聚(自己只专注于做自己的事)
 3. 关联关系
    关联体现的是两个类之间语义级别的一种强依赖关系，双方的关系一般是平等的，关联可以使单向，双向的
 
 4. 继承关系
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
