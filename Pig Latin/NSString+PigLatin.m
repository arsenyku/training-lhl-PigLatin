//
//  NSString+PigLatin.m
//  Pig Latin
//
//  Created by asu on 2015-08-28.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import "NSString+PigLatin.h"
#import "NSString+TrimmingUtilities.h"

@implementation NSString(PigLatin)

-(NSString *)stringByPigLatinization{
    if ([self isEqualToString:@""])
        return @"";
    
    NSCharacterSet *spaceAndPunctuation =
    [[NSCharacterSet whitespaceCharacterSet]
     unionWithCharacterSet:[NSCharacterSet punctuationCharacterSet]];
    
    NSString *vowels = @"aeiouAEIOU";

    NSCharacterSet *vowelSet = [NSCharacterSet
                                     characterSetWithCharactersInString:vowels];
    
    
    NSArray *components = [self componentsSeparatedByCharactersInSet:spaceAndPunctuation];
    NSMutableArray *pigLatinComponents = [@[] mutableCopy];
    
    for (NSString* component in components) {
        
        NSString* pigLatinizedWord = component;
        NSString *portionToMove = @"";
        NSString *ending = @"";

        
        // find first vowel
        NSRange firstVowel = [component rangeOfCharacterFromSet:vowelSet options:NSLiteralSearch];
        
        if (firstVowel.length > 0){
            // Starts with vowel
            ending = @"way";
        }else{
        	// Move consonants
            if (firstVowel.location < [component length]){
	            pigLatinizedWord = [component substringFromIndex:firstVowel.location];
	            portionToMove = [component substringToIndex:firstVowel.location];
            }
            ending = @"ay";
        }
        
        pigLatinizedWord = [[NSString stringWithFormat:@"%@%@%@", pigLatinizedWord, portionToMove, ending] lowercaseString];
        
        NSString *firstChar = [[pigLatinizedWord substringToIndex:1] uppercaseString];
        pigLatinizedWord = [NSString stringWithFormat:@"%@%@",firstChar, [pigLatinizedWord substringFromIndex:1]];
        
        [pigLatinComponents addObject:pigLatinizedWord];
    }
    
    return [pigLatinComponents componentsJoinedByString:@" "] ;
}

@end




