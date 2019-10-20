//
//  Person.h
//  06-ARC机制下的多个对象的内存管理
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic,strong)Car *car;

@end

NS_ASSUME_NONNULL_END
