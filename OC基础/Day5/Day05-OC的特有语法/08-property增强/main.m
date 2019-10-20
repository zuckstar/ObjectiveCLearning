//
//  main.m
//  08-property增强
//
//  Created by a on 2019/7/29.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
1. @property 只是生成getter setter 的声明
   @synthesize是生成getter setter 的实现
   这种写法是Xcode 4.4 之前的写法，从Xcode 4.4 以后，Xcode 对@property做了一个增强
 
2. @property 增强
    只需要写一个@property，编译器就会自动地做
    1）自动生成私有属性
    2）自动生成getter和setter的声明
    3）自动生成getter和setter的实现
 
    做的事情
    1）自动的生成一个私有属性，属性的类型和@property类型一致， 属性的名称和@property的名称一致，属性的名称自动地加一个下划线
    2）自动地这个属性的getter和setter方法的声明
    3）自动生成getter和setter的实现
        setter 的实现：直接将参数的值赋值给自动生成的私有属性
        getter 的实现：直接返回生成的私有属性的值
 3. 使用注意
    1）@property的类型一定要和属性的类型一致
        名称要和属性的名称一致，只是去掉下划线
 
    2）也可以批量声明相同类型的@property
 
    3）@property 生成的方法实现没有做任何的逻辑验证
        setter： 直接赋值
        getter：直接返回
 
        可以重写setter和getter函数，如果重写了setter 还会自动生成getter
        如果同时重写setter和getter函数，@property就不会自动生成私有属性了 _name
 
 4. 如果你想为类写一个属性，并且为这个属性封装getter，setter
    一个@property就搞定了。
 
 5. 继承
    父类的@property一样可以被子类继承
    @property生成属性是私有的，在子类的内部无法直接访问生成的私有属性，但是可以通过setter getter来访问。 
 
 
 */
#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    Student *s1 = [Student new];
    s1.name = @"abc";
    
    NSLog(@"%@",s1.name);
    return 0;
}
