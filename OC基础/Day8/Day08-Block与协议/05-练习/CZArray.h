//
//  CZArray.h
//  05-练习
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef BOOL(^NewType)(char *country1, char *country2);

@interface CZArray : NSObject

-(void)sortWithCountries:(char *[])countries andLength:(int)len andCompareBlock:(NewType)compareBlock;

@end
