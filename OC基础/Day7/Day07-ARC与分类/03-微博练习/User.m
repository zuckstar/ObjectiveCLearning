//
//  User.m
//  03-微博练习
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "User.h"

@implementation User
-(void)dealloc
{
    NSLog(@"用户死了");
    [_nickname release];
    [_account release];
    [super dealloc];
}
@end
