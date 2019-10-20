//
//  Person.h
//  06-@property
//
//  Created by a on 2019/7/28.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
@property int age;
@property NSString *name;

+(void)sayHi;
-(void)sayHello;

@end
