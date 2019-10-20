//
//  Person.h
//  04-继承
//
//  Created by a on 2019/7/13.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setAge:(int)age;
-(int)age;
@end
