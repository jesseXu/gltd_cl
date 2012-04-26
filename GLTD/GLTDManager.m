//
//  GLTDManager.m
//  GLTD
//
//  Created by jesse on 12-4-25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GLTDManager.h"
#import "CommandManager.h"

@interface GLTDManager ()
{
    CommandManager *_CMDManager;
}

@property (retain, nonatomic) CommandManager *CMDManager;

- (void)welcome;
- (void)bye;

@end


@implementation GLTDManager

@synthesize CMDManager = _CMDManager;

- (void)dealloc
{
    [_CMDManager release];
    [super dealloc];
}

- (void)applicationDidStart:(NSDictionary *)info
{
    self.CMDManager = [[[CommandManager alloc] init] autorelease];
    
    [self welcome];
    
    [self.CMDManager startMainRoop];
    
    [self bye];
}


- (void)welcome
{
    printf("Welcome! \n");
}

- (void)bye
{
    printf("Bye bye!\n");
}


@end
