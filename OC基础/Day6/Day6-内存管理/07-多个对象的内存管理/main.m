//
//  main.m
//  07-多个对象的内存管理
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 用面向对象模拟一个案例：
 凤姐开车去拉萨。
 
 人类：
    属性：车
    行为：开车
 
 车类：
    属性：速度
    行为：行驶
 城市类：
 
 
 1. 当属性是一个OC对象的时候，setter方法的写法
    将传进来的对象赋值给当前的对象的属性，代表传入的对象多了一个人使用，所以我们应该先为这个传入的对象发送一条retain消息，再赋值。
    当当前对象销毁的时候，代表属性指向的对象少一个人使用，就应该在dealloc中release
 
 
    代码写法：
 -（void）setCar:(Car *)car
 {
 _car = [car retain];
 }
 -(void) dealloc
 {
 [_car release];
 [super dealloc];
 }
 
 s
 2. 当属性是一个OC对象时候，setter的方法照上面的写法还是有BUG
    当为这个对象的属性多次赋值的时候，就会发生内存泄露
    发生泄露的原因，当为属性赋值的时候，代表旧对象少一个人用，新对象多一个人用
    应该release旧的，retain新的
 -（void）setCar:(Car *)car
 {
 [_car release];
 _car = [car retain];
 }
 -(void) dealloc
 {
 [_car release];
 [super dealloc];
 }
 
 3. 出现僵尸对象的原因，新旧对象是同一个对象。
    解决的方案：当发现新旧对象是同一个对象的时候，什么都不用做。
    当新旧对象不是同一个对象的时候，才release旧的对象，retain新的对象
    最终完美版的setter方法是这样写的
 -(void)setCar:(Car *)car {
     if(_car != car) {
     [_car release];
     _car = [car retain];
     }
 }
 
 -(void) dealloc {
 
 [_car release];
 [super dealloc];
 }
 
 
 4.  特别注意
        我们内存管理的范围是oc对象
        所以，只有属性的类型是OC对象的时候，这个属性的setter方法才要像上面那样写
        如果属性不是OC对象类型，就直接赋值可以了。
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
//    案例1
//    Person *fj = [Person new]; // 1
//
//    Car *bmw = [Car new]; // 1
//    bmw.speed = 100;
//
//    fj.car = bmw; // 2
//    [fj drive];
//
//
//
//
//    [bmw release]; // bmw 1
//
//
//    [fj release]; // 0
    
    
    
//    案例2
//    Person *p1 = [Person new];
//
//    Car *bmw = [Car new];
//    bmw.speed = 200;
//    p1.car = bmw;
//
//
//
//    Car *benz = [Car new];
//    benz.speed = 400;
//    p1.car = benz;
//
//
//
//
//    [benz release];
//    [bmw release];
//    [p1 release];


//  案例3
    Person *p1 = [[Person alloc] init];
    Car *bmw = [Car new];
    
    bmw.speed = 100;
    
    
    
    p1.car = bmw;
    [p1 drive];
    
    
    bmw.speed = 200;
    
    
    
    
    [bmw release];
    
    
    bmw.speed = 200;
    p1.car = bmw;
    
    [p1 release];


    return 0;
}
