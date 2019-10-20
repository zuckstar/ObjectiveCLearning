//
//  Person.h
//  03-self关键字
//
//  Created by a on 2019/7/7.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
}
-(void)sayHi;
-(void)hehe;

+(void)hehe;
@end
