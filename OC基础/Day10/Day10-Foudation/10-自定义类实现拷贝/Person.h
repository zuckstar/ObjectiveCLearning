//
//  Person.h
//  10-自定义类实现拷贝
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <NSCopying>
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)int age;

@end

NS_ASSUME_NONNULL_END
