//
//  Person.h
//  09-关联关系
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

@interface Person : NSObject
{
    NSString *_name;
    Dog *_dog;
}
@end
