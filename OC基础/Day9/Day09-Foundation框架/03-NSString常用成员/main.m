//
//  main.m
//  03-NSString常用成员
//
//  Created by a on 2019/10/17.
//  Copyright © 2019 Jamie. All rights reserved.
//
/*
 1. NSString 是一个类，那么肯定其中有很多方法

 2. 使用频率最高的几个方法
 
    1）使用拼接的方式创建一个NSString对象
 
        + (instancetype)stringWithFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);
 
         int age = 10;
         NSString *str = @"jack";
         NSString *newStr = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁", str,age];
         NSLog(@"newStr = %@",newStr);
 
    2）得到字符串长度
 
       @property (readonly) NSUInteger length;
 
       NSString *str = @"jack";
       NSUInteger len = str.length;
 
    3）得到字符串中指定下标的字符
        - (unichar)characterAtIndex:(NSUInteger)index;
 
        返回值是unichar类型的，要打印的话使用%C
 
         NSString *str = @"jack i love you";
         unichar ch = [str characterAtIndex:2];
         NSLog(@"%C",ch);
 
    4) 判断两个字符串内容是否相同
 
        a. 能否使用 == 来判断两个OC字符串的内容是否相同
 
        b. == 运算符的作用：比较左右两边的数据是否相同
            BOOL res = 10 == 10; 这个时候直接比较的是左右两边的数据是否相同。
            int a = 10; int b = 10; BOOL res = a == b；这时候比较的是左右两边变量的值是否相同
            int *p1 = &a; int *p2 = &b; BOOL res = p1 == p2; 这时候比较的是左右两边变量（指针变量的值也就是地址）是否相同。
 
        c. 所以，如果我们要比较的是两个OC的字符串的内容是否相同，不能使用 == 去比较，因为 == 比较的是字符串指针变量的值，我们要比的是两个字符串指针指向的字符串对象的内容是否相同。
 
 
    5) 将C语言的字符串转换为OC字符串对象（互转）
        把 C 字符串转成 OC 字符串
        + (nullable instancetype)stringWithUTF8String:(const char *)nullTerminatedCString;
 
        把OC字符串转成C字符串
        @property (nullable, readonly) const char *UTF8String NS_RETURNS_INNER_POINTER;
 */
#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[]) {
    
//    使用拼接的方式创建一个NSString对象
//    int age = 10;
//    NSString *str = @"jack";
//    NSString *newStr = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁", str,age];
//    NSLog(@"newStr = %@",newStr);
//
//    获取字符串长度
//    NSUInteger len = newStr.length;
//    NSLog(@"len = %lu",len);
    
    
//    得到字符串中指定下标的字符
//    NSString *str = @"jack i love you";
//    unichar ch = [str characterAtIndex:2];
//    NSLog(@"%C",ch);
    
    
    
//    字符串比较，不能直接用 == 来比较
//    NSString *str1 = @"jack";
//    NSString *str2 = @"jack";
//    NSString *str3 = [NSString stringWithFormat:@"jack"];
//
//    BOOL res = str1 == str2;
//    BOOL res2 = str1 == str3;
//    NSLog(@"%@",res == YES?@"YES":@"NO");
//    NSLog(@"%@",res2 == YES?@"YES":@"NO");
//
//
//    BOOL res3 = [str1 isEqualToString:str3];
//    NSLog(@"%@",res3 == YES?@"YES":@"NO");
    
    
//    Person *p1 = [Person new];
//
//    让用户从控制台输入一个字符串
//    把OC字符串转成C字符串
//    NSString *str = @"jack";
//    const char *s = str.UTF8String;
//    把 C 字符串转成 OC 字符串
//    char *str = "jack";
//    NSString *strOC = [NSString stringWithUTF8String:str];
//    NSLog(@"%@",strOC);
    
    return 0;
}
