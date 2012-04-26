//
//  CommandParser.h
//  GLTD
//
//  Created by jesse on 12-4-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CommandDelegate;

@interface CommandParser : NSObject

+ (NSDictionary *)parse:(NSString *)string;

@end
