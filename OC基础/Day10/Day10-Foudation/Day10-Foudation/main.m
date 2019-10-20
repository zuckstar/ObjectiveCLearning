//
//  main.m
//  Day10-Foudation
//
//  Created by a on 2019/10/19.
//  Copyright © 2019 Jamie. All rights reserved.
//



/*
 1. 将数组的信息（数组的元素的值）保存起来，保存在硬盘上。
    数据的持久化,把数组写入到文件中
    - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
 
 eg:
     NSArray *arr = @[@"jack",@"rose",@"lili",@"lucy"];
 
     BOOL res = [arr writeToFile:@"/Users/a/Desktop/a.plist" atomically:NO];
     NSLog(@"%d",res);
 
     从文件中读取数组
 
     NSArray *arr = [NSArray arrayWithContentsOfFile:@"/Users/a/Desktop/a.plist"];
 
     for(NSString *str in arr){
        NSLog(@"%@",str);
     }
 
 2. plist 文件，属性列表文件
        这个文件可以保存数组。把数组中的元素保存在这个文件当中。
 
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    NSArray *arr = [NSArray arrayWithContentsOfFile:@"/Users/a/Desktop/a.plist"];
    if(arr != nil){
        //表示读取成功
        for(NSString *str in arr)
            NSLog(@"%@",str);
    } else {
        //表示读取不成功
        NSLog(@"读取失败!");
    }

    
    return 0;
}
