//
//  MyProtocol.h
//  07-协议
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MyProtocol <NSObject>
-(void)run;
-(void)sleep;
@end

NS_ASSUME_NONNULL_END
