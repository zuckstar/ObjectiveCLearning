//
//  Book.m
//  09-@class
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Book.h"

@implementation Book
-(void)dealloc
{
    NSLog(@"书被烧了");
    [_authorName release];
    [_name release];
    [super dealloc];
}
-(void)castData
{
    NSLog(@"书中自有黄金屋，书中自有颜如玉。");
}
@end
