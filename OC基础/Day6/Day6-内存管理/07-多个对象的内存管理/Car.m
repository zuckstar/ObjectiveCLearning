//
//  Car.m
//  07-多个对象的内存管理
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)dealloc
{
    NSLog(@"时速为%d的车子报废了.",_speed);
    [super dealloc];
}
-(void)setSpeed:(int)speed
{
    _speed = speed;
}
-(int)speed
{
    return _speed;
}
-(void)run
{
    NSLog(@"时速为%d的车子在行驶",_speed);
}
@end
