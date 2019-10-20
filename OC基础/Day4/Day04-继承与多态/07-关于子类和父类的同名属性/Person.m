//
//  Person.m
//  07-关于子类和父类的同名属性
//
//  Created by a on 2019/7/14.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)sayHi
{
    NSLog(@"我是Person类的sayhi方法");
}
+(void)hehe
{
    NSLog(@"我是Person的类方法，呵呵");
}
@end
