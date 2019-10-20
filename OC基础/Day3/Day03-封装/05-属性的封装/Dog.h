//
//  Dog.h
//  05-属性的封装
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    NSString *_name;
    int _age;
}
-(int)age;
@end
