//
//  CZArray.h
//  06-课堂案例
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CZArray : NSObject
{
    int _arr[10];
}
-(void)traveseWithBlock:(void(^)(int val))processBlock;
@end

NS_ASSUME_NONNULL_END
