//
//  Person.m
//  04-ARC机制概述
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc
{
    NSLog(@"人死了");
}

-(void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return _age;
}

-(void)sayHi
{
    NSLog(@"大家好！");
}
@end
