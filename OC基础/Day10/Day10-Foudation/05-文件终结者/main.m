//
//  main.m
//  05-文件终结者
//
//  Created by a on 2019/10/19.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    while(1){
        
        //1. 先拿到文件夹中的子目录
        NSFileManager *manager = [NSFileManager defaultManager];
        NSString *path = @"/Users/a/Desktop/重要的文件";
        
        NSArray *arr = [manager contentsOfDirectoryAtPath:path error:nil];
        
        
        if(arr.count > 0) {
            // 说明文件夹里面有东西，则删除文件
            for(NSString *p in arr) {
                NSString *newP = [NSString stringWithFormat:@"%@/%@",path,p];
                if([manager isDeletableFileAtPath:newP]) {
                    [manager removeItemAtPath:newP error:nil];
                }
            }
            
        }
        NSLog(@"扫描完成。");
        
        [NSThread sleepForTimeInterval:3]; // cpu 暂停指定的时间。
    }

    

    return 0;
}
