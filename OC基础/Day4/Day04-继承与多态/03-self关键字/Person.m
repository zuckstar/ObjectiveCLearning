//
//  Person.m
//  03-self关键字
//
//  Created by a on 2019/7/7.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)sayHi
{
    NSString *_name = @"小东";
    NSLog(@"_name = %@",_name);
    NSLog(@"self = %p", self);
}
-(void)hehe
{
    //调用当前对象的sayHi方法
    NSLog(@"Gohehe");
}
+(void)hehe
{
    NSLog(@"类方法");
}
@end
