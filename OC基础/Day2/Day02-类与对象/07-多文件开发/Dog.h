//
//  Dog.h
//  07-多文件开发
//
//  Created by a on 2019/6/25.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    @public
    NSString *_name;
    int _age;
}
-(void)sayHi;
@end
