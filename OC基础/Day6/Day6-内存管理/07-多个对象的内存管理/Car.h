//
//  Car.h
//  07-多个对象的内存管理
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Car : NSObject
{
    int _speed;
}

-(void)setSpeed:(int)speed;
-(int)speed;
-(void)run;
@end

