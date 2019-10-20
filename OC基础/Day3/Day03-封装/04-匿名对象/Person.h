//
//  Person.h
//  04-匿名对象
//
//  Created by a on 2019/7/6.
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
@end
