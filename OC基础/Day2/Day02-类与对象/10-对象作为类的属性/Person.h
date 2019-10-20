//
//  Person.h
//  10-对象作为类的属性
//
//  Created by a on 2019/6/27.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
@interface Person : NSObject
{
    @public
    NSString *_name;
    Dog *_dog;
}
@end
