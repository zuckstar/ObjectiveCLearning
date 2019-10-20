//
//  main.m
//  05-NSString类常用的方法
//
//  Created by a on 2019/10/17.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 接上节：
 4. 字符串方法的比较
    - (NSComparisonResult)compare:(NSString *)string;
 
 5. 字符串的比较：忽略大小写的比较：
 
 6. 判断字符串是否以指定的字符串开头
    - (BOOL)hasPrefix:(NSString *)str;
 
 7. 判断字符串是否以指定的字符串结尾
    - (BOOL)hasSuffix:(NSString *)str;
 
 8. 在主串中搜索子串，从前往后
    - (NSRange)rangeOfString:(NSString *)searchString;
    返回值是一个NSRange类型的结构体变量
    typedef struct NSRange {
        NSUInteger location; 代表子串在主串中出现的下标
        NSUInteger length; 代表子串在主串中匹配的长度
    }
    如果没有找到子串，location为 unsigned long 的最大值 9223372036854775807，length的值为0.
 
    这个方法是从前往后搜索，找到的是第一次匹配的子串。
 
 
  9. 在主串中搜索子串，从后往前
     NSRange range1 = [str rangeOfString:@"ve" options:NSBackwardsSearch];
 
 
  10. NSRange 结构体
    1）是Foundation框架中定义的一个结构体
 
    typedef struct NSRange {
         NSUInteger location; 代表子串在主串中出现的下标
         NSUInteger length; 代表子串在主串中匹配的长度
    } NSRange;
 
    NSRange range；
    这个结构体变量一般情况下用来表示一段范围，特别用在子串在主串中的范围表示。
    @"hahajackhehe" @"jack" NSRange range = {4,4}
 
 
    2) 声明并初始化结构体变量的方式
 
        - 1 最原始的方式
            NSRange range;
            range.location = 3;
            range.length = 4;
 
        - 2 第二种方式
            NSRange range = {3,7};
 
        - 3 第三种方式
 
            NSRange range = {.location = 3,.length = 7};
 
        -4 第四种方式
 
            Foundation 框架中定义了一个函数，这个函数可以快速地创建一个NSRange结构体变量返回
            NSRange range =  NSMakeRange(loc, len);
 
            返回一个指定属性的NSRange结构体变量
 
        -5 Foundation 框架中定义了一个函数，可以将一个NSRange结构体变量转换为NSString
            NSLog(@"%@",NSStringFromRange(range));可以将NSSRange结构体变量转换为指定格式的字符串。
 
 
 
 
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
//    案例1
//    NSString *str1 = @"JACK";
//    NSString *str2 = @"jack";
    
//    NSComparisonResult res = [str1 compare:str2];
//    switch (res) {
//        case NSOrderedAscending:
//            // 说明str1比str2小
//            NSLog(@"小");
//            break;
//        case NSOrderedSame:
//            //说明一样
//            NSLog(@"一样");
//            break;
//        case NSOrderedDescending:
//            // str1 > str2
//            NSLog(@"大");
//            break;
//    }
    
//    int res = [str1 compare:str2];

    
//    忽略大小写开始比较
//    int res = [str1 compare:str2 options: NSCaseInsensitiveSearch ];
//
//
//    switch (res) {
//        case -1:
//            // 说明str1比str2小
//            NSLog(@"小");
//            break;
//        case 0:
//            //说明一样
//            NSLog(@"一样");
//            break;
//        case 1:
//            // str1 > str2
//            NSLog(@"大");
//            break;
//    }
    
    
//    案例2
//    NSString *img1 = @"pic10003.jpg";
//    NSString *img2 = @"pic10001.jpg";
//    // 格式固定下的数字字符串的比较
//    int res = [img1 compare:img2 options:NSNumericSearch];
//
//        switch (res) {
//            case -1:
//                // 说明str1比str2小
//                NSLog(@"小");
//                break;
//            case 0:
//                //说明一样
//                NSLog(@"一样");
//                break;
//            case 1:
//                // str1 > str2
//                NSLog(@"大");
//                break;
//        }
    
    
//    案例3
//    NSString *str = @"http://www.baidu.com";
//    NSString *path = @"下辈子还喜欢你.mp3";
////    字符串是否以 xxx 开头
//    BOOL res = [str hasPrefix:@"http://"];
//    BOOL res1 = [path hasSuffix:@".mp3"];
//    NSLog(@"%@",res == YES ? @"YES":@"NO");
//    NSLog(@"%@",res1 == YES ? @"YES":@"NO");
    
    
//    案例4
//    在str字符串中搜索@"love"出现的范围，在主串中搜索子串。
//    NSString *str = @"i love iOS love";
//    NSRange range = [str rangeOfString:@"!ve"];
////    从后往前搜索
//    NSRange range1 = [str rangeOfString:@"ve" options:NSBackwardsSearch];
//
//    NSLog(@"loc = %lu", range.location);
//    NSLog(@"len = %lu", range.length);
//
//    if(range.length == 0 || range.location == NSNotFound){
//        NSLog(@"没有找到");
//    } else {
//        NSLog(@"找到了");
//    }
    
//    案例4
    
//    NSRange range = {3,7};
//    NSRange range = {.location = 3,.length = 7};
    
    NSRange range =  NSMakeRange(3, 7);
    NSLog(@"ran.loc = %lu , ran.len = %lu", range.location,range.length);
    NSLog(@"%@",NSStringFromRange(range));
    return 0;
}
