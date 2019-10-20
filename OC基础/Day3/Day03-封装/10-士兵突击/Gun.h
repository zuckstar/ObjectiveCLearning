//
//  Gun.h
//  10-士兵突击
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Clip.h"
/*
 枪类
 */
@interface Gun : NSObject
{
    NSString *_model;
    int _fireRange;
    int _bulletCount;
    Clip *_clip;
}
-(void)setModel:(NSString *)model;
-(NSString *)model;

-(void)setFireRange:(int)fireRange;
-(int)fireRange;

-(void)setClip:(Clip *)clip;
-(Clip *)clip;

-(void)shoot;
@end
