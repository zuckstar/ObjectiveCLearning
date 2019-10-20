//
//  Person.m
//  09-@class
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc
{
    NSLog(@"人死了");
    [_name release];
    [_book release];
    [super dealloc];
}
-(void)read
{
//    1. 让自己拥有的书传播知识
    [_book castData];
//    2. 自己吸收
    NSLog(@"学习了书中的知识。");
}
@end
