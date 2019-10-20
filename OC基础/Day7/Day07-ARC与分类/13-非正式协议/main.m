//
//  main.m
//  13-非正式协议
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//
/*
 1. 分类的作用在于可以将我们写类分为多个模块
    可以不可以为系统的类写一个分类呢？
    为系统自带的类写分类，这个就叫做非正式协议
 
 2. 分类的第二个作用：
    为一个已经存在的类添加方法
 
 3. NSString 类都挺好，就是差了一个方法
    统计字符串对象当中有多少个阿拉伯数字
 
 
 分类的作用
    1） 将臃肿的类分为多个模块，方便管理
    2） 扩展一个类
 
 
 */
#import <Foundation/Foundation.h>
#import "NSObject+itcast.h"
#import "NSString+itcast.h"
#import "Person.h"
int main(int argc, const char * argv[]) {
//    案例 1
//    Person *p1 = [Person new];
//    [p1 run];
//
//    NSString *str = @"jack";
//    [str run];
    
    
    
    NSString *str = @"afjljliej1j3li109dsj933";
    
    
    NSLog(@"%d", [str numberCount]);
    
    
//    int count = 0;
//    for(int i = 0; i < str.length; i++){
//        char ch = [str characterAtIndex:i];
//        if(ch >= '0' && ch <='9'){
//            count++;
//        }
//    }
//    
//    NSLog(@"%d",count);
    return 0;
}
