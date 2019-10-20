//
//  main.m
//  02-作业及结构体与类的区别
//
//  Created by a on 2019/7/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. 人类
    姓名、性别、年龄
 2. 书类
    书名、作者、出版社、出版日期
 3. 学生类
    姓名、性别、年龄、学号、书
    读书
 
 日期：年月日
 -------------
 1. 结构体与类的相同点
    都可以将多个数据封装为一个整体
 
    struct Date
    {
     int year;
     int month;
     int day;
    };
 
     @interface Data : NSObject
     {
         int year;
         int month;
         int day;
     }
     @end;
 
 2. 结构体与类的不同点
    1）结构体只能封装数据，而类不仅可以封装数据还可以封装行为。
    2）结构体变量分配在栈空间（如果是一个局部变量的情况下），而对象分配在堆空间
        栈的特点： 空间相对较小，但是存储在栈中的数据访问的效率更高一些。
        堆的特点：空间相对较大，但是存储在堆中的数据访问的效率相对要低一些。
        存储在栈中的数据访问效率高，存储在堆中的数据访问效率低。
 
 
 3. 应用场景
    1）如果表示的这个实体不仅是由多个数据组成，这个是实体还有行为，只能使用类
    2）如果表示的实体没有行为，光有属性。
        a. 如果属性较少，只有几个的情况下，那么这个时候就定义为结构体，分配在栈，来提高程序运行的效率。
        b. 如果属性较多，不要定义成结构体，因为这样结构体变量会在栈中占据很大一块空间，反而会影响效率。定义为类。
 
    3）赋值
        结构体和类的赋值，结构体的赋值是复制属性，类对象的赋值是赋值地址。
    
 
 
 */
#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    
    Author *a1 = [Author new];
    [a1 setName:@"柴可夫斯基"];
    [a1 setAge:67];
    [a1 setGender:GenderMale];
    
    
    Book *b1 = [Book new];
    [b1 setName:@"钢铁是怎样炼成的"];
    [b1 setPublishDate:(Date){1998,12,12}];
    [b1 setPublisherName:@"人民邮电出版社"];
    
    
    Student *s1 = [Student new];
    [s1 setName:@"小灯泡"];
    [s1 setAge:17];
    [s1 setBook:b1];
    return 0;
}
