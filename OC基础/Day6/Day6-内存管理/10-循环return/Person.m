//
//  Person.m
//  10-循环return
//
//  Created by a on 2019/10/12.
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
-(void)read
{
    [_book castData];
    NSLog(@"读书真好");
    
}
@end
