//
//  Student.m
//  02-作业及结构体与类的区别
//
//  Created by a on 2019/7/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)getStuNumber:(NSString *)stuNumber
{
    _stuNumber = stuNumber;
}
-(NSString *)stuNumber
{
    return _stuNumber;
}

-(void)setBook:(Book *)book
{
    _book = book;
}
-(Book *)book
{
    return _book;
}
@end
