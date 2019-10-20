//
//  Person.h
//  08-访问修饰符
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @private
    NSString *_name;
    int _age;

}
-(void)setName:(NSString *)name;
-(void)sayHi;
+(void)hehe;
@end
