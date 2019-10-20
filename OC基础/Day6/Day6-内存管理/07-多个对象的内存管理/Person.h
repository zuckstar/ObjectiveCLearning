//
//  Person.h
//  07-多个对象的内存管理
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"


@interface Person : NSObject
{

    Car *_car;
    int _age;
    NSString *_name;
    
}
-(void)setCar:(Car *)car;
-(Car *)car;
-(void)drive;

-(void)setAge:(int) age;
-(int)age;

-(void)setName:(NSString *) name;
-(NSString *)name;

@end


