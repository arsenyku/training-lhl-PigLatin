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
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *testString = @"Kale Chips Are Awesome";
        
        NSLog(@"%@", [testString stringByPigLatinization]);

    }
    return 0;
}
