//
//  Student.m
//  02-延展
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Student.h"

@interface Student ()
{
    NSString *_name;
}
@property(nonatomic,assign)int age;
-(void)study;
@end

@implementation Student
-(void)study
{
    NSLog(@"上学了！");
}
-(void)sayHi
{
    NSLog(@"你好啊！");
}
@end
