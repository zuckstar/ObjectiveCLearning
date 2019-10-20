//
//  Soldier.h
//  10-士兵突击
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"
/*
 士兵类
 */
@interface Soldier : NSObject
{
    NSString *_name;
    NSString *_type;
    Gun *_gun;
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setType:(NSString *)type;
-(NSString *)type;

-(void)setGun:(Gun *)gun;
-(Gun *)gun;

-(void)fire;
@end
