//
//  Book.h
//  07-ARC机制下的循环引用
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject
@property(nonatomic,weak)Person *owner;
@end

NS_ASSUME_NONNULL_END
