//
//  NSString+TrimmingUtilities.m
//  Pig Latin
//
//  Created by asu on 2015-08-28.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import "NSString+TrimmingUtilities.h"

@implementation NSString (TrimmingUtilities)

-(NSString*)stringByTrimmingStartingCharactersWithCharacterSet:(NSCharacterSet *)set{
    if ([self isEqualToString:@""])
        return self;
    
   int cutOff = 0;
    
    for(int i = 0; i < [self length]; i++){
        NSString *characterToEvaluate = [[self substringFromIndex:i] substringToIndex:1];
        
        NSRange range = [characterToEvaluate rangeOfCharacterFromSet:set options:NSLiteralSearch];
        if (range.length > 0)
            // Drop the character
            cutOff++;
        else
            // Stop trimming
            break;
    }
    
    return [self substringFromIndex:cutOff];
}



-(NSString*)stringByTrimmingTrailingCharactersWithCharacterSet:(NSCharacterSet *)set{
    if ([self isEqualToString:@""])
        return self;
    
    long cutOff = [self length]-1;
    
    for(long i = [self length]-1; i >= 0; i--){
        NSString *characterToEvaluate = [[self substringFromIndex:i] substringToIndex:1];
        
        NSRange range = [characterToEvaluate rangeOfCharacterFromSet:set options:NSLiteralSearch];
        if (range.length > 0)
            // Drop the character
            cutOff--;
        else
            // Stop trimming
            break;
    }
    
    if (cutOff < 0)
        return @"";
    else
	    return [self substringToIndex:cutOff];
}
@end
