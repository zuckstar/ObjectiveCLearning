//
//  Girl.h
//  10-找女朋友
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GFProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Girl : NSObject <GFProtocol>
@property(nonatomic,strong)NSString *name;
@end

NS_ASSUME_NONNULL_END
