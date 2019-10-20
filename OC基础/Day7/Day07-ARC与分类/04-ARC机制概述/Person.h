//
//  Person.h
//  04-ARC机制概述
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    int _age;
}
-(void)setAge:(int)age;
-(int)age;

-(void)sayHi;

@end

NS_ASSUME_NONNULL_END
