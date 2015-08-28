//
//  NSCharacterSet+UnionWithOtherSet.m
//  Pig Latin
//
//  Created by asu on 2015-08-28.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import "NSCharacterSet+UnionWithOtherSet.h"

@implementation NSCharacterSet (UnionWithCharacterSet)

-(NSCharacterSet*)unionWithCharacterSet:(NSCharacterSet*)otherSet;
{
    NSMutableCharacterSet *selfCopy = [self mutableCopy];
    [selfCopy formUnionWithCharacterSet:otherSet];
    return [selfCopy copy];
}
@end
