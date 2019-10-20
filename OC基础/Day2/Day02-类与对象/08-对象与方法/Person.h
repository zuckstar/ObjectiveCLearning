//
//  Person.h
//  08-对象与方法
//
//  Created by a on 2019/6/26.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
}
-(void)sayHi;
-(void)test:(Dog *)dog;
-(Dog *)test1;
@end
