//
//  Person.m
//  02-类方法
//
//  Created by a on 2019/6/28.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
+(void)hehe{
    NSLog(@"我是类方法");
}
+(Person *)person{
    Person *p1 = [Person new];
    return p1;
}
+(Person *)personWithName:(NSString *)name andAge:(int)age
{
    Person *p1 = [Person new];
    p1->_name = name;
    p1->_age = age;
    return p1;
}
@end
