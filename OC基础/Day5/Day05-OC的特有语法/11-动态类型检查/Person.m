//
//  Person.m
//  11-动态类型检查
//
//  Created by a on 2019/8/4.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)sayHi {
    NSLog(@"I'm Person");
}
+(instancetype)person
{
    return [self new];
}
@end
