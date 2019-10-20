//
//  Student.m
//  07-关于子类和父类的同名属性
//
//  Created by a on 2019/7/14.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)study
{
    NSLog(@"刻苦学习");
    // 以下两句语法意思相同
    [self sayHi];
    [super sayHi];
    
}
+(void)haha
{
    [Person hehe];
    [Student hehe];
    [self hehe];
    [super hehe];
}
@end
