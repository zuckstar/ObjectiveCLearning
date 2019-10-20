//
//  main.m
//  07-NSValue
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//



/*
 1. 我们之前学习的常用的结构体
    NSRange
    CGPoint
    CGSize
    CGRect
    这些都是结构体，他们的变量是无法存储到集合之中的。
 
 2. 解决方案
        先将这些结构体变量存储到OC对象中，再将OC对象存储到集合之中。
 
 3. NSValue 类对对象就使用来包装结构体变量的。
 
 -  CGPoint
     CGPoint p1 = CGPointMake(10, 20);
     CGPoint p2 = CGPointMake(10, 20);
     CGPoint p3 = CGPointMake(10, 20);
     CGPoint p4 = CGPointMake(10, 20);
 
     NSValue *v1 = [NSValue valueWithPoint:p1];
     NSValue *v2 = [NSValue valueWithPoint:p2];
     NSValue *v3 = [NSValue valueWithPoint:p3];
     NSValue *v4 = [NSValue valueWithPoint:p4];
 
     NSArray *arr = @[v1,v2,v3,v4];
 
 
 
     for(NSValue *v in arr){
        NSLog(@"%@",NSStringFromPoint(v.pointValue));
     }
 
 
 - CGSize
 
     CGSize s1 = CGSizeMake(100, 10);
     CGSize s2 = CGSizeMake(100, 10);
     CGSize s3 = CGSizeMake(100, 10);
 
     NSValue *v1 = [NSValue valueWithSize:s1];
     NSValue *v2 = [NSValue valueWithSize:s2];
     NSValue *v3 = [NSValue valueWithSize:s3];
 
     NSArray *arr = @[v1,v2,v3];
 
 for(NSValue *v in arr){
 NSLog(@"%@",NSStringFromSize(v.sizeValue));
 }
 
 
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    
    CGSize s1 = CGSizeMake(100, 10);
    CGSize s2 = CGSizeMake(100, 10);
    CGSize s3 = CGSizeMake(100, 10);
    
    NSValue *v1 = [NSValue valueWithSize:s1];
    NSValue *v2 = [NSValue valueWithSize:s2];
    NSValue *v3 = [NSValue valueWithSize:s3];
    
    NSArray *arr = @[v1,v2,v3];
    
    for(NSValue *v in arr){
        NSLog(@"%@",NSStringFromSize(v.sizeValue));
    }
    
    
    return 0;
}
