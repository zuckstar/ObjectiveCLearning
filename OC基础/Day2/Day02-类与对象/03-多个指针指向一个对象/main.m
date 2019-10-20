//
//  main.m
//  03-多个指针指向一个对象
//
//  Created by a on 2019/6/25.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
 1. 同类型的指针变量之间是可以相互赋值的
 Person *p1 = [Person new];
 Person *p2 = p1; 这是完全没有问题的，p1和p2的类型都是Person指针类型的。
 p1,p2指向同一个对象，此时无论通过p1还是p2去修改对象，修改的都是同一个对象。
 2. 目前为止，只要看到new就是说明新创建了一个对象。

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
int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    p1->_name = @"小明";
    p1->_age=18;
    
    Person *p2 = p1;
    p2->_name = @"小花";
    NSLog(p1->_name);
    
    
    return 0;
}







