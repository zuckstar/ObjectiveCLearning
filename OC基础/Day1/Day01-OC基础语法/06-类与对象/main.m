//
//  main.m
//  06-类与对象
//
//  Created by a on 2019/6/14.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
 1. 先有类还是先有对象
    从现实的角度，一定是先有对象再有类。
    从代码的角度，一定是先有类再有对象。
 
 2. 定义类的语法
    a. 直接写在源文件之中，不要写在 main 函数之中
    b. 类的定义分为两个部分：类的声明和类的实现
       类的声明：
        @interface 类名: NSObject{
            这类事物具有的共同的特征，将他们定义为变量。
             数据类型 变量名1;
             数据类型 变量名2;
             数据类型 变量名3;
        }
        功能就是一个方法，将方法的声明写在这里。
        @end
       类的实现
       @implementation 类名
        将方法的实现写在这里。
       @end
    c. 几点注意
        1）类必须要有声明和实现
        2）类名用描述的事物的名称来命名，类名的每个单词的首字母必须要以大写开头
        3）NSObject是什么意思暂时不用管，照写就可以了
        4）用来表示这类事物的共同的特征的变量必须要定义在@interface的大括弧之中。
        5）定义在大括弧之中用来表示这类事物的共同的特征的变量我们叫做属性、或成员变量、或实例变量、或字段
        6）为类定义属性的时候，属性的名词必须要以_开头。
    声明语法是固定的
 
 3. 类的的定义
    1）类的作用
    2）类的三要素
    3）类的定义
 
 4. 类是无法直接使用的，如果非要使用这个类，就必须要先找到这个类中的一个具体的存在，再使用这个对象
 
    类和对象的关系：类中有的东西，这个类的对象也有，对象就可以使用
    这个时候我们就可以使用对象里面的东西
 
    如何去创建一个类的对象？
    语法：类名 *对象名 = [类名 new];
        Person *p1  = [Person new]
        根据Person这个类的模板，创建了一个对象名字叫做p1
        p1对象的特点:
        ->可以直接使用
        ->类中定义的东西这个对象中也有，不会多也不会少
 5. 如何使用对象
    如何访问对象的属性：
    1）默认情况下，对象的属性是不允许被外界直接访问的。如果允许对象的属性可以被外界访问，那么就在声明属性的时候加一个@public关键字。
 
    2）访问对象的属性的方式
        对象名->属性名 = 值;
        对象名->属性名;
 
        (*对象名).属性;
        平时使用的时候使用箭头
 */
#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    @public
    NSString *_name;
    int _age;
    int _yuWen;
    int _shuXue;
    int _yingYu;
}
@end;

@implementation Student
@end;


@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
    float _height;
}

@end

@implementation Person
@end


int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    
//    (*p1)._name = @"jack";
//    (*p1)._age = 18;
//    (*p1)._height = 189.f;
    
    p1->_name = @"jack";
    p1->_age = 19;
    p1->_height = 178.5f;
    NSLog(@"p1对象的_name属性的值是%@",p1->_name);
    
    Student *s1 = [Student new];
    s1->_name = @"小花";
    s1->_age = 17;
    s1->_shuXue = 100;
    
    NSLog(@"s1对象的姓名是%@，年龄是%d,数学成绩是%d",s1->_name,s1->_age,s1->_shuXue);
    
    return 0;
}
