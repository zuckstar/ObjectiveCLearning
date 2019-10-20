//
//  CGView.h
//  06-常用结构体
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CGButton.h"
// iOS界面
NS_ASSUME_NONNULL_BEGIN

@interface CGView : NSObject
@property(nonatomic,assign)CGPoint point;
@property(nonatomic,assign)CGSize size;
@property(nonatomic,strong)NSMutableArray *subViews;
@end

NS_ASSUME_NONNULL_END
