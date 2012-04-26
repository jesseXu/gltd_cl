//
//  VERSIONCommand.m
//  GLTD
//
//  Created by jesse on 12-4-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "VERSIONCommand.h"
#import "Version.h"

@implementation VERSIONCommand

- (ExecuteResult)executeCommand:(NSArray *)param
{
    printf("%s\n", [Version version].UTF8String);
    
    return ExecuteResultNormal;
}

@end
