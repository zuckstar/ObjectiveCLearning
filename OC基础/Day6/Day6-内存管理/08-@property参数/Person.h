//
//  Person.h
//  08-@property参数
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property(nonatomic,retain,readwrite) Car *car;
@property(nonatomic,assign,getter=xxx,setter=ooo:) int age;
@end

NS_ASSUME_NONNULL_END
