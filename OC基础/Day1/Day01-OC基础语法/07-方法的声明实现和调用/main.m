//
//  main.m
//  07-方法的声明实现和调用
//
//  Created by a on 2019/6/14.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
1. 定义一个类
 分为类的声明和实现
 @interface 类名 : NSObject
 {
    属性：属性表示类的特征。
 }
 @end
 方法的声明;方法表示类的功能。
 @implementation 类名
 方法的实现;
 @end
 
 2. 一类事物无尽具有相同的特征还具有相同的行为
 
 行为就是一个功能功能，C语言中使用函数来表示一个功能。
 OC的类具有的行为，我们使用方法来表示。
 
 方法和函数都表示一个功能。
 
 3. 无参数的方法。
 
    1）声明
        a.位置：在@interface的大括弧的外面。
        b.语法：
            -(返回值类型)方法名称;
            -(void) run;
            表示声明了一个屋无返回值并且无参数的方法，方法的名字叫做run
    2）实现
        a.位置：在@implementation之中实现
        b.实现的语法：将方法的声明拷贝到@implementation中，去掉分号，追加大括弧一对，将方法实现的代码写在大括弧之中。
 
    3）调用
        a.方法是无法直接调用的，因为类是不能直接使用的，必须要先创建对象。
          那么这个对象中就有类中的属性和方法了，就可以调用对象的方法了。
        b.调用对象的方法
            [对象名 方法名];
 4. 带一个参数的方法。
 
 1）声明
    a.位置：在@interface的大括弧的外面。
    b.语法：
        -(返回值类型)方法名称:(参数的类型)形参的名称;
        -(void) eat:(NSString *)foodName;
        定义了一个方法，这个方法没有返回值。
        这个方法的名字叫做eat:
        这个方法有一个参数，类型是 NSString *类型的，参数的叫做foodName
    2）实现
        a.位置：在@implementation之中实现
        b.实现的语法：将方法的声明拷贝到@implementation中，去掉分号，追加大括弧一对，将方法实现的代码写在大括弧之中。
 
 3）调用
     a.方法是无法直接调用的，因为类是不能直接使用的，必须要先创建对象。
        那么这个对象中就有类中的属性和方法了，就可以调用对象的方法了。
 
     b.调用对象的方法
        [对象名 方法名:实参];
        [p1 eat:@"红烧排骨"];
 
    方法头中的数据类型都要用一个小括号括起来
 
 5. 带多个参数的方法。
 
 1）声明
    a.位置：在@interface的大括弧的外面。
    b.语法：
    -(返回值类型)方法名称:(参数的类型)形参的名称 :(参数类型)参数名称2 :(参数类型)参数名称3;
    -(int) sum:(int)num1 :(int) num2;
    表示声明了一个方法，这个方法的返回值类型是int类型的。
    方法的名称叫做 sum: :
    有两个参数，参数类型都是int类型，参数名称叫做 num1 num2
 
 2）实现
 -(int) sum:(int)num1 :(int) num2{
     int num3 = num1 + num2;
     return num3;
 }
 
 3）调用
    调用多个参数的语法
    [对象名 方法名:实参1 :实参2 :实参3]
 
 
 6. 带参数的方法声明的规范：
 1）如果方法只有一个参数。要求最好最好方法的名字叫做 xxxWith:
    eat
    eatWith
    eatWithFood
    这样写的话，那么调用方法的时候看起来就像一条完整的语句，提高了我们代码的可读性
 2）如果方法有多个参数。建议这个方法名称：
    方法名With:(参数类型)参数名称 and:(参数类型)参数名称 and:(参数类型)参数名称：
 
 */
#import <Foundation/Foundation.h>
@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
-(void) run;
-(void) eat:(NSString *)foodName;
-(int) sum:(int)num1 :(int) num2;
-(void) drinkWith:(NSString *)foodName;
-(int)sumWith:(int)num1 and:(int)num2;
@end

@implementation Person
-(void) run
{
    NSLog(@"测试");
}
-(void) eat:(NSString *)foodName
{
    NSLog(@"食物%@",foodName);
}
-(int) sum:(int)num1 :(int) num2{
    int num3 = num1 + num2;
    return num3;
}
-(void) drinkWith:(NSString *)foodName{
    NSLog(@"喝%@",foodName);
}
-(int) sumWith:(int)num1 and:(int)num2{
    int sum = num1 + num2;
    return sum;
}
@end
int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    [p1 run];
    [p1 eat:@"红烧排骨"];
    [p1 drinkWith:@"cola"];
    
    
//    int sum = [p1 sum:10 :20];
//    NSLog(@"sum = %d",sum);
    int sum = [p1 sumWith:3 and:2];
    NSLog(@"sum = %d",sum);
    return 0;
}
