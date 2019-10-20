//
//  Person.h
//  05-属性的封装
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
-(void)sayHi;
-(void)setAge:(int)age;
-(void)setName:(NSString *)name;
-(int)age;
-(NSString *)name;
@end
