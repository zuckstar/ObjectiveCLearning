//
//  main.m
//  08-NSDate
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. NSDate 时间处理
    1) 可以得到当前时间，创建一个NSDate对象就可以了，将这个对象输出，就是当前时间。
        得到的是当前系统的格林威治时间，0时区的时间，东8区。
 
         NSDate *date = [NSDate new];
         NSLog(@"%@",date);

    2） 格式化输出日期，指定日期的输出的格式
 
     NSDate *date = [NSDate new];
     NSLog(@"%@",date);
     自定义日期格式
     1. 先创建一个日期格式化对象，这个对象可以将一个日期输出为指定格式
        NSDateFormatter *formatter = [NSDateFormatter new];
     2. 指定这个日期格式化对象转换的格式
         yyyy 代表年份，年份用4位表示
         MM 代表月份，月份就会用2位表示
         dd 天
         HH 时  24小时制
         hh 时  12小时制
         mm 分钟
         ss 秒
         formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
         formatter.dateFormat = @"yyyy年MM月dd号 HH时mm分ss秒";
     3. 然后格式化对象按照指定的格式将日期对象转换。
        转换的时候，会自动地转换为当前系统的时区的时间
 
         NSString *str = [formatter stringFromDate:date];
         NSLog(@"%@",str);
 
     4. 字符串日期转date对象
         NSString *strDate = @"2012-12-12 12:12:12";
         NSDateFormatter *formatter = [NSDateFormatter new];// 1.先创建一个日期格式化对象
         formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss"; // 2. 指定字符串日期的格式
         NSDate *date = [formatter dateFromString:strDate]; // 3. 转换
         NSLog(@"%@",date);

 2. 日期计算
 
      1）   当前时间+5000s是什么时间
            NSDate *date = [NSDate dateWithTimeIntervalSinceNow:5000];
            传入一个负数，就是在当前时间的基础之上减去指定的时间。
 
      2） 求两个时间之间的差
            可以实现的效果，就是可以计算出执行代码所花费的时间
             NSString *str = @"";
             NSDate *startDate = [NSDate date];
             for(int i = 0; i < 20000; i++){
             str = [NSString stringWithFormat:@"%@%d",str,i];
             }
             NSDate *endDate = [NSDate date];
 
             double sj = [endDate timeIntervalSinceDate:startDate];
             NSLog(@"%lf",sj);
 
        3) 只拿当前时间年份的整型数据
 
             NSDate *date = [NSDate date];
 
             NSDateFormatter *formatter = [NSDateFormatter new];
             formatter.dateFormat = @"MM";
             NSString *str = [formatter stringFromDate:date];
             int year = str.intValue;
             NSLog(@"year = %d",year);
 
        4) 利用日历对象获取日期时间的各个部分
             NSCalendarUnitYear               = kCFCalendarUnitYear,   年
             NSCalendarUnitMonth              = kCFCalendarUnitMonth,  月
             NSCalendarUnitDay                = kCFCalendarUnitDay,    日
             NSCalendarUnitHour               = kCFCalendarUnitHour,   时
             NSCalendarUnitMinute             = kCFCalendarUnitMinute, 分
             NSCalendarUnitSecond             = kCFCalendarUnitSecond, 秒
             NSCalendarUnitWeekday                                     星期
 
 
             NSDate *date = [NSDate date];
             // 1. 先创建一个日历对象，日历对象的作用可以从日期对象中取到日期的各个部分
             NSCalendar *calendar = [NSCalendar currentCalendar];
 
             // 2. 让日历对象从日期对象中取出日期的各个部分
             NSDateComponents *com = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday  fromDate:date];
 
             NSLog(@"%lu---%lu---%lu---%lu",com.year,com.month,com.day,com.weekday);
 
 */


#import <Foundation/Foundation.h>
#import "NSDate+mydate.h"


int main(int argc, const char * argv[]) {
    
//  利用分类重写date的year属性
    NSDate *date = [NSDate date];
    NSLog(@"%d",date.year);
    
    
    
    
//    NSDate *date = [NSDate date];
//    // 1. 先创建一个日历对象，日历对象的作用可以从日期对象中取到日期的各个部分
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//
//    // 2. 让日历对象从日期对象中取出日期的各个部分
//    NSDateComponents *com = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday  fromDate:date];
//
//    NSLog(@"%lu---%lu---%lu---%lu",com.year,com.month,com.day,com.weekday);
    
    
    
//    NSDate *date = [NSDate new];
//    NSLog(@"%@",date);
    
    
////    自定义日期格式 案例1
////    1. 先创建一个日期格式化对象，这个对象可以将一个日期输出为指定格式
//    NSDateFormatter *formatter = [NSDateFormatter new];
////    2. 指定这个日期格式化对象转换的格式
////    yyyy 代表年份，年份用4位表示
////    MM 代表月份，月份就会用2位表示
////    dd 天
////    HH 时  24小时制
////    hh 时  12小时制
////    mm 分钟
////    ss 秒
////    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
//    formatter.dateFormat = @"yyyy年MM月dd号 HH时mm分ss秒";
////    3. 然后格式化对象按照指定的格式将日期对象转换。
////    转换的时候，会自动地转换为当前系统的时区的时间
//
//    NSString *str = [formatter stringFromDate:date];
//    NSLog(@"%@",str);
    
//    案例2 字符串转日期对象
//    NSString *strDate = @"2012-12-12 12:12:12";
//    NSDateFormatter *formatter = [NSDateFormatter new];// 1.先创建一个日期格式化对象
//    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss"; // 2. 指定字符串日期的格式
//    NSDate *date = [formatter dateFromString:strDate]; // 3. 转换
//    NSLog(@"%@",date);
    
    
    return 0;
}
