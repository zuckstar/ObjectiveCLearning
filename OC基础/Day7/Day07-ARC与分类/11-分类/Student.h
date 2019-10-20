//
//  Student.h
//  11-分类
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
{
    @private
    int _age;
}
@property(nonatomic,strong)NSString *name;
-(void)hh;
-(void)sayHi;
@end

NS_ASSUME_NONNULL_END
