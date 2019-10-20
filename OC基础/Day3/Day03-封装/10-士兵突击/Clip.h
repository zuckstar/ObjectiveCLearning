//
//  Clip.h
//  10-士兵突击
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 弹夹类
 */
@interface Clip : NSObject
{
    // 弹夹可以装载的最大子弹数量
    int _maxCapcity;
    
    // 弹夹中有多少发子弹
    int _bulletCount;
    
    
    
}
-(void)setMaxCapcity:(int)maxCapcity;
-(int)maxCapcity;

-(void)setBulletCount:(int)bulletCount;
-(int)bulletCount;
@end
