//
//  Person.m
//  10-NSObject和id类型
//
//  Created by a on 2019/8/3.
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
