//
//  main.m
//  05-练习
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 写一个类，数组类，给这个数组类提供一个方法，将一个国家字符串组进行排序.
 
 
 什么时候block可以作为方法或者函数的参数？
    当方法内部需要执行一段代码（一个功能）但是这个功能具体的实现函数的内部不确定。
    那么这个时候，就使用block让调用者将这个功能的具体实现传递进去

 
 
 */
#import <Foundation/Foundation.h>
#import "CZArray.h"
#import <string.h>
int main(int argc, const char * argv[]) {
    char *countries[] = {
        "Nepal",
        "Cambodia",
        "Afghanistan",
        "China",
        "Singapore",
        "Bangladesh",
        "India",
        "Maldives",
        "South Korea",
        "Bhutan",
        "Japan",
        "Sikkim",
        "Sri Lanka",
        "Burma",
        "North Korea",
        "Laos",
        "Malaysia",
        "Indonesia"
    };
    
    
    CZArray *arr = [CZArray new];
    
    [arr sortWithCountries:countries andLength:sizeof(countries)/8 andCompareBlock:^BOOL(char *country1, char *country2) {
//        int res = (int)strlen(country1) - strlen(country2);
//        if(res > 0) {
//            return YES;
//        }
//        return NO;
//
        int res = strcmp(country1, country2);
        return res > 0;
        
    }];
    
    for(int i = 0; i < sizeof(countries)/8; i++){
        NSLog(@"%s",countries[i]);
    }
    return 0;
}
