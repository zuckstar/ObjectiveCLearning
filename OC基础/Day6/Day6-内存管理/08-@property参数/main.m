//
//  main.m
//  08-@property参数
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. 在MRC开发模式下，一个类的属性如果是1个OC对象类型的，那么这个属性的setter方法就应该按照下面的格式写
 -（void）setCar:(Car *)car
 {
    if(_car != car)
    {
        [_car release];
        _car = [car retain];
    }
 
 }
 
 还要重写dealloc方法
 -(void)dealloc
 {
    [_car release];
    [super dealloc];
 }
 非OC对象类型的，无需做MRC回收处理，存储在栈的值系统会自动回收。
 2. @property
 
    1)作用
    a. 自动生成私有属性
    b. 自动生成这个属性的getter setter的声明
    c. 自动c生成这个属性的getter setter方法的实现
 
    特别播报：
    生成的setter方法的实现当中，无论是什么类型的，都是直接赋值
 
 
 3. @property的参数
    1）@property可以带参数的
        @property（参数1，参数2，参数3）数据类型 名称；
    2）介绍下@property的四组参数
        a. 与多线程相关的两个参数
            atomic、nonatomic
        b. 与生成的setter方法实现相关的参数
            assign、retain
        c. 与生成只读、读写相关的参数
            readonly、readwrite
        d. 是与生成的getter setter方法名字相关的参数
            getter、setter
 
 4. 介绍与多线程相关的参数
    atomic:默认值。如果写atomit，这个时候生成的setter方法的代码就会被加上一把安全锁
            特点，安全、效率低
    nonatomic:如果写 nonatomic，这个时候生成的setter的代码就不会加线程安全锁
            特点，不安全，效率高
 
    建议：需要效率，选择使用nonatomic，在没有讲解多线程的知识以前，通通使用nonatomic
 
 5. 与生成的setter方法的实现相关的参数
    assign：默认值 生成的setter方法的实现就是直接赋值
    retain：生成的setter方法的实现就是标准的MRC内存管理代码，也就是先判断新旧对象是否为同一个对象，如果不是就 release 旧的，retain新的
    当属性的类型是OC对象类型的时候，就使用 retain
    当属性的类型是非OC对象的时候，使用assign
 
    千万注意：
    retain参数，只是生成setter方法为标准的MRC标准的MRC内存管理代码，不会自动地在deallocd中生成release代码
    所以，我们还要自己手动地在dealloc中release
 
 6. 与生成只读和读写的封装
    readwrite：默认值、代表同时生成getter和setter
    readonly：只会生成getter，不会生成setter
    
 
 7. 生成 getter、setter方法名称相关的参数
    默认情况下，@property生成的getter和setter方法的名字都是最标准的名字
    @property(nonatomic,assign) int age;
    -(void)setAge:(int)age;
    -(int)age;
 
    其实我们可以通过参数来指定@property生成的方法的名字
 
    getter = getter方法名字，用来指定@property生成的getter方法的名字
    setter = setter方法名字，用来指定@property生成setter方法的名字，！！注意，setter方法是带参数的，所以要加一个：
 
    如果使用 getter 和 setter 修改了生成的方法的名字，在使用点语法的时候，编译器会转换为调用修改后对应变量的setter，getter名字的方法
 
    因为默认情况下生成的方法的名字已经是最标准的名字了，所以一般情况下不要去改
 
    1. 无论什么情况都不要改setter方法的名字，因为默认情况下生成的名字，就已经是最标准的了。
    2. 什么时候修改getter方法的名字，当属性的类型是一个BOOL类型的时候，就修改这个getter的名字以is开头，提高代码的可读性
 
 
    ---总结---
    1 与多线程相关的参数，用nonatomic
    2 与生成的setter方法实现相关的参数
        属性的类型是OC对象的时候，使用retain
        属性的类型是非OC对象的时候，使用assign
    3 只读，读写
        如果你希望生成的封装是只读封装，那么就使用readonly
        如果希望读写封装 readwrite
 
    4   1. 无论什么情况都不要改setter方法的名字，因为默认情况下生成的名字，就已经是最标准的了。
        2. 什么时候修改getter方法的名字，当属性的类型是一个BOOL类型的时候，就修改这个getter的名字以is开头，提高代码的可读性
 
    5 使用参数的注意事项，同一组的参数只能使用一个(getter 和 setter的重命名参数除外)，参数的顺序可以随意
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    
    return 0;
}
