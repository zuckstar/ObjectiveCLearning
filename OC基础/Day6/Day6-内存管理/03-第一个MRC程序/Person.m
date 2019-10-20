//
//  Person.m
//  03-第一个MRC程序
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)sayHi
{
    NSLog(@"大家伙好，才是真的好！");
}
-(void)dealloc
{
    NSLog(@"名字叫%@的人挂了",_name);
    [super dealloc];
}
@end
