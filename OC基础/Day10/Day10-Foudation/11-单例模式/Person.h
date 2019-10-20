//
//  Person.h
//  11-单例模式
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

+(instancetype)sharedPerson;
+(instancetype)defaultPerson;

@end

NS_ASSUME_NONNULL_END
