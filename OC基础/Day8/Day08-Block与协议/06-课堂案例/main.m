//
//  main.m
//  06-课堂案例
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CZArray.h"
int main(int argc, const char * argv[]) {
    CZArray *arr = [CZArray new];
    
    [arr traveseWithBlock:^(int val) {
        NSLog(@"val = %d",val+1);
    }];
    
    
    return 0;
}
