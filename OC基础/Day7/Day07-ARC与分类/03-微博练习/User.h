//
//  User.h
//  03-微博练习
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//
//二、作者类 （User）
//* 名称
//* 生日
//* 账号
#import <Foundation/Foundation.h>
#import "Account.h"
@interface User : NSObject
//用户昵称
@property(nonatomic,retain)NSString *nickname;
//出生日期
@property(nonatomic,assign)MyDate birthday;
//用户的账户信息
@property(nonatomic,retain)Account *account;
@end

