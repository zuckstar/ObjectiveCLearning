//
//  main.m
//  07-多文件开发
//
//  Created by a on 2019/6/25.
//  Copyright © 2019年 Jamie. All rights reserved.
//

/*
 1. 所有的类都是写在main.m这个源文件之中的
    后果：后期的维护就非常的不方便。也不利于团队开发
 
 2. 推荐的方式
 
    把一个类写在一个模块之中，而一个模块至少包含两个文件
    .h 头文件
        写类的声明,因为要用到Foundation框架中的类 NSObject 所以在这个头文件中要引入Foundation框架的头文件
        然后将类的声明的部分写在.h头文件中
    .m 实现文件
        先引入这个模块的头文件，这样才会有类的声明
        再写上类的实现。
 
    如果要用到类，只需要引入这个类模块的头文件就可以直接使用了
 
 3. 添加类模块更简洁的方式
    NewFile 选择Cocoa Class 自动生成模块文件 .h .m
    自动将类的声明和实现写好
 
    填写的名称是模块文件的名称，类名是可以自己再改的。
    但是建议模块的文件名和模块中的类名保持一致，这样方便代码的管理
 
 4. 当我们要使用这个类的时候，需要先将这个类的头文件先引进来，才可以使用。
    
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    [p1 sayHi];
    Dog *d1 = [Dog new];
    [d1 sayHi];
    return 0;
}
