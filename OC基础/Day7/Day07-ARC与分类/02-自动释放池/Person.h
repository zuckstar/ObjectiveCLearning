//
//  Person.h
//  02-自动释放池
//
//  Created by a on 2019/10/13.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic,retain) NSString *name;
@property(nonatomic,assign) int age;
@end

NS_ASSUME_NONNULL_END
