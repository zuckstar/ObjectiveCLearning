//
//  Person.h
//  09-MRC与ARC的兼容
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)int age;
@property(nonatomic,strong)Dog *dog;
@end

NS_ASSUME_NONNULL_END
