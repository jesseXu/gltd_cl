//
//  CommandManager.h
//  GLTD
//
//  Created by jesse on 12-3-31.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface CommandManager : NSObject
{
    NSString *_currentCommand;
}
//+ (void)printWelcome;
//+ (NSDictionary *)commandParser:(NSString *)command;



- (void)mainLoop;
    

@end
