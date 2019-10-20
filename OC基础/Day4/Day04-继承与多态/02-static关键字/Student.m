//
//  Student.m
//  02-static关键字
//
//  Created by a on 2019/7/7.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)setNumber:(int)number;
{
    _number = number;
}
-(int)number
{
    return _number;
}

-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return _age;
}

+(instancetype)student
{
    return [Student new];
}
+(instancetype)studentWithName:(NSString *)name andAge:(int)age
{
    static int number = 1;
    Student *s1 = [Student new];
    s1->_number = number;
    number++;
    s1->_name = name;
    s1->_age = age;
    return s1;
}
@end
