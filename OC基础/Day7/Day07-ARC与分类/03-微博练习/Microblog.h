//
//  Microblog.h
//  03-微博练习
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "User.h"
//一、微博类 （Microblog）
//属性：
//* 文字内容
//* 图片
//* 发表时间（可以用字符串表示）
//* 作者
//* 被转发的微博
//* 评论数
//* 转发数
//* 点赞数

@interface Microblog : NSObject

//微博的文字内容
@property(nonatomic,retain)NSString *contnet;
//微博的配图路径
@property(nonatomic,retain)NSString *imgURL;
//微博的发送时间
@property(nonatomic,assign)MyDate sendTime;
//微博作者
@property(nonatomic,retain)User *user;
//被转发的微博（如果微博是转发的，保存被转发的对象）
@property(nonatomic,retain)Microblog *zhuanFaBlog;

@end

