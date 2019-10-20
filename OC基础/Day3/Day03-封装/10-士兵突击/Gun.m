//
//  Gun.m
//  10-士兵突击
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Gun.h"

@implementation Gun
-(void)setModel:(NSString *)model
{
    _model = model;
}
-(NSString *)model
{
    return _model;
}

-(void)setFireRange:(int)fireRange
{
    _fireRange = fireRange;
}
-(int)fireRange
{
    return _fireRange;
}

-(void)setClip:(Clip *)clip
{
    _clip = clip;
}
-(Clip *)clip
{
    return _clip;
}
-(void)shoot
{
    if([_clip bulletCount] > 0){
        NSLog(@"突突突...");
        [_clip setBulletCount:[_clip bulletCount]-1];
    } else {
        NSLog(@"子弹不够了...射击失败!");
    }

}
@end
