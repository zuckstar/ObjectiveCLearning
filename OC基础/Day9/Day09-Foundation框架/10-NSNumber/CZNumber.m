//
//  CZNumber.m
//  10-NSNumber
//
//  Created by a on 2019/10/18.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "CZNumber.h"

@implementation CZNumber
-(instancetype)initWithIntValue:(int)value
{
    if(self = [super init])
    {
        self.intValue = value;
    }
    return self;
}
+(instancetype)numberWithIntValue:(int)value
{
    return [[self alloc] initWithIntValue:value];
}
@end
