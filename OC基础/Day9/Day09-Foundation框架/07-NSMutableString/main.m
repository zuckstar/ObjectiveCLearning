//
//  main.m
//  07-NSMutableString
//
//  Created by a on 2019/10/18.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 字符串的恒定性
    一旦创建一个字符串对象，那么这个字符串对象的内容就无法更改，当我们修改字符串的时候，其实是重新地创建了一个字符串对象。
 
    代码案例
 
     NSLog(@"-------------");
     NSString* str = @"";
     for(int i = 0; i < 5000; i++){
        // 连接并生成一个字符串。
        str = [NSString stringWithFormat:@"%@%d",str,i];
     }
     NSLog(@"-------------");
 
    会耗费很长的时间，因为每次循环的时候，都会创建一个新的字符串对象，一共50000个；
    因为字符串的恒定性。
 
 2. 如何让这样的大批量的字符串拼接可以更快一点。
    1）慢的原因: 因为字符串的恒定性，每次修改字符串的时候，是重新地创建一个对象。
    2）希望有一种对象是用来存储字符串的，并且存储在这个对象中的字符串数据可以更改。
 
 3. NSMutableString
    1）是Foundation框架中的一个类，从NSString继承。所以NSMutableString对象是用来存储字符串的。
 
    2）NSMutableString在父类NSString的基础上做的扩展。
 
        存储在NSMutableString对象中的字符串数据可以更改，具备可变性。直接可以修改存储在NSMutableString对象中的字符串数据，
        不会重新创建对象。
 
 4. NSMutableString的用法
    1）既然是一个类，要使用的话，就得创建一个对象。
        NSMutableString *str = [NSMutableString string];
 
    2）往可变字符串对象中追加字符串。
    - (void)appendString:(NSString *)aString;
    - (void)appendFormat:(NSString *)format, ... NS_FORMAT_FUNCTION(1,2);
 
 
    3) 创建NSMutableString对象的时候，下面初始化的方式是不行的：
        NSMutableString *str = "jack"
        @"jack"是一个NSString对象，是一个父类对象
        而str指针是一个NSMutableString类型的，是一个子类类型的。
        如果通过子类指针去调用子类独有的成员，就会发生运行错误。
        因为父类对象中没有子类对象中的方法，运行时会报错。
 
    4）NSMutableString从NSString继承
        在使用NSString的地方完全可以使用NSMutableString
 
    5) 使用NSMutableString来做大批量字符串的拼接
 
         NSLog(@"~~~");
         NSMutableString *str = [NSMutableString string];
         for(int i = 0; i < 10000; i++){
         [str appendFormat:@"%d",i];
         }
         NSLog(@"~~~");
    速度就很快，因为NSMutableString只有一个，每次修改的时候，直接修改的是这个对象中的数据。
 
 6. 使用建议。
 
        1） 我们平时使用的时候，还是使用NSString，因为效率高
            NSString *str1 = @"jack";
            NSString *str2 = @"jack";
 
        2) NSMutableString 只在做大批量的字符串拼接的时候才使用。
            大量拼接的时候就不要使用NSString了，因为效率低下。
            5次以上就要使用NSMutableString了。
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

//    案例1
//    NSMutableString *str = [NSMutableString string];
//
//    [str appendString:@"jack"]; // 追加字符串 @"jack"
//    [str appendString:@"rose"]; // @"jackrose"
//    [str appendString:@"liil"]; // @"jackroselili"
//
//    int age = 10;
//    [str appendFormat:@"我今年%d岁了。",age];
//
//    NSLog(@"%@",str);
    
//    案例2
    
//    Person *p1 = [Person new];
//    NSString *s1 = @"红烧肉";
//    NSMutableString *s2 = [NSMutableString string];
//    [s2 appendString:@"黄瓜"];
//    [p1 eat:s1];
//    [p1 eat:s2];
    
//    案例3
    NSLog(@"~~~");
    NSMutableString *str = [NSMutableString string];
    for(int i = 0; i < 10000; i++){
        [str appendFormat:@"%d",i];
    }
    NSLog(@"~~~");
    return 0;
}
