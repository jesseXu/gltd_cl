//
//  main.m
//  GLTD
//
//  Created by Jesse xu on 12-3-30.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GLTDManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        
        GLTDManager *gltdManeger = [[GLTDManager alloc] init];

        [gltdManeger applicationDidStart:nil];
        
    }
    return 0;
}

