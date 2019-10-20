//
//  Phone.h
//  08-依赖关系
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Phone : NSObject
{
    NSString *_brand;
    int _price;
}
-(void)callWithNumber:(NSString *)number;
@end
