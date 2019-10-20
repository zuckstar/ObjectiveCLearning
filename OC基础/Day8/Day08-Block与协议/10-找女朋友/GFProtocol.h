//
//  GFProtocol.h
//  10-找女朋友
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//遵守这个协议的东西都可以当男孩子的女朋友
@protocol GFProtocol <NSObject>

/*
 女朋友协议，只要遵守这个协议的东西都可以作为女朋友
 */
@required
-(void)wash;
-(void)cook;

@optional
-(void)job;
@end

NS_ASSUME_NONNULL_END
