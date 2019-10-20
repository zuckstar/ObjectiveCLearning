//
//  main.m
//  09-copy
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 无论是在MRC还是ARC下，如果属性的类型是NSString类型的，@property参数使用copy
 
 2. copy 复制
    1）copy是一个方法，定义在NSObject类之中，作用：拷贝对象
        NSString --> copy --> copy后是一个不可变的字符串对象 没有产生新对象，而是直接将对象本身的地址返回。这种拷贝叫做浅拷贝。
        NSMutableString --> copy -->copy后是一个不可变的字符串对象。 有产生新的一个对象，这样的拷贝叫做深拷贝。
 
 浅拷贝例子:
         NSString *str1 = @"jack";
         NSString *str2 = [str1 copy];

         NSLog(@"str1 = %p",str1);

         NSLog(@"str2 = %p",str2);


         NSLog(@"str1 = %@",str1);
         NSLog(@"str2 = %@",str2);
 深拷贝案例：
         NSMutableString *str1 = [NSMutableString stringWithFormat:@"jack"];
         NSMutableString *str2 = [str1 copy];
 
         NSLog(@"str1 = %p",str1);
 
         NSLog(@"str2 = %p",str2);
 
 
         NSLog(@"str1 = %@",str1);
         NSLog(@"str2 = %@",str2);
 
    2）mutableCopy，定义在NSObject当中，作用拷贝对象
        NSString --> mutableCopy --> 可变字符串对象，是一个深拷贝
 
         NSString *str1 = @"jack";
         NSMutableString *str2 = [str1 mutableCopy];
 
         [str2 appendString:@"111"];
         NSLog(@"str1 = %p",str1);
 
         NSLog(@"str2 = %p",str2);
 
 
         NSLog(@"str1 = %@",str1);
         NSLog(@"str2 = %@",str2);
 
        NSMutableString --> mutableCopy -->copy后是一个可变的字符串对象。 有产生新的一个对象，是深拷贝。
 
         NSMutableString *str1 = [NSMutableString stringWithFormat:@"jack"];
         NSMutableString *str2 = [str1 mutableCopy];
 
         NSLog(@"str1 = %p",str1);
 
         NSLog(@"str2 = %p",str2);
 
 
         NSLog(@"str1 = %@",str1);
         NSLog(@"str2 = %@",str2);
 
        这是字符串的对象拷贝的特点
 
 3. 字符串对象拷贝的引用计数器的问题
    1）若字符串对象存储在常量区中,存储在常量区的数据是不允许被回收的。
        所以存储在常量区的字符串对象的引用计数器是一个超大的数，并且retian和release无效。
 
         NSString *str1 = @"jack";
         NSLog(@"%lu",str1.retainCount);
 
 
         [str1 retain];
 
         NSLog(@"%lu",str1.retainCount);
         NSString *str2 = [str1 copy];
 
    2）若字符串存储在堆区，这个字符串对象和普通的对象是样的。引用计数器默认是1（在iOS环境下可测试）
         NSString *str1 =[NSString stringWithFormat:@"jack"];
         NSLog(@"%lu",str1.retainCount);
 
    3) 字符串对象如果是浅拷贝，会将对象的引用计数器+1
       字符串对象如果是深拷贝，原来的对象的引用计数器不变，新拷贝出来的对象的引用计数器为1.

         NSMutableString *str1 =[NSMutableString stringWithFormat:@"jack"];

         NSString *str2 = [str2 copy];
 
 4.
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

//    写法1
//    Person *p1 = [Person new];
//
//    NSString *str = @"jack";
//    p1.name = str;
//
//    str = @"rose";
//    NSLog(@"p1.name = %@", p1.name);
    
//    写法2
    
    
//    需求：将str赋值给p1.name属性以后
//    再修改str的值，不要影响p1.name
//    解决方案：在setter方法赋值的时候，将传进来的对象先拷贝一份。
    
    Person *p1 = [Person new];
    NSMutableString *str = [NSMutableString stringWithFormat:@"jack"];
    p1.name = str;
    
    
    [str appendString:@"rose"];
    NSLog(@"p1.name = %@",p1.name);
    
    return 0;
}
