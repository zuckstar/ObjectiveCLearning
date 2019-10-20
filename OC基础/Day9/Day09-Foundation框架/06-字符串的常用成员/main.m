//
//  main.m
//  06-字符串的常用成员
//
//  Created by a on 2019/10/17.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 字符串的截取
    取到字符串中的一部分。
 
     - (NSString *)substringFromIndex:(NSUInteger)from; 从指定下标一直截取到最后
     - (NSString *)substringToIndex:(NSUInteger)to; 从第0个开始截取指定个数
     - (NSString *)substringWithRange:(NSRange)range; 截取指定的一段范围，从2开始，截取3个位置
 
 2. 字符串的替换
    - (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
 
    将字符串当中第一个参数替换为第二个参数，原来的指针指向的内容是不变的，新串是以方法的返回值返回的。并且符合的字符串都会全部替换。
 
    这个方法还可以做删除，原理，就是将指定目标的字符串替换成空串。
 
 3. 字符串数据转换为其他的类型，使用频率很高。
 
     @property (readonly) double doubleValue;
     @property (readonly) float floatValue;
     @property (readonly) int intValue;
     @property (readonly) NSInteger integerValue API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
     @property (readonly) long long longLongValue API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
     @property (readonly) BOOL boolValue API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
 
     转换注意：
     字符串转换成数字  110a -> 110、   110a110a110 -> 110
     从头开始转换，能转换多少是多少，当遇到不能转换的时候就停止转换。
 
 4. 去掉字符串的前后的空格
 NSString *str = @"   qqq12321   ";
 str = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
 中间的空格字符无法去除，只能是首位字符串。
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
//    案例1
//    NSString *str = @"我爱北京天安门";
//
//    NSString *newStr = [str substringFromIndex:3];
//    NSString *newStr1 = [str substringToIndex:3];
//    NSString *newStr2 = [str substringWithRange:NSMakeRange(2, 3)];
//
//    NSLog(@"%@",newStr);
//    NSLog(@"%@",newStr1);
//    NSLog(@"%@",newStr2);
    
    
//    案例2
//    NSString *str = @"我爱北京的北京天安门";
//    NSString *newStr = [str stringByReplacingOccurrencesOfString:@"北京" withString:@"广州"];
//    NSLog(@"%@",newStr);
    
//    案例3 转换
//    NSString *str = @"12.12";
////    转换成整数
//    int num = str.intValue;
////    转换成小数
//    double dnum = str.floatValue;
//    NSLog(@"%d",num);
//    NSLog(@"%lf",dnum);
    
//    案例4：去除前后空格
    
    NSString *str = @"   qqq12321   ";
    str = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSLog(@"%@",str);
    str = [str uppercaseString]; // 字符串转大写
    NSLog(@"%@",str);
    str = [str lowercaseString]; // 字符串转小写
    NSLog(@"%@",str);
    
    
    return 0;
}
