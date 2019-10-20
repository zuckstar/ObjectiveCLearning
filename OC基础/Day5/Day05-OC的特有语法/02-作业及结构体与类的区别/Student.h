//
//  Student.h
//  02-作业及结构体与类的区别
//
//  Created by a on 2019/7/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"
#import "Book.h"
@interface Student : Person
{
    NSString *_stuNumber;
    Book *_book;
}
-(void)getStuNumber:(NSString *)stuNumber;
-(NSString *)stuNumber;

-(void)setBook:(Book *)book;
-(Book *)book;
@end
