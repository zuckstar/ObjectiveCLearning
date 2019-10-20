//
//  Soldier.m
//  10-士兵突击
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Soldier.h"

@implementation Soldier
-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)setType:(NSString *)type
{
    _type = type;
}
-(NSString *)type
{
    return _type;
}

-(void)setGun:(Gun *)gun
{
    _gun = gun;
}
-(Gun *)gun
{
    return _gun;
}

-(void)fire
{
    NSLog(@"预备开火！");
    [_gun shoot];
}
@end
