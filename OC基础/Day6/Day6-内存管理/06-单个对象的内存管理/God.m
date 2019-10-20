//
//  God.m
//  06-单个对象的内存管理
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "God.h"

@implementation God

-(void)dealloc {
    NSLog(@"上帝挂了");
    [super dealloc];
}
-(void)killWithPerson:(Person *)per
{
    [per retain];
    NSLog(@"受死吧");
}
@end
