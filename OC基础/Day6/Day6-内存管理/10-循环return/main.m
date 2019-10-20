//
//  main.m
//  10-循环return
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 当两个对象相互引用的时候，A对象的属性是B对象，B对象的属性是A对象的时候，这个时候，如果两边都使用retain那么就会发生内存泄露
 
 2. 解决方法，一端使用 retain 一端使用assign。使用 assign 的那一端在dealloc中不需要release了
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    Book *b1 = [Book new];
    
    p1.book = b1;
    b1.owner = p1;
    
    
    [b1 release];
    [p1 release];
    return 0;
}
