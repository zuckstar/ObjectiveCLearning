//
//  Person.m
//  08-@property参数
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)dealloc
{
    [_car release];
    [super dealloc];
}
@end
