//
//  main.m
//  03-微博练习
//
//  Created by a on 2019/10/13.
//  Copyright © 2019 Jamie. All rights reserved.
//




/*
 MRC的模式下设计三个类
 
 一、微博类 （Microblog）
    属性：
    * 文字内容
    * 图片
    * 发表时间（可以用字符串表示）
    * 作者
    * 被转发的微博
    * 评论数
    * 转发数
    * 点赞数
 
二、作者类 （User）
    * 名称
    * 生日
    * 账号
 
 三、账号类 （Account）
    * 账号名称
    * 账号密码
    * 账号注册时间（可以用字符串来表示）
 
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Microblog.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 创建一个账户
        Account *a1 = [[Account new] autorelease];
        a1.username = @"luoyonghao250";
        a1.password = @"dawoya";
        a1.registDate = (MyDate){2015,11,10};
        
        User *lyh = [[User new] autorelease];
        lyh.nickname = @"罗永浩可爱多";
        lyh.birthday = (MyDate){1976,12,12};
        lyh.account = a1;
        
        Microblog *b1 = [[Microblog new] autorelease];
        b1.contnet = @"今天的天气真好，锤子手机销量高.";
        b1.imgURL = @"http://www.a.com/logo.png";
        b1.user = lyh;
        b1.zhuanFaBlog = nil;
        
    }
    return 0;
}
