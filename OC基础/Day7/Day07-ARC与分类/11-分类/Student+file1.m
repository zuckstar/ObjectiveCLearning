//
//  Student+file1.m
//  11-分类
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Student+file1.h"

@implementation Student (file1)

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
    self.name = @"jack";
    NSLog(@"我是分类中的sayHi,你好");
}
@end
