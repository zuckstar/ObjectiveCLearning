//
//  Account.h
//  03-微博练习
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 账户类
 * 账号名称
 * 账号密码
 * 账号注册时间（可以用字符串来表示）年月日
 
 结构体和类的区别
 1. 结构体只能封装属性，而类不仅可以封装属性，还可以封装方法
    如果一个封装数据，既有属性，也有行为，只能使用类
 
 
 2. 结构体变量分配在栈，OC对象分配在堆
    栈的空间相对较小，但是存储在栈中的数据访问效率相对较高
    堆的空间相对较大，但是存储在堆中的数据访问效率相对较低
 
    如果一个封装数据只有属性，如果用结构体就会分配在栈，效率就高，如果使用类，对象就分配在堆，效率就低。
    如果定义一个结构体，这个结构体当中有很多个属性，那么这个时候结构体变量在栈中就会占据很大一块空间，反而会降低效率。
 
    什么时候使用结构体 ： 1）封装数据只有属性 2）属性较少  5个以下
    什么时候使用类：1）封装数据既有属性也有行为 2）只有属性但是属性较多
 
 
 3. 结构体赋值是直接赋的值，而对象的指针赋值的是对象的地址
 */
typedef struct
{
    int year;
    int month;
    int day;
}MyDate;

@interface Account : NSObject
//账户名称
@property(nonatomic,retain)NSString *username;
//账户密码
@property(nonatomic,retain)NSString *password;
//注册的时间
@property(nonatomic,assign)MyDate registDate;
@end
