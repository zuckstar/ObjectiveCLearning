//
//  main.m
//  12-构造方法
//
//  Created by a on 2019/8/4.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. 创建对象，我们之前说
    类名 *指针名 = [类名 new];
    new 实际上是一个类方法。
    new 方法的作用：
    -> 创建对象
    -> 初始化对象
    -> 把对象地址返回
    new 方法的内部其实是先调用的alloc方法，再调用的init方法
 
    alloc方法是一个类方法，哪一个类调用这个方法，就创建哪一个类的对象，并把对象返回。
    init是一个对象方法，作用：初始化对象
    创建对象的完整步骤：
    应该是先使用alloc创建一个对象，然后使用init初始化这个对象，才可以使用这个对象。
    虽然没有初始化的对象有点时候也可以使用，但是千万不要这么做。
    使用一个未初始化的对象是极其危险的。
    Person *p1 = [Person new];
    完全等价于
    Person *p1 = [[Person alloc] init];
 
 2. init方法
    作用：初始化对象，为对象的属性赋初始值，这个init方法我们叫做构造方法。
         init做的事情：初始化对象
         为对象的属性赋默认值
         如果属性的类型是基本数据类型，就赋值为0
         如果属性的数据类型是C指针类型，NULL
                        oc指针类型，nil
    所以：我们创建一个对象，如果没有为这个对象的属性赋值，这个对象的属性是有默认值的。
    所以：我们每次新创建一个对象这个对象的属性，都被初始化了。
 
 3. 我们想让创建的对象的属性的默认值不是nil NULL 0
    而是我们自定义的。
 
    那么这个时候，我们就可以重写init方法。在这个方法当中按照我们自己的想法为对象的属性赋值。
 
    重写init方法的规范：
    1）必须先调用父类的init方法，然后将方法的返回值赋值给self
    2）调用init方法初始化对象有可能会失败，如果初始化失败，返回的就是nil
    3）判断父类是否初始化成功,判断self的值是否为nil，如果不为nil说明初始化成功
    4）如果初始化成功，就初始化当前对象的属性。
    5）最后，返回self的值
 
    解惑
    1）为什么要调用父类的init方法
       因为父类的init方法会初始化父类的属性，所以必须要保证当前对象当前的父类属性也同时被初始化
    2）为什么要赋值给self？
        因为，调用父类的init方法，会返回初始化成功的那个对象
        实际上返回的就是当前对象，但是我们要判断是否初始化成功。
 
    无论如何，记住重写init方法的规范
 -(instancetype)init {
 
    if (self = [super init]) {
        // 初始化当前类的属性的代码
    }
 }
    什么时候需要重写init方法：
    如果你希望创建出来的对象的默认值不是nil NULL 0而是我们指定的值，那么这个时候我们就可以重写init方法。
 
 3. 重写init方法以后
    问题：这样每次创建出来的对象的属性值都是一模一样的
    创建对象的时候，对象的属性的值由创建对象的人来指定，而不是写死在init方法当中
    自定义构造方法
 
    规范：
    1）自定义构造方法的返回值必须是instancetype
    2）自定义构造方法的名称必须以initWith开头
    3）方法的实现和init的要求一样
 
    什么时候需要自定义构造方法？
    
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
//    Person *p1 = [Person alloc];
//    Person *p2 = [p1 init];
  
    
//    Person *p1 = [[Person alloc] init];
   
//    Person *p1 = [Person new]; 调用了重写init方法
    
    
    
    
    Person *p2 = [[Person alloc] initWithName:@"小东" andAge:18];
    
    
    
    
    
    return 0;
}


















