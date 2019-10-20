//
//  main.m
//  07-@sythesize
//
//  Created by a on 2019/7/28.
//  Copyright © 2019 Jamie. All rights reserved.
//
/*
 1.@property 只能生成getter和setter方法的声明
    实现还要我们自己来

 2. @sythesize
    1) 作用:自动生成getter和setter方法的实现，所以应该写在类的实现之中
    2）语法：
        @synthesize @property名称
        @property int age
        @synthesize age
    3）@synthesize做的事情
        a. 生成一个【真私有】的属性，属性的类型和@synthesize对应的@property类型一致
           属性的名字和@synthesize对应的@property的名字一致
           实现
            @implementation Person
            {
                int age;
            }
        b. 自动生成setter方法的实现
            实现的方式，将参数直接赋值给自动生成的那个私有属性。并且没有做任何的逻辑验证。
        c. 自动生成getter方法的实现
            实现的方法，将生成的私有属性的值返回，即返回它自动生成的那个属性的值。
 
 3. 希望@@synthesize 不要去自动生成的私有属性了
    getter setter实现中操作我们已经写好的属性就可以了。
    语法：
    @synthesize @property名称 = 已经存在的属性名；
    @synthesize age = _age；
        1）不再生成私有属性
        2）直接生成getter和setter的实现
        setter的实现：把参数的值直接赋值给制定的属性
        getter的实现：直接返回指定的属性的值 
 4. 注意：
    1）如果直接写一个@sythesize
        @sythesize name
    2）如果指定操作的属性
        @sythesize name = _name
    3）生成的setter方法实现中是没有做任何逻辑验证的，是直接复制的。
       生成的getter方法中是直接返回值的
    4）如果setter、getter有自己的逻辑验证，那么就在类的实现当中重写就可以了
 
 5. 批量声明
    1）如果多个@property类型一致，可以批量声明。@property int height,weight;
    2）@sythesize 也可以批量声明。
    @synthesize age = _age,name = _name, weight= _weight,height = _height;
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
    Person *p1 = [Person new];
    p1.age = 3;
    NSLog(@"%d",p1.age);
    return 0;
}
