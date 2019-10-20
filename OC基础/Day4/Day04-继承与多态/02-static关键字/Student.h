//
//  Student.h
//  02-static关键字
//
//  Created by a on 2019/7/7.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    int _number;
    NSString *_name;
    int _age;
}
-(void)setNumber:(int)number;
-(int)number;

-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setAge:(int)age;
-(int)age;

// 返回当前的类对象
+(instancetype)student;
+(instancetype)studentWithName:(NSString *)name andAge:(int)age;
@end
