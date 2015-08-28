//
//  NSCharacterSet+UnionWithOtherSet.h
//  Pig Latin
//
//  Created by asu on 2015-08-28.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSCharacterSet (UnionWithCharacterSet)
-(NSCharacterSet*)unionWithCharacterSet:(NSCharacterSet*)otherSet;
@end
