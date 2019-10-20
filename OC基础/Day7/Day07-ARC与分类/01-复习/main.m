//
//  main.m
//  01-复习
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 
 1. MRC下的内存管理原则
    每一个对象都有一个retainCount属性，叫做引用计数器
    占据8个字节，类型是unsigned long
 
    引用计数器的作用：用来记录这个对象有多少个人正在使用
 
    当我们创建一个对象的时候，这个对象的引用计数器的值为1
    如果有人使用这个对象，就让这个对象的引用计数器加一，代表多一个人使用这个对象
    当对象的引用计数器为0的时候，系统就会立即回收这个对象，并调用对象的dealloc方法
 
 2. 操作引用计数器的方式
    为对象发送retain消息，对象的引用计数器就会加一，这个消息的返回值是对象本身
    为对象发送release消息，对象的引用计数器就会减一
    为对象发送retainCount消息，就会返回对象的引用计数器的值。
 
    在对象引用计数器为0的时候，对象就会被系统立即回收，并调用这个对象的dealloc方法
    引用计数器的改变只能调用retain，release，不能直接赋值
 
 3. 在MRC下重写dealloc方法的规范
    必须要调用父类的dealloc方法，并且要放在最后调用
    因为子类中有父类的属性，而父类的属性的release是放在父类的dealloc方法之中的
    为了能够释放所有对象，必须调用父类的dealloc方法
 4. 内存管理原则
    1）有对象的创建，就必须要匹配一个release
    2）只有在多一个人使用的时候，才为对象发送retain消息，只有当少一个人使用的时候，才为对象发送release消息。
    3）谁retain，谁release
    4）retain的次数要和release的次数匹配
 
    有始有终，有加就有减
 
 5. 野指针与僵尸对象
    野指针：指针指向的对象已经被释放，这个指针叫做野指针
    僵尸对象：一个被释放的对象，叫做僵尸对象
 
    通过野指针去访问一个僵尸对象的时候是有可能会出问题的。
 
    对象回收的本质：
    是对象占用的空间系统可以分配给别的对象。
    在未被分配给别的程序之前，其实这个对象还是存在的，数据也存在，但是这块空间随时有可能分配给别的程序
 
    在未被分配给别的对象之前，其实还是可以访问的。
    一旦分配给别人就不能访问了。
 
    僵尸对象就不应该被允许访问，因为已经被释放了。
 
    选项中可以开启僵尸对象的检测。
 
    2）如何避免使用僵尸对象
        当指针为野指针的时候，将其值赋值为nil
    3） 无法让僵尸对象复活。
 
6. 单个对象的内存泄露
 
    1） 什么叫内存泄露
        指的是对象没有被回收，该回收的时候没有被回收，一直驻留在内存之中直到程序结束。
 
    2）单个对象发生内存泄露的原因
        有对象的创建，没有匹配的release
        retain与release不匹配
        在不恰当的时候，指针赋值为nil
        在方法中不当使用retain
 
    3）如何做到单个对象被正确释放
        有对象的创建就有对象的release
        有多少个retain就有多少个release
        不要轻易地为一个指针赋值为nil，除非指针是一个野指针
        在方法中不要轻易地为参数retain
 
 7. 多个对象的内存泄露
    1）当一个对象的属性是另外一个对象的时候，如果对这个属性的set封装还是像我们基础版那样直接赋值，这样是会出现问题的，会出现野指针
 
 8. set方法的内存管理
    在MRC模式下，如果属性的类型是OC对象类型的，这个属性的setter方法应该如何写。
    1) 先retain传入的对象，赋值给属性，在dealloc 中 release
    2）重新赋值一个对象的时候，旧的对象无法释放。先release旧的对象，再retain新的对象
    3）当多次赋值同一个对象的时候，就会出现僵尸对象。
    4）新旧对象是同一个对象的时候，不做任何操作
 
 9. @property 参数
    1）@property的作用
    @property int age;
    a. 生成一个私有的，int 类型的属性_age,是声明正在@implementation的大括弧之中
    b. 生成getter、setter的声明
    c. 生成getter、setter的实现（将传递进来的值不做任何操作直接赋值给属性）
 
    2）@property可以带参数，不同的参数有不同的效果
    a. 与多线程相关的：atomic(默认，原子性加锁)，nonatomic(非原子性，属性不加锁,效率高)
    b. 和生成set方法相关的参数
        retain：生成的set方法就是标准的MRC内存管理代码，不再是直接赋值了，而是先判断新旧对象是否为同一个对象，如果不对则 release 旧的，retain新的
            retain 只是生成的set方法是标准的MRC内存管理代码，不会自动地在dealloc中release，所以，我们还要在dealloc方法中手动地release属性指向的对象。
        assign： 默认值，生成的set方法中不做任何其他的操作，直接赋值
 
        如果属性的类型是OC对象类型的，那么使用retain，如果属性类型是非OC对象类型的，那么使用assign
    c. 和生成的属性 只读、读写相关的参数
        readwrite：默认值，getter，setter同时生成
        readonly: 只生成getter
 
    d. 修改生成的 getter setter方法的名字
        一般情况下别改，要改就改在一个地方，当属性的类型是BOOL类型的时候，就更改getter的名字以is开头
 
10. @class
 
 两个头文件相互包含的时候，如果两边都是用#import来包含，就会出错，就会死循环
 其中的一个头文件，不要使用#import指令，而是使用@class类名
 @class Person
 在.m文件中再去#import
 
11. 循环retain
    当两个对象相互关联的时候，人对象中有个车，车对象中有个人
    如果这两个@property都使用retain就会出现泄露
    解决方案：1端retain，1端assign，使用assign的那一端就不再需要在dealloc中release了。
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
