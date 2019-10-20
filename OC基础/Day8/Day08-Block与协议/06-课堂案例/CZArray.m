//
//  CZArray.m
//  06-课堂案例
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "CZArray.h"

@implementation CZArray
-(instancetype)init
{
    if(self = [super init])
    {
        for(int i = 1; i <= 10; i++){
            _arr[i-1] = i*10;
        }
    }
    return self;
}
-(void)traveseWithBlock:(void(^)(int val))processBlock
{
    for(int i = 0; i < 10; i++){
//        遍历的元素让调用者写的代码去处理
        
//        NSLog(@"%d",_arr[i]);
        
        
        processBlock(_arr[i]);
    }
}
@end
