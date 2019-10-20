//
//  Person.m
//  12-构造方法
//
//  Created by a on 2019/8/4.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)sayHi {
    NSLog(@"I'm Person");
}
+(instancetype)person
{
    return [self new];
}
//-(instancetype)init
//{
//    self = [super init];
//    if(self)
//    {
//        self.name = @"jack";
//    }
//    return self;
//}
-(instancetype)initWithName:(NSString *)name andAge:(int)age
{
    self = [super init];
    if(self) {
        self.name = name;
        self.age = age;
    }
    return self;
}
@end




























