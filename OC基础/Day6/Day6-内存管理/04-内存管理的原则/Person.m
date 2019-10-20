//
//  Person.m
//  04-内存管理的原则
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void) dealloc {
    NSLog(@"人挂了");
    [super dealloc];
}
@end
