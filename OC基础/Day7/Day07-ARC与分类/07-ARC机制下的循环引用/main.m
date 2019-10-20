//
//  main.m
//  07-ARC机制下的循环引用
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 在ARC的机制下，当两个对象相互引用的时候，如果两边都使用 strong 那么就会出现内存泄露。
 
 解决方案：一端使用strong，一端使用weak.

 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
    Person *p1 = [Person new];
    Book *b1 = [Book new];
    
    p1.book = b1;
    b1.owner = p1;
    
    return 0;
}
