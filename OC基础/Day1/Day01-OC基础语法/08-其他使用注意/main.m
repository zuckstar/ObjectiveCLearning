//
//  main.m
//  08-其他使用注意
//
//  Created by a on 2019/6/14.
//  Copyright © 2019年 Jamie. All rights reserved.
//

/*
    1. 同一个类可以创建无数个对象
    2. 同一个类的多个对象之间，毫无关系。
    3. 在方法的实现中可以直接访问属性,在方法中访问的属性是调用方法对象的属性
 
    4. 案例
       定义一个类叫做Student
       属性；体重
       方法：跑步：每跑一次，这个学生对象的体重 -0.5
            吃放：每吃一次饭，这个学生对象的体重 +0.7
 
*/
#import <Foundation/Foundation.h>
@interface Student : NSObject
{
    @public
    NSString *_name;
    float _weight;
}
- (void) run;
- (void) eat;
@end;

@implementation Student
- (void) run
{
    NSLog(@"跑步后我的体重轻了...");
    _weight -= 0.5f;
    NSLog(@"跑完后我的体重是%.2f",_weight);
}
- (void) eat
{
    NSLog(@"我是吃货，我骄傲...");
    _weight += 0.7f;
    NSLog(@"吃完后，我又胖了，体重是%.2f",_weight);
}
@end



@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
}

-(void) sayHi;
@end;


@implementation Person
-(void)sayHi
{
    NSLog(@"大家好");
}
@end


int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    Person *p2 = [Person new];
    
    Student *stu1 = [Student new];
    stu1->_weight = 10;
    stu1->_name = @"小星星";
    
    [stu1 run];
    [stu1 run];
    [stu1 eat];
    [stu1 run];
    [stu1 run];
    [stu1 eat];
    
    
    return 0;
}
