//
//  main.m
//  10-NSNumber
//
//  Created by a on 2019/10/18.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 
  1. 无论是NSArray还是NSMutableArray 里面都只能存储OC对象。
     基本数据类型是无法存储的。
 
  2. 如何将基本数据类型的存储到NSArray数组中。
 
  3. 自定义包装类来包装基本数据类型
 
     定义一个类，这个类的对象的作用是用来存储一个int类型的数据，再将这个对象存储到NSArray数组中去。
 
 
  4. NSNumber是Foundation框架中定义好的一个类，这个类的对象的作用就是用来包装基本数据类型的。
     将基本数据类型存储到NSArray数组中的步骤
 
    1）先将基本数据类型包装到NSNumber之中
    2）再将NSNumber对象存储到NSArray数组中
 
  5. 简写方式
    创建NSNumber对象的简写方式：
    @10: 代表是一个NSNumber对象，这个对象中包装的是整型的10.这不是一个整型的10，而是NSNumber对象，属性包含intValue值
    相当于 [NSNumber numberWithInt:10];
    包装注意：
 
    如果后面的数据是一个变量，那么这个变量就必须要用小括弧括起来
 
    int num = 10;
    NSNumber *n1 = @(num);
 */

#import <Foundation/Foundation.h>
#import "CZNumber.h"

int main(int argc, const char * argv[]) {
    
    // 案例1
    
//    CZNumber *number1 = [CZNumber numberWithIntValue:10];
//    CZNumber *number2 = [CZNumber numberWithIntValue:20];
//    CZNumber *number3 = [CZNumber numberWithIntValue:30];
//    NSArray *arr = @[number1,number2,number3];
//    CZNumber *num = arr[0];
//    NSLog(@"%d",num.intValue);
//
//
//    NSNumber *num1 = [NSNumber numberWithInt:10];
//    NSNumber *num2 = [NSNumber numberWithInt:20];
//    NSNumber *num3 = [NSNumber numberWithInt:30];
//    NSNumber *floatNum = [NSNumber numberWithFloat:10.3f];
//    NSLog(@"%f",floatNum.floatValue);
//    NSArray *arr1 = @[num1,num2,num3];
//
//    for(NSNumber *num in arr1){
//        NSLog(@"%d",num.intValue);
//    }
    
    
    NSNumber *number1 = @10;
    NSNumber *number2 = @20;
    NSArray *arr1 = @[@10,@20,@30];
    
    int num = 10;
    NSNumber *n1 = @(num);
    return 0;
}
