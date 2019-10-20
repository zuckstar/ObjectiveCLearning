//
//  Robot.h
//  11-猜拳游戏
//
//  Created by a on 2019/6/27.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FistType.h"
@interface Robot : NSObject
{
    @public
    NSString *_name;
    int _score;
    //    机器人选择的拳头
    FistType _selectedType;
}
-(void)showFist;
-(NSString *)fistTypeWithNumber:(int)number;
@end
