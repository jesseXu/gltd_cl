//
//  CommandParser.m
//  GLTD
//
//  Created by jesse on 12-4-26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CommandParser.h"

@implementation CommandParser

+ (NSDictionary *)parse:(NSString *)string
{
    //remove front and end whitespace
    string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if ([string isEqualToString:@""])
    {
        return nil;
    }
    
    NSArray *array = [string componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSMutableArray *arguments = [[NSMutableArray alloc] init];
    for (int i = 1; i < array.count; i++)
    {
        [arguments addObject:[array objectAtIndex:i]];
    }
    
    NSDictionary *result = [NSDictionary dictionaryWithObjectsAndKeys:[array objectAtIndex:0], @"command", arguments, @"arguments", nil];
    
    return result;
}


@end
