//
//  Person.m
//  02-static关键字
//
//  Created by a on 2019/7/7.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Person.h"
@implementation Person
-(void)sayHi
{
    static int num = 12;
    num++;
    NSLog(@"num = %d",num);
}
@end
