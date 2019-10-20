//
//  CGButton.h
//  06-常用结构体
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
// 按钮类
NS_ASSUME_NONNULL_BEGIN

@interface CGButton : NSObject
//// 当前按钮对象的坐标
//@property(nonatomic,assign)CGPoint point;
//// 当前按钮对象的大小
//@property(nonatomic,assign)CGSize size;
@property(nonatomic,assign)CGRect frame;

// 按钮对象上的文本
@property(nonatomic,strong)NSString *text;
-(void)show;
-(void)hide;
@end

NS_ASSUME_NONNULL_END
