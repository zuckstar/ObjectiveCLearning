//
//  NSDate+mydate.m
//  08-NSDate
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "NSDate+mydate.h"

@implementation NSDate (mydate)
-(int)year
{
    // 要返回当前日期对象的年份。
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *com = [calendar components:NSCalendarUnitYear fromDate:self];
    return (int)com.year;
}
@end
