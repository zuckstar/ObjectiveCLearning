//
//  Person.h
//  02-延展
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)int age;
-(void)sayHi;
@end

NS_ASSUME_NONNULL_END
