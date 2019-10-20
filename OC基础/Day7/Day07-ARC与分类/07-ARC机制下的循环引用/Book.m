//
//  Book.m
//  07-ARC机制下的循环引用
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Book.h"

@implementation Book
-(void)dealloc
{
    NSLog(@"书被烧了.");
}
@end
