//
//  NSString+itcast.m
//  13-非正式协议
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "NSString+itcast.h"

@implementation NSString (itcast)
// 求当前对象的有多少个阿拉伯数字
-(int)numberCount
{
    
    int count = 0;
    for(int i = 0; i < self.length; i++){
        char ch = [self characterAtIndex:i];
        if(ch >= '0' && ch <='9'){
            count++;
        }
    }
    
    return count;

}
@end
