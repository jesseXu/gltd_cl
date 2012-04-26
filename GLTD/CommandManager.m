//
//  CommandManager.m
//  GLTD
//
//  Created by jesse on 12-4-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CommandManager.h"
#import "CommandDelegate.h"
#import "CommandParser.h"

@interface CommandManager ()
{
    BOOL _isRunning;
}

@end

@implementation CommandManager

- (void)startMainRoop
{
    char str[2000];
   
    _isRunning = YES;
    
    while (_isRunning)
    {
        char c;
        int i = 0;
        for (i = 0; (c = getc(stdin)) != '\n' && i < 1999; i++ )
        {
            str[i] = c;
        }
        str[i] = '\0';

        
        NSString *param = [[NSString alloc] initWithCString:str encoding:NSASCIIStringEncoding];
        NSDictionary *dict = [CommandParser parse:param];     
                
        if (dict)
        {            
            NSString *classString = [[dict objectForKey:@"command"] uppercaseString];
            classString = [classString stringByAppendingString:@"Command"];
            
            id command = [[NSClassFromString(classString) alloc] init];
            if (command && [command respondsToSelector:@selector(executeCommand:)])
            {
                NSInteger result = [command executeCommand:[dict objectForKey:@"arguments"]];
                switch (result) {
                    case ExecuteResultNormal:
                    {
                        //TODO
                    }
                        break;
                    case ExecuteResultExit:
                    {
                        _isRunning = NO;
                    }
                        break;
                    case ExecuteResultFail:
                    {
                        //TODO
                    }
                        break;
                }
            }
            else 
            {
                printf("error: command not found\n");
            }
        }
        else 
        {
            //TODO
        }
        
        [param release];
    }
}



@end
