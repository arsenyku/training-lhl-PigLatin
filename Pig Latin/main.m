//
//  main.m
//  Pig Latin
//
//  Created by asu on 2015-08-28.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSCharacterSet+UnionWithOtherSet.h"
#import "NSString+TrimmingUtilities.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSCharacterSet* consonantsSet =
        [NSCharacterSet characterSetWithCharactersInString:
         @"BCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz"];
        
        NSCharacterSet* vowelsSet =
        [NSCharacterSet characterSetWithCharactersInString:
         @"aeiouAEIOU"];
        
        
        NSString *myString = @"BCBCBCBaeiouDSFASF";
        myString = [myString stringByTrimmingStartingCharactersWithCharacterSet:consonantsSet];
        
        NSLog(@"%@",myString);

        
        myString = @"aoaoaoaoBCBCBCBaeiouDSFASF";
        myString = [myString stringByTrimmingStartingCharactersWithCharacterSet:vowelsSet];
        
        NSLog(@"%@",myString);

        myString = @"BCBCBCBaeiouDSFASF";
        myString = [myString stringByTrimmingStartingCharactersWithCharacterSet:vowelsSet];
        
        NSLog(@"%@",myString);
        
        myString = @"aeeoo";
        myString = [myString stringByTrimmingStartingCharactersWithCharacterSet:vowelsSet];
        
        NSLog(@"-%@-",myString);
        
        myString = @"BBCCDDSaeeoo";
        myString = [myString stringByTrimmingTrailingCharactersWithCharacterSet:vowelsSet];
        
        NSLog(@"-%@-",myString);
        
        myString = @"BBCCDDS";
        myString = [myString stringByTrimmingTrailingCharactersWithCharacterSet:vowelsSet];
        
        NSLog(@"-%@-",myString);
        
        myString = @"aeiou";
        myString = [myString stringByTrimmingTrailingCharactersWithCharacterSet:vowelsSet];
        
        NSLog(@"-%@-",myString);
        
        myString = @"";
        myString = [myString stringByTrimmingTrailingCharactersWithCharacterSet:vowelsSet];
        
        NSLog(@"-%@-",myString);
        

    }
    return 0;
}
