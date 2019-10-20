//
//  CPU.h
//  07-组合关系
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPU : NSObject
{
    NSString *_brand;
    NSString *_model;
}
-(void)calculate;
@end
