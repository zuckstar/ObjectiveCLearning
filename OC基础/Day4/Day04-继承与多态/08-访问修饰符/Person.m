//
//  Person.m
//  08-访问修饰符
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
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
-(void)setName:(NSString *)name
{
    _name = name;
}
@end
