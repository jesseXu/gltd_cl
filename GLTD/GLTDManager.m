//
//  GLTDManager.m
//  GLTD
//
//  Created by jesse on 12-4-25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "GLTDManager.h"

@interface GLTDManager ()

- (void)welcome;
- (void)bye;

@end


@implementation GLTDManager

- (void)applicationDidStart:(NSDictionary *)info
{
    
    [self welcome];
    
    //TODO
    
    [self bye];
}


- (void)welcome
{
    printf("Welcome! \n");
}

- (void)bye
{
    
}


@end
