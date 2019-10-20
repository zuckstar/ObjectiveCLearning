//
//  Pig.m
//  02-自动释放池
//
//  Created by a on 2019/10/13.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Pig.h"

@implementation Pig
-(instancetype)initWithName:(NSString *)name andAge:(int)age andWeight:(float)weight
{
    if(self = [super init]){
        _name = name;
        _age = age;
        _weight = weight;
    }
    return self;
}
-(void)dealloc
{
    NSLog(@"猪猪死了");
    [_name release];
    [super dealloc];
}
+(instancetype)pig
{
    return [[[self alloc] init] autorelease];
}

+(instancetype)pigWithName:(NSString *)name andAge:(int)age andWeight:(float)weight
{
    return [[[self alloc] initWithName:name andAge:age andWeight:weight] autorelease];
}
@end
