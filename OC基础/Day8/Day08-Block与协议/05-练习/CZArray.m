//
//  CZArray.m
//  05-练习
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "CZArray.h"
#import <string.h>
@implementation CZArray
-(void)sortWithCountries:(char *[])countries andLength:(int)len andCompareBlock:(NewType)compareBlock
{
    for(int i = 0; i < len-1; i++){
        for(int j = 0; j < len-1; j++){
            // 想法：比较两个字符串的大小，不要使用方法的内部的代码来比较
            // 让调用者自己写一段代码来比较这两个字符串的大小
            // 写一个block来存储一段代码，这段代码做的事情：比较 j 、j+1两个字符串的大小返回结果。
            // BOOL(^compareBlock)(char *country1, char *country2);

            
            BOOL res = compareBlock(countries[j],countries[j+1]);
            if(res == YES){
                char *temp = countries[j];
                countries[j] = countries[j+1];
                countries[j+1] = temp;
            }
        }
    }
}
@end
