//
//  Person.m
//  03-类的本质
//
//  Created by a on 2019/7/28.
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
-(void)sayHello
{
    NSLog(@"大家好。");
}
+(void)sayHi
{
    NSLog(@"大家好。");
}
-(void)eatWithFood:(NSString *)foodName
{
    NSLog(@"你给我的%@真好吃",foodName);
}
@end
