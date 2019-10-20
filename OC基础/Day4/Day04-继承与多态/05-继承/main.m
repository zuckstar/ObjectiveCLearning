//
//  main.m
//  05-继承
//
//  Created by a on 2019/7/14.
//  Copyright © 2019年 Jamie. All rights reserved.
//


/*
 1. 在创建类模块的时候，指定父类，Xcode 就会自动地帮助你完成一系列繁琐的事。
 
 2. 继承是类在继承，而不是对象在继承
    子类从父类继承，子类就拥有了父类中定义的所有成员，只是类继承
 
    我们创建对象，对象与对象之间毫无关系。
 
 3. 什么时候应该使用继承？
 
    如果发现另外一个类中的成员我也想有，那么这个时候就可以使用继承。
    千万不要为了继承而去继承，满足继承的关系 is a 凡是满足 is a 关系的类就可以拥有继承
    当A类是一个B类的时候，那么A类就可以从B类继承。
 
 4. 如果有一个成员不是所有的子类都拥有，那么这个成员就不应该把它定义父类中
    因为一旦定义在父类之中，所有的子类全部都有这个成员。
    例如鸟类定义了飞的方法不合理，因为不是所有鸟类都会飞，例如企鹅、鸵鸟
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    [p1 setName:@"杰克"];
    [p1 setAge:18];
    
    Student *s1 = [Student new];
    NS
    return 0;
}
