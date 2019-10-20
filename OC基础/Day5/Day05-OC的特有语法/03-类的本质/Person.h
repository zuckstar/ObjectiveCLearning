//
//  Person.h
//  03-类的本质
//
//  Created by a on 2019/7/28.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Person : NSObject
{
    NSString *_name;
}
+(void)sayHi;
-(void)sayHello;
-(void)eatWithFood:(NSString *)foodName;
-(void)setName:(NSString *)name;
-(NSString *)name;

@end
