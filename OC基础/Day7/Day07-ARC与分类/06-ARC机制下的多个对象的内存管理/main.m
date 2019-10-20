//
//  main.m
//  06-ARC机制下的多个对象的内存管理
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. ARC机制下的对象回收的标准，当没有任何强类型的指针指向对象的时候，这个对象就会被立即回收。
 2. 强类型指针 弱类型指针
 3. 什么情况下叫做对象没有强指针指向
    1）指向对象的强指针被回收
    2）指向对象的强指针被赋值为 nil
 4. 在ARC的机制下，@property的参数不能使用 retain 参数
    因为retain代表生成的setter方法是MRC的标准的内存管理代码
    而我们在ARC的机制下，不需要这些代码。
 
    所以，在ARC机制下的setter方法什么都不需要做，直接赋值就可以了。
 
 5. ARC机制下，我们关注的重点。
    当一个类的属性是一个OC对象的时候。这个属性应该声明为强类型的还是弱类型的。
    很明显，应该声明为一个强类型的。
 
    如何控制@property生成的私有属性是一个强类型的还是一个弱类型的呢？
    使用参数：strong、weak
    @property(nonatomic,strong)Car *car;
    代表生成的私有属性 _car 是一个强类型的
    @property(nonatomic,weak)Car *car;
    代表生成的私有属性 _car 是一个弱类型的指针
 
    如果不写，默认是strong
 6. 使用建议
    1）在ARC机制下，如果属性类型是OC对象类型的，绝大多数场景下使用strong
    2）在ARC机制下，如果属性类型不是OC对象类型的，使用assign
    3) strong和weak都是应用在属性的类型是OC对象的时候，属性的类型不是OC对象的时候，就是assign
 
    在ARC机制下，将MRC下的retain换为strong
 
    
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
    Person *p1 = [Person new];
    Car *c1 = [Car new];
    p1.car = c1;
    c1 = nil;
    
    return 0;
}
