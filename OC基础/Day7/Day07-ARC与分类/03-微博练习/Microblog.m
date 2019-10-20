//
//  Microblog.m
//  03-微博练习
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Microblog.h"

@implementation Microblog
-(void)dealloc
{
    NSLog(@"微博也删了。");
    [_contnet release];
    [_imgURL release];
    [_user release];
    [_zhuanFaBlog release];
    [super dealloc];
    
}
@end
