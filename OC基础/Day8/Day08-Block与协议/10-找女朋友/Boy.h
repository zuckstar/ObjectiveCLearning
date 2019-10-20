//
//  Boy.h
//  10-找女朋友
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GFProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Boy : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)int age;
@property(nonatomic,assign)int money;
@property(nonatomic,strong)id<GFProtocol> girlFriend;
-(void)makeFriends;
@end

NS_ASSUME_NONNULL_END
