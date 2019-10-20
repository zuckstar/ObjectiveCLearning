//
//  Person.h
//  07-关于子类和父类的同名属性
//
//  Created by a on 2019/7/14.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
-(void)sayHi;
+(void)hehe;
@end
