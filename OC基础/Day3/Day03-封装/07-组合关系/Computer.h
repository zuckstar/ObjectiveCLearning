//
//  Computer.h
//  07-组合关系
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPU.h"
#import "Memory.h"
#import "MainBoard.h"
/*
 计算机类
 */
@interface Computer : NSObject
{
    CPU *_cpu;
    Memory *_mem;
    MainBoard *_mb;
}
@end
