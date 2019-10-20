//
//  main.m
//  04-分组导航标记
//
//  Created by a on 2019/6/25.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
 分组导航标记
 1）#pragma mark 分组名
    就会在导航条对应的位置显示一个标题
 2）#pragma mark -
    就会在导航条对应的位置显示一条水平分隔线
 3）#pragma mark - 分组名
    就会在导航条对应的位置先产生一条水平分隔线，再显示标题
 
 */
#import <Foundation/Foundation.h>
@interface Person:NSObject
{
@public
    NSString *_name;
    int _age;
}
-(void)sayHi;
@end
@implementation Person
-(void)sayHi{
    NSLog(@"大家好，我叫%@，我今年%d岁",_name,_age);
}
@end
#pragma mark 狗狗类的声明
@interface Dog:NSObject
{
}
@end
#pragma mark 狗狗类的实现
@implementation Dog
@end

#pragma mark - 毛毛
@interface Cat:NSObject
{}
@end
@implementation Cat
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
