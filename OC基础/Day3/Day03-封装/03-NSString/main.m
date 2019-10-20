//
//  main.m
//  03-NSString
//
//  Created by a on 2019/6/29.
//  Copyright © 2019年 Jamie. All rights reserved.
//

/*
 1. NSString 是一个数据类型，用来保存OC的字符串的
 2. NSString 是 Foundation 框架中的一个类
    作用：存储OC字符串的
    所以，OC中的字符串本质上是用NSString对象来存储的。
 3. 其实完整的标准的创建NSString对象的方式
    NSString *str = [NSString new];
    NSString *str1 = [NSString string];
    这种方式创建的字符串是空字符串 @""
 
    但是NSString是我们最常用的一个对象，所以OC使用了一种更为简单的方式来使用字符串对象
    直接使用@符号来表示一个OC字符串
    @"jack" 这个其实本质上是一个NSString对象
 
    %p 打印的是指针变量的值
    %@ 打印的是指针变量指向的对象
 
 4. NSString 最常用的类方法
    1）instanceType 作为返回值代表返回的是当前这个类的对象
    +(instanceType)stringWithUTF*String:...将C语言的字符串转换为OC字符串对象
    2）+ (instancetype)stringWithFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2); 使用频率100%
        最大的作用：拼接一个字符串对象。使用变量或者掐数据拼接成OC字符串
 
 
    3）length 方法，返回值为NSUInteger其实就是 unsigned long,得到字符串字符的个数，可以处理中文
    4）得到字符串中指定下标的字符。[str characterAtIndex:2];返回值是unichar 其实就是 unsigned short 占据两个字节
       如果要输出unichar变量的值使用%C(大写的C)
    5）判断两个字符串是否相等
        a.判断两个字符串的内容是否相同，不要用 == 去判断，因为这样有可能会出问题
        b.判断相等的方式[str isEqualToString:str1]
    6）比较字符串的大小 NSComparisonResult r = [str1 compare:str2];
        可以使用 int 来接收  结果是 -1 小于 0 等于 1 大于
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    NSString *str = @"abcdef";
    NSString *str1 = [NSString string];
    // 字符串拼接
    NSUInteger len = [str length];
    str1 = [NSString stringWithFormat:@"大家好，我叫%@，我今年%d岁",@"小东",19];
    NSLog(@"%@",str1);
    NSLog(@"len = %lu",len);
    unichar ch = [str characterAtIndex:1];
    NSLog(@"ch = %c",ch);
    
    //判断字符是否相等
    if([str isEqualToString:str1]){
        //相等
    }
    
    
    NSString *stra = @"China";
    NSString *strb = @"Japan";
    
    int r = [stra compare:strb];
    NSLog(@"%d",r);
    
    return 0;
}
