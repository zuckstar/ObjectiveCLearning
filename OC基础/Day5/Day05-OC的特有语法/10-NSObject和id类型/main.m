//
//  main.m
//  10-NSObject和id类型
//
//  Created by a on 2019/8/3.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. NSObject
    是OC中所有类的基类，根据里氏替换原则，NSObject 指针可以指向任意的OC对象。
    所有NSObject指针是一个万能指针。可以指向任意的OC对象
 
    缺点：如果要调用指向的子类对象的独有的方法，就必须要做类型转换。
 
 2. id指针
    是一个万能指针，可以指向任意的OC对象。
    1）id是一个typedef自定义类型，在定义的时候已经加了*了
        所以声明id指针的时候不需要再加*了
    2）id指针是一个万能指针
 
 3.NSObject 和 id 的异同
    相同点：万能指针，都能指向OC对象
    不同点：通过 NSObject 指针去调用对象的方法的时候，编译器会做编译检查。
           通过id类型指针去调用对象的方法的时候，编译器直接通过。无论你调用什么方法。
 
    注意点：id指针只能调用对象的方法，不能使用点语法，如果使用点语法，就会直接报编译错误。
    如果我们要声明一个万能指针，千万不用使用NSObject而是使用id
 
 4. 父类中的类方法创建一个父类对象返回
    1）如果返回值写为父类类型的，那么子类调用这个方法得到的就是父类指针
        解决的方法：把返回值改为id类型
    2）方法内部创建对象的时候，不要写死，因为写死，创建的对象就固定了
        我们希望哪一个类来调用这个方法，就创建那一个类的对象
        把类名写为self，哪一个类来调用这个方法，self就是哪一个类
 
    3）方法的返回值是id类型，问题是任意指针都可以接收方法的返回值，编译器不报错
 
        如果方法的返回值是instancetype
        代表方法的返回值是当前这个类的对象
 
    4）使用建议
        1）如果方法内部是在创建当前类的对象，不要写死成类名，[类名 new]
            而是用self代替类名
        2）如果方法的返回值是当前类的对象，也不要写死了，而是写instancetype
 
    5）id和instancetype的区别
        1）instancetype只能作为方法的返回值，不能在别的地方去使用
            id既可以声明指针变量，也可以作为参数，也可以作为返回值。
        2）instancetype 是一个有类型的，代表当前类的对象。
            id是一个无类型的指针，仅仅是一个地址。没有类型
             
 
 */
#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    NSObject *obj1 = [Person new];
    NSObject *obj2 = [Student new];
    
    [(Person *)obj1 sayHi];
    [(Student *)obj2 study];
    
    Person *p1 = [Person new];
    p1.name = @"jack";
    
    
    id id1 = [Person new];
    id id2 = [Student new];
    id id3 = @"jack";
    
    [id1 sayHi];
    [id1 setName:@"jack"];
    
    Person *p2 = [Person person];
    
    
    return 0;
    
    
    
    
    
    
    
    
    
    
    
}
