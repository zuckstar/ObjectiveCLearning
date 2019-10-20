//
//  Student.m
//  08-访问修饰符
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)sayHi
{
    
    NSLog(@"大家好");
    [super setName:@"jack"];
}
@end
