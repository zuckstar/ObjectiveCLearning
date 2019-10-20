//
//  Person.m
//  05-继承
//
//  Created by a on 2019/7/14.
//  Copyright © 2019年 Jamie. All rights reserved.
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

-(void)setAge:(int)age
{
    _age = age;
}
-(int)age
{
    return _age;
}
@end
@end
