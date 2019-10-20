//
//  Girl.m
//  02-延展
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Girl.h"

@interface Girl ()
@property(nonatomic,assign)int age;
-(void)ps;
@end



@implementation Girl
-(void)show
{
    NSLog(@"我很漂亮");
}
-(void)ps
{
    NSLog(@"我又变美了");
}
@end
