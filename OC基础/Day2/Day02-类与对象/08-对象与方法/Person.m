//
//  Person.m
//  08-对象与方法
//
//  Created by a on 2019/6/26.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)sayHi{
    NSLog(@"大家好，我是人");
}
-(void)test:(Dog *)dog
{
    dog->_name = @"大黄";
    [dog sayHi];
}
-(Dog *)test1
{
    Dog *wangCai = [Dog new];
    wangCai->_name = @"旺财";
    wangCai->_color = @"黄色";
    
    return wangCai;
}
@end
