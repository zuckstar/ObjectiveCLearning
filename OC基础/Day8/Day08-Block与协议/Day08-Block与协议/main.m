//
//  main.m
//  Day08-Block与协议
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//
/*
 1. 复习
 2. 延展
 3. block
 4. 协议
 
 -----------------
 1. 自动释放池
    1）MRC下才具备作用
    2）原理
    3）如何创建一个自动释放池
    @autoreleasepool{
    }
    4) 调用对象的autorelease方法的代码放在自动释放池
    5）好处：在MRC下，创建对象把对象存储到自动释放池中，省略一个release
 
  2. ARC自动内存管理：系统自动的计算对象引用计数器的值
     编译器特性
     没有任何强指针指向一个对象的时候，这个对象就会被立即回收
 
  3. @property的参数
        strong、weak：都是应用在属性的类型是OC对象的时候
        99%的时候使用strong，当出现循环引用的时候，一边strong一边weak
 
  4. 总结@property参数
  5. MRC与ARC的兼容
  6. MRC转换为ARC
  7. 分类
    1）将一个臃肿的类分为多个模块，方便后期的代码的维护。
    2）非特殊协议，对一个类进行扩展，使用分类为已经存在的类添加方法。
 
  8. 继承和分类扩展的区别
        继承：新创建了一个类。
             继承的扩展，可以扩展任意成员
        分类：没有新创建一个类，看起来就像修改的是本类一样。
             分类只能加方法
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
