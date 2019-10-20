//
//  Person.m
//  05-属性的封装
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)sayHi
{
    NSLog(@"我叫%@，我的年龄是%d", _name, _age);
}
-(void)setAge:(int)age
{
    if(age < 0 || age > 150){
        self->_age = 18;
    } else {
        self->_age = age;
    }
    
}
-(void)setName:(NSString *)name
{
    if([name length] < 2){
        self->_name = @"无名";
    } else {
        self->_name = name;
    }
}
-(int)age
{
    return _age;
}
-(NSString *)name
{
    return _name;
}
@end
