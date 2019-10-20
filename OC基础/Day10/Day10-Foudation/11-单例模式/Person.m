//
//  Person.m
//  11-单例模式
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static id instance = nil;
    if(instance == nil) {
        instance = [super allocWithZone:zone];
    }
    return instance;
}
+(instancetype)sharedPerson
{
    return [self new];
}
+(instancetype)defaultPerson
{
    return [self new];
}
@end
