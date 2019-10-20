//
//  Car.m
//  06-ARC机制下的多个对象的内存管理
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)dealloc
{
    NSLog(@"车废了");
}
-(void)run
{
    NSLog(@"时速为%d的车子正在行驶。",_speed);
}
@end
