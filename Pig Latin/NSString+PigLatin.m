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
    NSCharacterSet *spaceAndPunctuation =
    [[NSCharacterSet whitespaceCharacterSet]
     unionWithCharacterSet:[NSCharacterSet punctuationCharacterSet]];
    
    NSString *consonants = @"bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ";
    NSString *vowels = @"aeiouAEIOU";

    NSCharacterSet *consonantsSet = [NSCharacterSet
                                     characterSetWithCharactersInString:consonants];
    NSCharacterSet *vowelSet = [NSCharacterSet
                                     characterSetWithCharactersInString:vowels];
    
    
    NSArray *components = [self componentsSeparatedByCharactersInSet:spaceAndPunctuation];
    NSMutableArray *pigLatinComponents = [@[] mutableCopy];
    
    for (NSString* component in components) {
        NSString *pigLatinizedWord =
	        [[component stringByTrimmingStartingCharactersWithCharacterSet:consonantsSet] mutableCopy];
        
        
        NSString *portionToMove = [component substringToIndex:[component length] - [pigLatinizedWord length]];
        
        NSString *firstChar = [component substringToIndex:1];
        NSRange range = [firstChar rangeOfCharacterFromSet:vowelSet options:NSLiteralSearch];

        NSString *ending = @"ay";
        if (range.length > 0)
            ending = @"way";

        pigLatinizedWord = [NSString stringWithFormat:@"%@%@%@", pigLatinizedWord, portionToMove, ending];
        [pigLatinComponents addObject:pigLatinizedWord];
    }
    return [pigLatinComponents componentsJoinedByString:@" "] ;
}

@end




