//
//  Account.m
//  03-微博练习
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Account.h"
/*
 账户类
 * 账号名称
 * 账号密码
 * 账号注册时间（可以用字符串来表示）
 */
@implementation Account
-(void)dealloc
{
    NSLog(@"账户被毁了");
    [_username release];
    [_password release];
    [super dealloc];
}
@end
