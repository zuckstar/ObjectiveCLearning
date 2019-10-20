//
//  Clip.m
//  10-士兵突击
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Clip.h"

@implementation Clip
-(void)setMaxCapcity:(int)maxCapcity
{
    _maxCapcity = maxCapcity;
}
-(int)maxCapcity
{
    return _maxCapcity;
}

-(void)setBulletCount:(int)bulletCount
{
    if(bulletCount >= 0 && bulletCount < _maxCapcity){
        _bulletCount = bulletCount;
    } else {
        _bulletCount = 10;
    }
    
}
-(int)bulletCount
{
    return _bulletCount;
}
@end
