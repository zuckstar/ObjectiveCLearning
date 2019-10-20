//
//  Person.m
//  02-作业及结构体与类的区别
//
//  Created by a on 2019/7/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}
-(void)setGender:(Gender)gender
{
    _gender = gender;
}
-(Gender)gender
{
    return _gender;
}
-(void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return _age;
}
@end
