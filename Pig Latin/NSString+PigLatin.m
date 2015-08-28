//
//  NSString+PigLatin.m
//  Pig Latin
//
//  Created by asu on 2015-08-28.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString(PigLatin)

-(NSString *)stringByPigLatinization{
    NSCharacterSet *spaceAndPunctuation =
    [[NSCharacterSet whitespaceCharacterSet]
     unionWithCharacterSet:[NSCharacterSet punctuationCharacterSet]];
    
    NSString *consonants = @"bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ";
    NSString *vowels = @"aeiouAEIOU";
    
    NSCharacterSet *consonantsSet = [NSCharacterSet
                                     characterSetWithCharactersInString:consonants];
    NSCharacterSet *vowelsSet = [NSCharacterSet
                                 characterSetWithCharactersInString:vowels];
    
    NSArray *components = [self componentsSeparatedByCharactersInSet:spaceAndPunctuation];
    NSMutableArray *pigLatinComponents = [@[] mutableCopy];
    
    for (NSString* component in components) {
        NSMutableString *pigLatinized = [[component stringByTrimmingCharactersInSet:consonantsSet] mutableCopy];
        
        
        return self;
    }
    return self;
}

@end




