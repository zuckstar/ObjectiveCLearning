//
//  Dog.h
//  09-MRC与ARC的兼容
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject
@property(nonatomic,strong)NSString *color;
@property(nonatomic,assign)int age;

@end

NS_ASSUME_NONNULL_END
