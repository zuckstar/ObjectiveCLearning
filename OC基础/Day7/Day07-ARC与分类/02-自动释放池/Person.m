//
//  Person.m
//  02-自动释放池
//
//  Created by a on 2019/10/13.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc
{
    NSLog(@"人死了");
    [_name release];
    [super dealloc];
    
}
@end
