//
//  Person.m
//  07-多个对象的内存管理
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc
{
//    当人对象挂的时候，代表当前这个人对象就不会再使用_car指向的对象了
//    当不再使用1个对象的时候，应该为这个对象发送一条release消息
    [_car release];
    [_name release];
    NSLog(@"人挂了");
    
    [super dealloc];
}
-(void)setCar:(Car *)car
{
    //    将传入的车对象赋值给当前的对象_car属性
    //    代表：传入的对象多了一个人使用
    //    那么先为这个对象发送一条retain消息，代表多一个人使用
    //    car retain 返回的就是当前对象
    
    
    if(_car != car) {
//        当新旧对象不是同一个对象的时候，release旧的，retaind新的
        [_car release];
        _car = [car retain];
    }

    
    
//   当我们将传入的Car对象赋值给_car属性的时候
//    代表1： _car 属性原本指向的对象少一个人使用
//    代表2：传入的对象多一个人使用
//    所以，我们应该先将_car属性原本指向的对象release，再将传入的新对象 retain
}
-(Car *)car
{
    return _car;
}
-(void)drive
{
    NSLog(@"去拉萨开车");
    [_car run];
}


-(void)setAge:(int) age
{
    _age = age;
}
-(int)age
{
    return _age;
}
-(void)setName:(NSString *) name
{
    if(_name != name){
        [_name release];
        _name = [name retain];
    }
}
-(NSString *)name
{
    return _name;
}
@end
