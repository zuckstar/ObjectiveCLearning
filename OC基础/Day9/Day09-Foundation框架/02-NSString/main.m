//
//  main.m
//  02-NSString
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 框架：就是系统（苹果）或者第三方（民间高手或公司）事先写好了一些很牛叉功能的类。
    把这些类交给我们使用，这些类的集合我们叫做框架。
 
    框架中有很多很多功能相似的类，函数库
 
    Foundation 框架：是一个包，这里面有很多类，还有很多的函数，定义了一些数据类型。
                    这个框架中的类都是一些最基础的类。NSString NSObject
                    其他的框架都是基于Foundation框架的。
    UIKit
    AVFoundation
 
 2. Foundation 框架中最常用的类。简单到爆，量大

 3. NSString
    1） NSString 是一个数据类型，保存OC字符串的
        NSString的本质是一个类。
 
        所以标准的创建NSString对象的方式i：
        NSString *str1 = [NSString new];
        NSString *str2 = [[NSString alloc] init];
        NSString *str3 = [NSString string];
 
        使用这种方式创建的字符串是一个空的字符串。@""
 
        NSString对象就是用来存储字符串的。
 
    2）NSString 是 OC 当中最常用的一个类了。所以OC提供了一种更为快速地创建字符串对象的方式。
        使用前缀@符号
        @"jack"; 本质上，这是一个NSString对象，这个NSString对象中存储的是@"jack"这个字符串
 
        NSString *str1 = @"rose";
 
        1）@"rose"本质上是一个NSString对象，这个对象中存储的是字符串"rose"
        2）将字符串对象的地址返回赋值给str1指针
 
        格式控制符，%p打印指针变量的值，打印地址。
                  %@打印指针指向的对象。
 
 4. NSString字符串的恒定性
    1）当我们使用简要的创建字符串对象的时候,也就是使用1个OC字符串常量来初始化字符串指针的时候。
        这个字符串对象是存储在常量区的（数据段）的。
 
        NSString *str = @"jack";
 
        当我们调用NSString的类方法来创建对象的时候。
        NSString *s = [NSString stringWithFormat:@"jack"];
        NSString *s2 = [NSString new];
        创建的字符串对象是存储在堆区。
 
    2）当内存中创建一个字符串对象后，这个字符串对象的内容就无法更改。
       当我们重新为字符串初始化值的时候，并不是原来的字符串对象，而是重新地创建一个字符串对象，将字符串对象的地址重新赋值给字符串指针变量。
 
    3)当系统准备要在内存中创建字符串对象的时候，会先检查内存中是否有相同内容的字符串对象。
        如果有，直接指向。如果没有，才会重新创建。
 
    4)存储在常量区的数据不会被回收，所以存储在常量区的字符串对象也不会被回收。
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
//    案例1：NSString 声明的几种方式
//    NSString *str1 = [NSString new];
//    NSString *str2 = [[NSString alloc] init];
//    NSString *str3 = [NSString string];
//    NSString *str4 = @"jack";
//    NSLog(@"str4 = %p",str4);
    
//    案例2：两种方式创建的字符串对象存储的位置不同，字面量的方式是存储在数据段（常量区），new的方式是存储在堆区
//    可从内存地址的差异性上来看
//    NSString *str1 = @"jack";
//    NSString *str2 = [NSString new];
//    NSLog(@"str1 = %p \n str2 = %p",str1,str2);
    
//    案例3：
//    NSString *str1 = @"jack";
//    NSLog(@"%p",str1);
//    str1 = @"rose";
//    NSLog(@"%p",str1);
//
//    NSString *str2 = @"jack";
//    NSLog(@"%p",str2);
    
//    案例4,堆中的字符串对象也符合只要该字符串变量在堆中存在，就不会重新创建该对象，所以他们(相同的字符串对象)的地址是一样的
//    NSString *str1 = [NSString new]; // @""
//    NSString *str2 = [NSString new]; // @""
//
//    NSLog(@"%p == %p",str1, str2);

    
//    案例5
//    常量区的对象不会被回收
//    NSString *str1 = @"jack";
//    NSLog(@"%p",str1);
//    str1 = nil;
//    NSString *str2 = @"jack";
//    NSLog(@"%p",str2);
        NSString *str1 = [NSString new]; // @""
        NSLog(@"%p",str1);
        NSString *str2 = [NSString new]; // @""
        NSLog(@"%p",str1);
    
    
    return 0;
}
