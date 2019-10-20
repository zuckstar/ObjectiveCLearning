//
//  Person.h
//  02-类方法
//
//  Created by a on 2019/6/28.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
}
+(void)hehe;
+(Person *)person;
+(Person *)personWithName:(NSString *)name andAge:(int)age;
@end
