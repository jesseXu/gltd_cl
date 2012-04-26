//
//  CommandDelegate.h
//  GLTD
//
//  Created by jesse on 12-4-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum {
    
    ExecuteResultNormal = 0,
    ExecuteResultExit,
    ExecuteResultFail
    
} ExecuteResult;


@protocol CommandDelegate <NSObject>

- (ExecuteResult)executeCommand:(NSArray *)param;

@end
