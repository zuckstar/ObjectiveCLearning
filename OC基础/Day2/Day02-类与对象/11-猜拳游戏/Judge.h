//
//  Judge.h
//  11-猜拳游戏
//
//  Created by a on 2019/6/27.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Robot.h"
#import "Player.h"
@interface Judge : NSObject
{
    @public
    NSString *_name;
}
-(void)judgeWithPlayer:(Player *)player andRobot:(Robot *)robot;
@end
