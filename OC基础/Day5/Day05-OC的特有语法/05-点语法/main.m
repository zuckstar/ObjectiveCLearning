//
//  main.m
//  05-点语法
//
//  Created by a on 2019/7/28.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. Java、C# 对象可以使用点语法来访问对象的成员
    OC中也有点语法，OC中也可以使用点语法来访问对象的属性
    但是OC的点语法和JAVA和C#是完全不一样的
 
    OC的对象如果要为属性赋值或者取值，就要调用对应的getter或者setter
 
 2. 使用点语法来访问对象的属性
    语法：
    对象名.去掉下划线的属性名
    p1.name = @"jack"; 会将@"jack"赋值给p1对象的_name属性
    p1.age = 18; 会将18赋值给p1对象的_age属性
    NSString *name = p1.name; 把p1对象_name属性值取出来
 
 3. 点语法的原理
    p1.age = 18; 这句话的本质并不是把18直接赋值给p1对象的_age属性。
    点语法在编译器编译的时候，其实会将点语法转换为调用setter、getter的代码
    1）当使用点语法赋值的时候，这个时候编译器会将点语法转换为调用setter方法的代码
        p1.age = 18 会转换为 [p1 setAge:18]
    2）当使用点语法取值的时候，这个时候编译器会将点语法转换为调用getter方法的代码。
        int age = p1.age 会转换为 int age = [p1 age:10]
 4. 注意
    1）在getter和setter中慎用点语法，因为可能会造成无限递归而程序奔溃
    2）点语法最终在编译器编译的时候会转换为调用setter getter方法的代码
    p1.name = @"jack";
    [p1 setName:@"jack"];
 
    如果我们的setter方法和getter方法的方法名不符合规范，那么点语法就会出问题
 
    3）如果属性没有封装setter方法和getter方法是无法使用点语法的
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
//    [p1 setName:@"jack"];
//    [p1 setAge:18];
//    [p1 setGender:GenderMale];
    
    p1.name = @"jack";
    NSString *name = p1.name;
    p1.age = 18;
    p1.gender = GenderMale;
    
    NSLog(@"%d",p1.age);
    
    return 0;
}
