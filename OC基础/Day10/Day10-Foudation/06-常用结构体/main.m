//
//  main.m
//  06-常用结构体
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//



/*
 1. 定义一个变量来保存按钮在iOS界面上的位置
    我们定义一个结构体来表示控件在界面上的坐标。
 
    typedef struct{
        int x;
        int y;
    }MyPoint;
 
    MyPoint p1 = {20,30};
 
    在Foundation框架中，已经定义了一个结构体CGPoint
 
     struct CGSize {
        CGFloat width;
        CGFloat height;
     };
 
 
    CGFloat 类型的实际上就是一个double类型的。
 
    这个结构体一般情况下是用来表示坐标的。用来表示控件在界面上的位置。
    CGPoint与NSPoint都是同一个结构体，只不过定义两个名字。
    typedef CGPoint NSPoint;
 
 
 
    声明CGPoint变量并初始化的方式
 1）CGPoint p1;
    p1.x = 20;
    p1.y = 30;
 
 2) CGPoint p1 = {20,30};
 
 3) CGPoint p2 = {.x = 20,.y=30};
 
 4) Foundation框架中提供的函数来快速地创建一个CGPoint变量
 
    a. CGPoint p3 = CGPointMake(20, 30);
    b. CGPonnt p4 = NSMakePoint(20, 30);
 
 
 2. 声明一个变量来保存某个控件的大小
    1个控件的大小，无非就是两个数据，宽度，高度。
    Foundation框架中已经定义好了一个结构体叫做CGSize
 
     struct CGSize {
        CGFloat width;
        CGFloat height;
     };
     typedef struct CG_BOXABLE CGSize CGSize;
 
    typedef CGSize NSSize;
    NSSize 和 CGSize 是同一个结构体，只不过定义了两个名称。
 
    CGSize 结构体一般情况下用来表示空间的大小。
 
    CGSize 声明并初始化的方式：
 
 
     1)CGSize size1 = {100,30};
     2) CGSize size2;
        size2.width =100;
        size2.height=100
     3)CGSize size3 = {.width = 100,.height = 30};
     4)Foundation框架中提供的函数来快速地创建一个CGSize变量
 
         CGSize s1 = CGSizeMake(100, 30);
         CGSize s2 = NSMakeSize(100, 30);
 
 3. CGRect  和  NSRect
    这个是定义在Foundation框架中的一个结构体。
     NSRect 和 CGRecot 是一样的。
 
     struct CGRect {
 
        CGPoint origin;
        CGSize size;
 
     };
     typedef struct CG_BOXABLE CGRect CGRect;
 
    所以这个结构体变量一般情况下存储一个控件的位置和大小。
    CGRect的声明和初始化。
    1）
         CGRect rect;
         rect.origin.x = 20;
         rect.origin.y = 40;
         rect.size.width = 100;
         rect.size.height = 30;
 
         当结构体作为另外一个结构体或者对象的一个属性的时候，不能直接{}赋值。
         CGRect rect1;
         rect1.origin = (CGPoint){10,20};
         rect1.size = (CGSize){100,30};
 
    2）也提供了函数来快速地创建CGRect变量
         CGRect rect2 = CGRectMake(10, 20, 100, 30);
         CGRect rect3 = NSMakeRect(10, 20, 100, 30);
 
 使用的时候，CGSize NSSize，建议使用CGSize
 
 */
#import <Foundation/Foundation.h>
#import "CGView.h"

int main(int argc, const char * argv[]) {
    
//    CGPoint p1 = {20,30};
//    CGPoint p2 = {.x = 20,.y=30};
//    CGPoint p3 = CGPointMake(20, 30);
//    CGPonnt p4 = NSMakePoint(20, 30);
    
    
//    CGSize size1 = {100,30};
//    CGSize size2;
//    size2.width =100;
//    size2.height=100
//    CGSize size3 = {.width = 100,.height = 30};
    
//    CGSize s1 = CGSizeMake(100, 30);
//    CGSize s2 = NSMakeSize(100, 30);
   
    
//    完整案例1
//    CGView *view1 = [[CGView alloc] init];
//    view1.point = CGPointMake(0, 0); 
//    view.size = CGSizeMake(1920, 1080);
//
//    CGButton *btn = [[CGButton alloc] init];
//    btn.point = CGPointMake(100,100);
//    btn.size = CGSizeMake(100, 30);
//    btn.text = @"点击我";
//
//    [view1.subViews addObject:btn];
    
    
//    CGRect rect;
//    rect.origin.x = 20;
//    rect.origin.y = 40;
//    rect.size.width = 100;
//    rect.size.height = 30;
//
//    CGRect rect1;
//    rect1.origin = (CGPoint){10,20};
//    rect1.size = (CGSize){100,30};
    
    
//    CGRect rect2 = CGRectMake(10, 20, 100, 30);
//    CGRect rect3 = NSMakeRect(10, 20, 100, 30);
    
    CGButton *btn = [CGButton new];
    btn.frame = CGRectMake(10, 10, 100, 30);
    
    return 0;
}
