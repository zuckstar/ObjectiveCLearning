//
//  Dog.h
//  08-对象与方法
//
//  Created by a on 2019/6/26.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    @public
    NSString *_name;
    NSString *_color;
}
-(void)sayHi;
@end
