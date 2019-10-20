//
//  main.m
//  Day02-类与对象
//
//  Created by a on 2019/6/25.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
    1. OC在C的基础上
        a. 增加了面向对象的语法
        b. 将C语言中复杂的繁琐的语法封装的更为简单
    2. 更为简单
        a. #import 指令
           同一个文件，无论import多少次，最终都只会包含一次，不会出现重复包含的情况。
        b. NSLog 函数
           a. 自动换行
           b. 会输出一些其他的调试信息。（时间、进程ID号）
        c. NSString
            a. OC字符串常量和C的字符串常量（字符串常量前面必须要加一个前缀@，这才是OC的字符串，NSString只能存储OC字符串常量）
               NSString *str = @"jack";
        d. 数据类型.
            BOOL    YES:NO
            BOOLEAN true:false
 
            class
            id
            nil
            SEL
            block

    3. 面向对象的语法
        1). 面向过程和面向对象的区别
        2). 面向对象的最大优点
        3). 类和对象
        4). 类和对象之间的关系
        5). 设计类的三要素
            类名、特征、行为
        6). 名词提炼法
    4. 类和对象
        1）定义类
            位置
            语法
            类的声明
             @interface 类名 : NSObject
             {
                属性
             }
             方法的声明
             @end
 
             类的实现
             @implementation 类名
             方法的实现
             @end
        2）方法的声明和实现
            a. 声明的位置：在@interface的大括弧的外面
            b. 实现的位置：在@implementation 之中
            c. 实现的语法：将方法的声明拷贝到@implementation之中，追加大括弧，将方法的实现代码写在大括弧之中就可以了
 
            无参数的方法的声明
            -(返回值类型)方法名:
 
            1个参数的方法的声明
            -(返回值类型)方法名WithXXX:(参数类型)参数名;
 
            多个参数的方法
            -(void)方法名WithXXX:(参数类型)参数名 andXXX:(参数类型)参数名;
    5. 对象的创建
        类名 *对象名 = [类名 new];
        Person *p1 = [Person new];
        对象的特点:对象拥有类中定义的所有成员
                 对象中的成员可以直接访问
    6. 访问对象
    7. 注意点
        同一个类可以创建多个对象，并且这些对象之间没有关系
        在方法中直接访问属性，访问的就是当前对象的属性
 
 */
#import <Foundation/Foundation.h>

@interface Phone : NSObject
{
    @public
    NSString *_color;
    float _size;
    NSString *_cpu;
}
-(void)aboutPhone;
-(void)callWithNumber:(NSString *)number;
-(void)sendWithMessage:(NSString *)msg toNumber:(NSString *)number;
@end

@implementation Phone
-(void)aboutPhone{
    NSLog(@"颜色:%@ 大小:%f CPU型号%@",_color,_size,_cpu);
}
-(void)callWithNumber:(NSString *)number
{
    NSLog(@"正在呼叫 %@",number);
    NSLog(@"对不起，你呼叫的电话已经停机");
}
-(void)sendWithMessage:(NSString *)msg toNumber:(NSString *)number
{
    NSLog(@"正在向%@发送信息给:%@",msg,number);
    NSLog(@"发送成功！");
}

@end
int main(int argc, const char * argv[]) {
    Phone *iPhone = [Phone new];
    iPhone->_color = @"玫瑰金";
    iPhone->_cpu = @"A9";
    iPhone->_size = 4.7f;
    [iPhone aboutPhone];
    [iPhone callWithNumber:@"110"];
    [iPhone sendWithMessage:@"今晚老地方见" toNumber:@"110"];
}















